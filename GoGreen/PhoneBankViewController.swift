//
//  PhoneBankViewController.swift
//  GoGreen
//
//  Created by Ananya Guruprasad on 7/21/22.
//

import UIKit

class listItem {
    let title: String
    var isChecked: Bool = false
    
    init(title: String) {
        self.title = title
    }
}


class PhoneBankViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let items: [checklistItem] = [
        "Volunteers",
    "Call list",
    "Phones",
    "Phone Script",
    "Note-taking/ Response sheet",
    "Pens/pencils",
    "Drinks/Snacks",
    ].compactMap({
        checklistItem(title: $0)
    })

    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "What To Bring"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
// table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.isChecked ? .checkmark : .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = items[indexPath.row]
        item.isChecked = !item.isChecked
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    }


