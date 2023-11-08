//
//  perViewController.swift
//  12015744Event
//
//  Created by Hari Kiran Nagandla on 30/10/23.
//

import UIKit

class perViewController: UIViewController {
    @IBOutlet weak var date: UIDatePicker!
    
    @IBOutlet weak var slidervalue: UISlider!
    
    @IBOutlet weak var sliderlabelvalue: UILabel!
    
    @IBOutlet weak var events: UITextField!
    
    @IBOutlet weak var photo: UISwitch!
    
    @IBOutlet weak var add: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func slider(_ sender: Any) {
        sliderlabelvalue.text = "\(Int(slidervalue.value))"
    }
    
    @IBAction func book(_ sender: Any) {
        performSegue(withIdentifier: "final3", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let obj = segue.destination as! final3ViewController
        obj.persons = Int(slidervalue.value)
        obj.address = add.text!
        obj.events1 = events.text!
        obj.date1 = date.date
        obj.pic = photo.isOn
        
        
    
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
