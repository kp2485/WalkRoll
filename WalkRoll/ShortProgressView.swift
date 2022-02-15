//
//  ShortProgressView.swift
//  WalkRoll
//
//  Created by Kyle Peterson on 2/3/22.
//

import HealthKit
import SwiftUI
import Combine

struct ShortProgressView: View {
    
    @State var userHasSetGoal: Bool = false
    @State var stepsAuthorized: Bool = false
    @State private var stepCount: String = "504"
    @State var userGoal: String = "1200"
    @State private var showingPopover = false
    
    var body: some View {
        VStack {
            HStack {
                
                if stepsAuthorized == false {
                    Button("Get Steps") {
                        fetchHealthData()
                    }
                    .font(.system(size: 36))
                } else {
                    Text(stepCount)
                        .fontWeight(.light)
                        .font(.system(size: 44))
                }
                
                
                if userHasSetGoal == true && stepsAuthorized == true {
                    CircularProgressView()
                } else {
                    HStack {
                        Image(systemName: "figure.walk")
                        Image(systemName: "figure.roll")
                    }
                }
                
                if userHasSetGoal == true {
                    Text(userGoal)
                        .fontWeight(.light)
                        .font(.system(size: 44))
                } else {
                    Button("Set Goal") {
                        showingPopover = true
                    }
                    .font(.system(size: 36))
                    .popover(isPresented: $showingPopover) {
                        TextField("Enter your goal for daily steps/pushes", text: $userGoal)
                                    .keyboardType(.numberPad)
                                    .onReceive(Just(userGoal)) { newValue in
                                        let filtered = newValue.filter { "0123456789".contains($0) }
                                        if filtered != newValue {
                                            self.userGoal = filtered
                                        }
                                }
                    }
                    
                }
            }
            .padding()
        }
    }
    
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
                                @State var stepsAuthorized: Bool = true
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

    
}

struct ShortProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ShortProgressView()
    }
}

