//
//  ThridViewController.swift
//  Firstapp
//
//  Created by Jomms on 15/12/20.
//

import UIKit

class ThridViewController: UIViewController {
    
    private let imgviw:UIImageView = {
        let imgview = UIImageView(image:#imageLiteral(resourceName: "logo"))
        //imgview.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        imgview.translatesAutoresizingMaskIntoConstraints = false
        return imgview
    }()
    private let Secondview:UIView = {
        let viw = UIView()
        viw.backgroundColor = .yellow
        viw.translatesAutoresizingMaskIntoConstraints = false
        
        return viw
    }()
    private let redview:UIView = {
        let  view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    private let button:UIButton = {
        let btn = UIButton()
        btn.backgroundColor = .green
        btn.setTitle("Next", for:.normal)
        btn.setTitleColor(.black, for: .normal)
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        btn.translatesAutoresizingMaskIntoConstraints = false
       
        
        
       return btn
    }()
    @IBOutlet weak var Scrollview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Secondview.addSubview(imgviw)
        view.addSubview(Secondview)
        view.addSubview(redview)
        view.addSubview(button)
       imageview()
     
       
    }
    private func imageview(){
        
        redview.contentMode = .scaleAspectFit
        redview.leadingAnchor.constraint(equalTo:view.leadingAnchor).isActive = true
        redview.trailingAnchor.constraint(equalTo:view.trailingAnchor).isActive = true
        redview.topAnchor.constraint(equalTo:Secondview.topAnchor,constant:250).isActive = true
        //redview.bottomAnchor.constraint(equalTo:button.bottomAnchor).isActive = true
        redview.widthAnchor.constraint(equalToConstant:200).isActive = true
        redview.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        Secondview.contentMode = .scaleAspectFill
        Secondview.topAnchor.constraint(equalTo:view.topAnchor).isActive = true
        Secondview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        Secondview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        Secondview.widthAnchor.constraint(equalToConstant: 300).isActive = true
        Secondview.heightAnchor.constraint(equalToConstant: 300).isActive = true
        Scrollview.bottomAnchor.constraint(equalTo: redview.bottomAnchor, constant: 200).isActive = true
        
        imgviw.contentMode = .scaleAspectFit
        imgviw.leadingAnchor.constraint(equalTo:Secondview.leadingAnchor,constant:10).isActive = true

        imgviw.topAnchor.constraint(equalTo:Secondview.topAnchor,constant: 100).isActive = true
        imgviw.widthAnchor.constraint(equalToConstant: 90).isActive = true
        imgviw.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
     //  imgviw.bottomAnchor.constraint(equalTo:Secondview.bottomAnchor,constant:50).isActive = true
       
        button .contentMode = .scaleAspectFit
        button.topAnchor.constraint(equalTo:redview.topAnchor,constant: 500).isActive = true
        button.leadingAnchor.constraint(equalTo:view.leadingAnchor,constant: 50).isActive = true
        //button.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 200).isActive = true
        button.widthAnchor.constraint(equalToConstant: 320).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
      //  button.bottomAnchor.constraint(equalTo:view.bottomAnchor,constant: 100).isActive = true
       
    }
@objc func buttonAction(sender: UIButton!) {
    //navigationController?.pushViewController(FourthViewController(), animated: true)
    let vc = FourthViewController()
        
    navigationController?.pushViewController(vc, animated: true)
   /* let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let vc = storyboard.instantiateViewController(withIdentifier: "Fourthviews") as! FourthViewController
     
     navigationController?.pushViewController(vc,
     animated: true)*/
    
        }

    
    
    


}
