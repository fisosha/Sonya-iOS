//
//  ContentView.swift
//  Sonya_HW2_Task2(UPDATED)
//
//  Created by Софія Шаламай on 20.07.2025.
//

import SwiftUI

typealias DayPlan = Set<String>
typealias MonthPlan = [DayPlan]

let JulyPlan: MonthPlan = {
    var plan = Array(repeating: DayPlan(), count: 31)
    plan[0] = ["Піти на пляж", "Позагорати", "Пообідати в кафе"]
    plan[3] = ["Зустрітись з друзями", "Пограти у волейбол"]
    plan[8] = ["Піти на пікнік", "Провести час з сімʼєю"]
    plan[17] = ["Піти в універ", "Прогулятись з друзями"]
    return plan
}()


struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "calendar")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .colorMultiply(.black)
            Text("Розклад на місяць")
                .font(.title)
                .bold()
        }

        ScrollView {
            VStack (alignment: .leading, spacing: 16) {
                ForEach(0..<JulyPlan.count, id: \.self) { index in
                        if !JulyPlan[index].isEmpty {
                            HStack {
                                Text("\(index + 1)")
                                    .bold()
                                    .frame(width: 60, alignment: .leading)
                                Text(JulyPlan[index].joined(separator: ", "))
                            }
                            .padding(.horizontal)
                        }
                }
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
