//
//  WordViewController.swift
//  Dictation
//
//  Created by SWUCOMPUTER on 2017. 10. 14..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class WordViewController: UIViewController {
    @IBOutlet var questionText: UITextField?
    @IBOutlet var answerText: UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addWord(_ sender: UIButton) {
        
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        ad?.WordDictation.updateValue((answerText?.text)!, forKey: (questionText?.text)!)

      
        
        
        questionText?.text = ""
        answerText?.text = ""
        
    }/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
