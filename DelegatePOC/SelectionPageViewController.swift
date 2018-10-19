//
//  SelectionPageViewController.swift
//  DelegatePOC
//
//  Created by mohit.agrawal on 09/09/18.
//  Copyright © 2018 mohit.agrawal. All rights reserved.
//

import UIKit

protocol SelectionPageDelegate {
    func didTapChoice(image: UIImage, name: String)
}

class SelectionPageViewController: UIViewController {

    @IBOutlet weak var manTwoImage: UIImageView!
    @IBOutlet weak var manOneImage: UIImageView!
    var selectionPageDelegate: SelectionPageDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gestureForImageOne = UITapGestureRecognizer(target: self, action: #selector(imageOneClick))
        let gestureForImageTwo = UITapGestureRecognizer(target: self, action: #selector(imageTwoClick))
        manOneImage.isUserInteractionEnabled = true
        manTwoImage.isUserInteractionEnabled = true
        manOneImage.addGestureRecognizer(gestureForImageOne)
        manTwoImage.addGestureRecognizer(gestureForImageTwo)
    }
    
    @objc func imageOneClick(){
        selectionPageDelegate.didTapChoice(image: UIImage(named: "man_two")!, name: "Man One")
        dismiss(animated: true, completion: nil)
    }
    
    @objc func imageTwoClick(){
        selectionPageDelegate.didTapChoice(image: UIImage(named: "man_one")!, name: "Man Two")
        dismiss(animated: true, completion: nil)
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
