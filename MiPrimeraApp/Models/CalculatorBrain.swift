import Foundation

struct CalculatorBrain {
    func calcularIMC(peso: Double, altura: Double) -> Double {
        return peso / (altura * altura)
    }
    
    func obtenerEstatus(imc: Double) -> String {
        switch imc {
        case ..<18.5: return "Bajo peso"
        case 18.5...24.9: return "Normal"
        case 25...29.9: return "Sobrepeso"
        default: return "Obesidad"
        }
    }
}
