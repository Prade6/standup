//
//  PopupViewController.swift
//  Standup
//
//  Created by Pradeep on 02/12/16.
//  Copyright © 2016 pradeep. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController  {

    @IBOutlet weak var ProjectNameField: UITextField!
    @IBOutlet weak var DescriptionArea: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        ProjectNameField.becomeFirstResponder()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        
        DescriptionArea.layer.borderColor = (UIColor.black).cgColor.copy(alpha: 0.3)
        DescriptionArea.layer.cornerRadius = 5
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CloseTapped(_ sender: Any) {
        

        // self.view.removeFromSuperview()
        
        
        // Animation
        
        UIView.animate(withDuration: 0.2, delay: 0.2, options: .transitionFlipFromBottom, animations: {
            self.view.alpha = 0
        }) { _ in
            self.view.removeFromSuperview()
        }
        
    
        
        
    }
    
    
    
    /*
     
     
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
