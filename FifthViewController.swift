//
//  FifthViewController.swift
//  Firstapp
//
//  Created by Jomms on 24/12/20.
//

import UIKit

class FifthViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableview.dequeueReusableCell(withIdentifier:"cell", for:indexPath)
        cell.textLabel?.text = "hellow"
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
       return 5
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section tittel1\(section)"
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
        }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame:CGRect(x:0, y: 0, width:view.frame.size.width, height: 100))
        header.backgroundColor = .red
        
        let imageviw = UIImageView(image:#imageLiteral(resourceName: "4b570687fbe6346b087d14ab741d4d9e"))
        imageviw.translatesAutoresizingMaskIntoConstraints = false
        imageviw.tintColor = .blue
        header.addSubview(imageviw)
        //imageviw.frame = CGRect(x:0, y: 0, width:header.frame.size.width - 10, height: header.frame.size.height - 10)
        imageviw.contentMode = .scaleAspectFit
        imageviw.leadingAnchor.constraint(equalTo:header.leadingAnchor,constant:-20).isActive = true
        imageviw.topAnchor.constraint(equalTo:header.topAnchor,constant:5).isActive = true
        imageviw.widthAnchor.constraint(equalToConstant:140).isActive = true
        imageviw.heightAnchor.constraint(equalToConstant:90).isActive = true
        
        let lbl = UILabel()
        lbl.text = "HEADER:\(section)"
        lbl.font = .systemFont(ofSize:22, weight:.thin)
        lbl.textColor = .black
        lbl.textAlignment = .center
        lbl.backgroundColor = .systemGreen
        header.addSubview(lbl)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.contentMode = .scaleAspectFit
        lbl.topAnchor.constraint(equalTo:header.topAnchor,constant:15).isActive = true
        lbl.leadingAnchor.constraint(equalTo:imageviw.leadingAnchor,constant:150).isActive = true
        lbl.widthAnchor.constraint(equalToConstant:150).isActive  = true
        lbl.heightAnchor.constraint(equalToConstant:50).isActive = true
        
        
        
    return header
        }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 5
    }
    
    private let tableview:UITableView = {
        let table = UITableView()
       // table.register(UITableView.self, forCellReuseIdentifier:"cell")
        table.register(UITableViewCell.self,forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .orange
        view.addSubview(tableview)
        tableview.delegate = self
        tableview.dataSource = self
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableview.frame = view.bounds
        
    }
}
