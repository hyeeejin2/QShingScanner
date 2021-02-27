//
//  ViewController.swift
//  QShingScanner
//
//  Created by 김혜진 on 2021/02/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var qrButton: UIButton!
    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setNavigation()
        setButtonDesign()
    }

    func setNavigation() {
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.orange]
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    func setButtonDesign() {
//        qrButton.layer.borderWidth = 0.5
//        historyButton.layer.borderWidth = 0.5
//        infoButton.layer.borderWidth = 0.5
        
        qrButton.layer.cornerRadius = 5.0
        historyButton.layer.cornerRadius = 5.0
        infoButton.layer.cornerRadius = 5.0
        
        qrButton.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        historyButton.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        infoButton.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        
        qrButton.tintColor = .black
        historyButton.tintColor = .black
        infoButton.tintColor = .black
    }

    @IBAction func QRButton(_ sender: UIButton) {
        showAlertSelectForQRScan()
    }
    
    func showAlertSelectForQRScan() {
        let alert = UIAlertController(title: "QR 인식 방법 선택", message: nil, preferredStyle: .actionSheet)
        let qrcode = UIAlertAction(title: "QR", style: .default) { (action) in
            print("qr")
        }
        let url = UIAlertAction(title: "URL", style: .default) { (action) in
            print("url")
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(qrcode)
        alert.addAction(url)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }

}

