//
//  ContentView.swift
//  Sonya_HW2_Task2
//
//  Created by Софія Шаламай on 20.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 16) {
                HStack {
                    Image(systemName: "calendar")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .colorMultiply(.black)
                    Text("Розклад на місяць")
                        .font(.title)
                        .bold()
                }
                .padding(.horizontal)
                
                // Day 1
                HStack {
                    Text (" Day 1")
                        .bold()
                        .frame(width: 60, alignment: .leading)
                    Text("Сходити в кіно, Прибрати в квартирі")
                }
                
                // Day 4
                HStack {
                    Text("Day 4")
                        .bold()
                        .frame(width: 60, alignment: .leading)
                    Text("Провести час з рідними, зустрітись з друзями")
                }
                
                // Day 8
                HStack {
                    Text("Day 8")
                        .bold()
                        .frame(width: 60, alignment: .leading)
                    Text("Піти в спортзал, зробити домашку, повчити англійську")
                }
                
                // Day 12
                HStack {
                    Text("Day 12")
                        .bold()
                        .frame(width: 60, alignment: .leading)
                    Text("Почитати книгу, пограти у волейбол, піти в басейн")
                }
                
                // Day 25
                HStack {
                    Text("Day 25")
                        .bold()
                        .frame(width: 60, alignment: .leading)
                    Text("Прогулятись з друзями, піти у боулінг, сходити в кафе")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
