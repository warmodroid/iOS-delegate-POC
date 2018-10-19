//
//  BaseViewController.swift
//  DelegatePOC
//
//  Created by mohit.agrawal on 09/09/18.
//  Copyright © 2018 mohit.agrawal. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, SelectionPageDelegate{
    
    @IBOutlet weak var dogImageView: UIImageView!
    @IBOutlet weak var goButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goButton.layer.cornerRadius = 10.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClickGoButton(_ sender: Any) {
        let selectionPageVc = storyboard?.instantiateViewController(withIdentifier: "SelectionPageViewController") as! SelectionPageViewController
        selectionPageVc.selectionPageDelegate = self
        present(selectionPageVc, animated: true, completion: nil)
    }
    
    func didTapChoice(image: UIImage, name: String) {
        dogImageView.image = image
    }

}
