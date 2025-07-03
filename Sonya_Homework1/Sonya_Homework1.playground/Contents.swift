import Foundation

func solveSquareEquation(a: Double, b: Double, c: Double) {
    let d = pow(b, 2) - 4 * a * c
    let conditionDescription = "Квадратне рівняння: \(a)х² + \(b)x + c = 0\n"
    if d < 0 {
        print("Квадратне рівняння: \(a)х² + \(b)x + c = 0 \nДискримінант менше нуля, рівняння не має розвʼязку")
    } else {
        let x1 = ( -b + sqrt(d)) / (2 * a)
        let x2 = ( -b - sqrt(d)) / (2 * a)

        let result = "Корені квадратного рівняння: \nх₁ = \(x1) \nx₂ = \(x2)"
        print(conditionDescription + "\n" + result)
    }
}

solveSquareEquation(a: 2, b: 6, c: 1)
