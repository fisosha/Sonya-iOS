import Foundation

// task 1

typealias DayPlan = Set<String>
var dayPlan : DayPlan = ["Почистити зуби", "Вмитись", "Поснідати", "Піти в універ", "Пообідати", "Зробити домашку", "Піти на прогулянку", "Повечеряти", "Прийняти душ", "Лягти спати"]

// task 2
typealias MonthPlan = [DayPlan]
var JulyPlan : MonthPlan = Array(repeating: DayPlan(), count: 31)

JulyPlan[1] = ["Почистити зуби", "Вмитись", "Піти на пляж", "Позагорати", "Повечеряти в ресторані"]

JulyPlan[4] = ["Зустрітись з друзями", "Пограти у волейбол"]

JulyPlan[9] = ["Піти на піктнік", "Провести час з сімʼєю"]

JulyPlan[18] = dayPlan

print(JulyPlan)

// task 3
typealias YearPlan = [String : MonthPlan]
var yearPlan : YearPlan = [
    "Липень" : JulyPlan
]

// task 4
func describeMonthPlan(monthName : String, from plan : YearPlan) -> String {
    guard let month = plan[monthName] else {
        return "Місяць \(monthName) не знайдено "
    }
    
    var result = "Плани на \(monthName): \n"
    
    for (index, day) in month.enumerated() {
        if !day.isEmpty {
            result += "День \(index + 1): \(day.joined(separator: ", "))\n"
        }
    }
    
    return result
}

print(describeMonthPlan(monthName: "Липень", from: yearPlan))

// task 5

struct Journal {
    var yearPlan: YearPlan
    
    func displayMonthPlan(name: String) -> String {
            return describeMonthPlan(monthName: name, from: yearPlan)
    }
    
    mutating func addAction(_ action: String, toDay day: Int, inMonth month: String) {
            if yearPlan[month] == nil {
                yearPlan[month] = Array(repeating: Set<String>(), count: 31)
            }
            guard day >= 1 && day <= 31 else {
                print("Такого дня не існує :( ")
                return
            }

        yearPlan[month]![day - 1].insert(action)
        }

}

var myJournal = Journal(yearPlan: yearPlan)

print(myJournal.displayMonthPlan(name: "Липень"))

myJournal.addAction("Прибрати в кімнаті", toDay: 4, inMonth: "Липень")

print(myJournal.displayMonthPlan(name: "Липень"))
