//
//  ShortProgressView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/3/22.
//

import HealthKit
import SwiftUI

func fetchHealthData() -> Void {
    let healthStore = HKHealthStore()
    if HKHealthStore.isHealthDataAvailable() {
        let readData = Set([
            HKObjectType.quantityType(forIdentifier: .stepCount)!
        ])
        
        healthStore.requestAuthorization(toShare: [], read: readData) { (success, error) in
            if success {
                let calendar = NSCalendar.current
                
                var anchorComponents = calendar.dateComponents([.day, .month, .year, .weekday], from: NSDate() as Date)
                
                let offset = (7 + anchorComponents.weekday! - 2) % 7
                
                anchorComponents.day! -= offset
                anchorComponents.hour = 2
                
                guard let anchorDate = Calendar.current.date(from: anchorComponents) else {
                    fatalError("*** unable to create a valid date from the given components ***")
                }
                
                let interval = NSDateComponents()
                interval.minute = 30
                
                let endDate = Date()
                
                guard let startDate = calendar.date(byAdding: .month, value: -1, to: endDate) else {
                    fatalError("*** Unable to calculate the start date ***")
                }
                
                guard let quantityType = HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount) else {
                    fatalError("*** Unable to create a step count type ***")
                }
                
                let query = HKStatisticsCollectionQuery(quantityType: quantityType,
                                                        quantitySamplePredicate: nil,
                                                        options: .discreteAverage,
                                                        anchorDate: anchorDate,
                                                        intervalComponents: interval as DateComponents)
                
                query.initialResultsHandler = {
                    query, results, error in
                    
                    guard let statsCollection = results else {
                        fatalError("*** An error occurred while calculating the statistics: \(String(describing: error?.localizedDescription)) ***")
                        
                    }
                    
                    statsCollection.enumerateStatistics(from: startDate, to: endDate) { statistics, stop in
                        if let quantity = statistics.averageQuantity() {
                            let date = statistics.startDate
                            //for: E.g. for steps it's HKUnit.count()
                            let value = quantity.doubleValue(for: HKUnit.count())
                            print("done")
                            print(value)
                            print(date)
                        }
                    }
                    
                }
                
                healthStore.execute(query)
                
            } else {
                print("Authorization failed")
                
            }
        }
    }
}
struct ShortProgressView: View {
    var body: some View {
        Button(action: fetchHealthData) {
            Text("Fetch steps")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            
        }
        .padding()
        .background(Color.blue)
        .cornerRadius(20)
    }
}

struct ShortProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ShortProgressView()
    }
}

