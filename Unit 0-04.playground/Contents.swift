// Created on: Sept-2018
// Created by: Mark Ison
// Created for: ICS3U
// This program is the UIKit solution for adress
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let helloWorldLabel: UILabel = UILabel()
    let touchmeButton = UIButton()
    let spanishButton = UIButton()
    let filipinoButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        touchmeButton.setTitle("English", for: UIControlState.normal)
        touchmeButton.setTitleColor(.blue, for: .normal)
        touchmeButton.addTarget(self, action: #selector(magic), for: .touchUpInside)
        view.addSubview(touchmeButton)
        touchmeButton.translatesAutoresizingMaskIntoConstraints = false
        touchmeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        touchmeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        spanishButton.setTitle("Spanish", for: .normal)
        spanishButton.setTitleColor(.blue, for: .normal)
        spanishButton.addTarget(self, action: #selector(spanishText), for: .touchUpInside)
        view.addSubview(spanishButton)
        spanishButton.translatesAutoresizingMaskIntoConstraints = false
        spanishButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        spanishButton.trailingAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        filipinoButton.setTitle("Filipino", for: .normal)
        filipinoButton.setTitleColor(.blue, for: .normal)
        filipinoButton.addTarget(self, action: #selector(filipinoText), for: .touchUpInside)
        view.addSubview(filipinoButton)
        filipinoButton.translatesAutoresizingMaskIntoConstraints = false
        filipinoButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        filipinoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        helloWorldLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(helloWorldLabel)
        helloWorldLabel.translatesAutoresizingMaskIntoConstraints = false
        helloWorldLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        helloWorldLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
        
    }
    
    @objc func magic() {
        helloWorldLabel.text = "Hello,World!"
    }
    
    @objc func spanishText() {
        helloWorldLabel.text = "i hola, Mundo!"
    }
    
    @objc func filipinoText() {
        helloWorldLabel.text = "Kamusta, Mundo"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

