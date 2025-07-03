//
//  ContentView.swift
//  Sonya_Homework2
//
//  Created by Софія Шаламай on 02.07.2025.
//

import SwiftUI



struct ContentView: View {
    @State private var name: String = ""
    @State private var showGreeting = false
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                HStack {
                    Image(systemName: "hand.wave")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Привіт, друже!")
                }
                .font(.title)
                Text("Давай знайомитись :)")
                    .font(.title2)
                
                TextField("Введи своє імʼя", text: $name)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 1.7)
                    )
                    .padding()
                
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, displayedComponents: .date, label: { Text("Обери дату свого народження") })
                    .padding()
                
                
                
                Button("Готово") {
                    showGreeting = true
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding()
            .sheet(isPresented: $showGreeting) {
                GreetingView(name: name)
            }
        }
    }
}

struct GreetingView: View {
    var name: String

    var body: some View {
        VStack(spacing: 20) {
            Text("Приємно познайомитись, \(name)!")
                .font(.title)
                .multilineTextAlignment(.center)

            Text("❤️")
                .font(.system(size: 60))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
