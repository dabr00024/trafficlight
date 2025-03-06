//
//  ViewController.swift
//  trafficlight
//
//  Created by DABR on 06.03.2025.
//

import UIKit

enum lightNow {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
        
    @IBOutlet var startButton: UIButton!
    
    private var ligftNow = lightNow.red
    private let colorAlfaOn: CGFloat = 1
    private let colorAlfaOff: CGFloat = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = colorAlfaOff
        yellowView.alpha = colorAlfaOff
        greenView.alpha = colorAlfaOff
        
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = redView.frame.width / 2
        
    }

    @IBAction func startButtonDidTapped() {
        
     startButton.setTitle("NEXT", for: .normal)
        
        switch ligftNow {
        case .red:
            redView.alpha = colorAlfaOn
            greenView.alpha = colorAlfaOff
            ligftNow = .yellow
        case .yellow:
            yellowView.alpha = colorAlfaOn
            redView.alpha = colorAlfaOff
            ligftNow = .green
        case .green:
            greenView.alpha = colorAlfaOn
            yellowView.alpha = colorAlfaOff
            ligftNow = .red
        }
    }
    

}

