import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pesoInput: UITextField!
    @IBOutlet weak var alturaInput: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    
    let brain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calcularPresionado(_ sender: UIButton) {
        guard let pTexto = pesoInput.text, let p = Double(pTexto),
              let aTexto = alturaInput.text, let a = Double(aTexto), a > 0 else {
            resultadoLabel.text = "Datos inválidos"
            return
        }
        
        let imcValue = brain.calcularIMC(peso: p, altura: a)
        let info = brain.obtenerEstatus(imc: imcValue)
        
        resultadoLabel.text = String(format: "IMC: %.1f - %@", imcValue, info)
    }
}
