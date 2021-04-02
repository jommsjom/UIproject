//
//  SecondViewController.swift
//  Firstapp
//
//  Created by Jomms on 17/12/20.
//

import UIKit

class SecondViewController: UIViewController {
   
 /*   private let myview:UIView = {
        var myview = UIView()
        myview.translatesAutoresizingMaskIntoConstraints = false
        myview.backgroundColor = .red
        return myview
    }()*/
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //view.backgroundColor = .green
       // view.addSubview(myview)
       // viewconstraints()
     //  button()
       // view.backgroundColor = .green
    
    }
  @IBAction  func didTabButton(){
    
    view.backgroundColor = .green
    }
    
    @IBAction func Btn_red(_ sender: Any) {
        
        
        view.backgroundColor = .red
    }
    
    @IBAction func Btn_blue(_ sender: Any) {
        view.backgroundColor = .blue
    }
    
    @IBAction func Btn_ylw(_ sender: Any) {
        view.backgroundColor = .yellow
    }
    
    
    
    
    
    
    
    
    
    
    
    
 
    /*func button(){
    
     
    
    let btn_red:UIButton = UIButton(frame:CGRect(x: 250, y: 100, width: 200, height: 50));
    
        btn_red.backgroundColor = .red
        btn_red.setTitle("Red", for: .normal)
       
   btn_red.translatesAutoresizingMaskIntoConstraints = false
    var constraint = [NSLayoutConstraint]()
    constraint.append(btn_red.leadingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.leadingAnchor,constant: 300))
   constraint.append(btn_red.trailingAnchor.constraint(equalTo:view.safeAreaLayoutGuide.trailingAnchor,constant: 300))
    constraint.append(btn_red.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 200))
    NSLayoutConstraint.activate(constraint)
    self.view.addSubview(btn_red)
    
    
}*/
/*private func viewconstraints(){
    var constraints = [NSLayoutConstraint]()
    constraints.append(myview.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
    constraints.append(myview.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
    constraints.append(myview.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
    constraints.append(myview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
    
    NSLayoutConstraint.activate(constraints)
    

    } */  
     
}

