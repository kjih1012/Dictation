//
//  DictationViewController.swift
//  Dictation
//
//  Created by SWUCOMPUTER on 2017. 10. 14..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class DictationViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet var CorrectView: UIView!
    @IBOutlet var WordPicker: UIPickerView!
    @IBOutlet var CorrectOrNot: UILabel!
    @IBOutlet var Word: UITextField!
    
    let ad = UIApplication.shared.delegate as? AppDelegate
    var akey:Array<String> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        CorrectView.isHidden = true
        // Do any additional setup after loading the view.
        for (key,_) in (ad?.WordDictation)! {
            akey.append(key)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
        @IBAction func isCorrect() {
            let ans: String = akey[self.WordPicker.selectedRow(inComponent: 0)]
            
            if Word.text != nil {
                if Word.text == ad?.WordDictation[ans] {
                    CorrectOrNot.text = "정답입니다!!!"
                    CorrectView.isHidden = false
                }
                else {
                    CorrectOrNot.text = "틀렸습니다!!!"
                    CorrectView.isHidden = false
                }
            }
            
            
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return akey.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return akey[row]
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
