//
//  DeleteViewController.swift
//  Dictation
//
//  Created by SWUCOMPUTER on 2017. 10. 14..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class DeleteViewController: UIViewController {

    @IBOutlet var deleteWord: UITextField!
    @IBOutlet var DeleteView: UIView!
    @IBOutlet var Qtext: UILabel!
    @IBOutlet var Atext: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        DeleteView.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonDelete() {
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        
        if ((ad?.WordDictation[deleteWord.text!]) != nil) {
            Qtext.text = deleteWord.text
            Atext.text = ad?.WordDictation[deleteWord.text!]
            ad?.WordDictation.removeValue(forKey: deleteWord.text!)
            DeleteView.isHidden = false
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
