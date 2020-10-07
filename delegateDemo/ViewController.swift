//
//  ViewController.swift
//  delegateDemo
//
//  Created by Mavin on 10/7/20.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func chooseEventPress(_ sender: Any) {
        
        let secondView = storyboard?.instantiateViewController(identifier: "chooseEvent") as! SecondViewController
        secondView.delegate = self
        secondView.modalPresentationStyle = .fullScreen
        present(secondView, animated: true, completion: nil)
    }
    

}

extension ViewController: Delegate{
    func didSendData(image: UIImage, action: String) {
        print(action)
        imgView.image = image
        titleLabel.text = action
    }
    
    
}

