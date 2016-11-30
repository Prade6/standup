//
//  HomeViewController.swift
//  Standup
//
//  Created by pradeep on 29/11/16.
//  Copyright © 2016 pradeep. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var gestureScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let v1 = PendingViewController(nibName: "PendingViewController", bundle: nil)
        let v2 = CurrentViewController(nibName: "CurrentViewController", bundle: nil)
        let v3 = DoneViewController(nibName: "DoneViewController", bundle: nil)
        
        
        self.addChildViewController(v1)
        self.gestureScrollView.addSubview(v1.view)
        v1.didMove(toParentViewController: self)
        
        self.addChildViewController(v2)
        self.gestureScrollView.addSubview(v2.view)
        v2.didMove(toParentViewController: self)
        
        self.addChildViewController(v3)
        self.gestureScrollView.addSubview(v3.view)
        v3.didMove(toParentViewController: self)
        
        
        var v2Frame : CGRect = v2.view.frame
        v2Frame.origin.x = self.view.frame.width
        v2.view.frame = v2Frame
        
        var v3Frame : CGRect = v3.view.frame
        v3Frame.origin.x = 2 * self.view.frame.width
        v3.view.frame = v3Frame
        
        
        self.gestureScrollView.contentSize = CGSize(width: self.view.frame.width * 3, height: gestureScrollView.frame.height)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
