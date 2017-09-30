//
//  ViewController.swift
//  Times table app
//
//  Created by Arkadiusz Stankiewicz on 30.09.2017.
//  Copyright © 2017 Arkadiusz Stankiewicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tableView: UITableView!
    @IBAction func sliderChanged(_ sender: Any) {
        
        tableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String((Int(slider.value * 20)) * (indexPath.row + 1))
        return cell
    }
}

extension ViewController: UITableViewDelegate{
    
}

