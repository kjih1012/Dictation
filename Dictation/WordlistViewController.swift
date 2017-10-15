//
//  WordlistViewController.swift
//  Dictation
//
//  Created by SWUCOMPUTER on 2017. 10. 15..
//  Copyright © 2017년 SWUCOMPUTER. All rights reserved.
//

import UIKit
let ad = UIApplication.shared.delegate as? AppDelegate
var qes:Array<String> = []
var ans:Array<String> = []


class WordlistViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        qes.removeAll()
        ans.removeAll()
        
        
        for (key,value) in (ad?.WordDictation)! {
            qes.append(key)
            ans.append(value)
        }
        
        print(qes)
        print(ans)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func numberOfSections(in tableView : UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return qes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell: UITableViewCell = UITableViewCell(style: .subtitle, reuseIdentifier: "reuseIndetifier")
        
        
        cell.textLabel?.text = qes[indexPath.row]
        cell.detailTextLabel?.text = ans[indexPath.row]
        
        return cell
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
