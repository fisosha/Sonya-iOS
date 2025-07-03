import Foundation

func calculateCylinderSurfaceArea(r: Double, h: Double) -> String {
    let pi = 3.1416
    
    let cylinderBaseArea = pi * pow(r, 2)
    let lateralSurfaceArea = 2 * pi * r * h
    let cylinderSurfaceArea = 2 * cylinderBaseArea + lateralSurfaceArea
    
    let description = "Циліндр має такі параметри: \nРадіус основи = \(r) \nВисота циліндра = \(h) \n\nЩоб знайти площу циліндра, скористаємось такими формулами: \nПлоща основи = πR² \nПлоща бічної поверхні = 2πRh \nЗагальна площа циліндра = 2 площі основи + площу бічної поверхні"
    
    let result = "Площа основи = π(\(r))² = \(cylinderBaseArea) \nПлоща бічної поверхні = 2π * \(r) * \(h) = \(lateralSurfaceArea) \nЗагальна площа циліндра = 2 * \(cylinderBaseArea) + \(lateralSurfaceArea) = \(cylinderSurfaceArea)"
    
    return description + "\n\n" + result
}

print(
    calculateCylinderSurfaceArea(r: 3, h: 4)
)
