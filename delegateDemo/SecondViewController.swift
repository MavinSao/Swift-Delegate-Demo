//
//  SecondViewController.swift
//  delegateDemo
//
//  Created by Mavin on 10/7/20.
//

import UIKit

protocol Delegate{
    func didSendData(image: UIImage, action: String)
}

class SecondViewController: UIViewController {

    var delegate: Delegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func downloadPress(_ sender: Any) {
        delegate.didSendData(image: UIImage(systemName: "square.and.arrow.down")!, action: "downloading")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uploadPress(_ sender: Any) {
        delegate.didSendData(image: UIImage(systemName: "square.and.arrow.up")!, action: "uploading")
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
