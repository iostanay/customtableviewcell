//
//  ViewController.swift
//  customtableviewcell
//
//  Created by Tanay Bhattacharjee on 19/04/18.
//  Copyright © 2018 none. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var mytab: UITableView!
    var myarry = [String]()
    
    override func viewDidLoad() {
        myarry = ["Carry out a random act of kindness, with no expectation of reward, safe in the knowledge that one day someone might do the same for you", "I don't believe that if you do good, good things will happen", "An Internet meme is a hijacking of the original idea. Instead of mutating by random change and spreading by a form of Darwinian selection, Internet memes are altered deliberately by human creativity. There is no attempt at accuracy of copying, as with genes - and as with memes in their original version :) ", "In all natural disasters through time, man needs to attach meaning to tragedy, no matter how random and inexplicable the event is","Tanay Bhattacharjee"]
        mytab.dataSource = nil
        mytab.delegate = self
        super.viewDidLoad()
        mytab.dataSource = self
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarry.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //return UITableViewAutomaticDimension
         let cell = Bundle.main.loadNibNamed("mycell", owner: self, options: nil)?.first as? mycell
        let text: NSString = myarry[indexPath.row] as NSString
        let size = CGSize(width: (cell?.mylabel.frame.width)!, height: CGFloat.greatestFiniteMagnitude)
        let attributes: [String : AnyObject] = [
            NSFontAttributeName : UIFont.systemFont(ofSize: 17)
            // etc.
        ]
        let rect = text.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
       
        let myheight = (cell?.img.frame.height)! + 7 + rect.height + (cell?.myview.frame.height)! + 7
        return myheight
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("mycell", owner: self, options: nil)?.first as? mycell
        cell?.mylabel.text = myarry[indexPath.row]
        return cell!
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        mytab.reloadData()
        
    }
    

    
    
    
    
  

}

