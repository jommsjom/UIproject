//
//  FourthViewController.swift
//  Firstapp
//
//  Created by Jomms on 18/12/20.
//

import UIKit

class FourthViewController: UIViewController {
    
    private let  View:UIView = {
        let viw = UIView()
        viw.backgroundColor = .red
        viw.translatesAutoresizingMaskIntoConstraints = false
        return viw
        
    }()
    private let Secondview:UIView = {
        let abb = UIView()
        abb.backgroundColor = .green
        abb.translatesAutoresizingMaskIntoConstraints = false
        return abb
    }()
    private let Thirdview:UIView = {
        let bcc = UIView()
        bcc.backgroundColor = .orange
        bcc.translatesAutoresizingMaskIntoConstraints = false
        return bcc
    }()
    private let fourthview:UIView = {
        let dd = UIView()
        dd.backgroundColor = .black
        dd.translatesAutoresizingMaskIntoConstraints = false
        return dd
        
    }()
    
    private let imgviw:UIImageView = {
        let img = UIImageView(image:#imageLiteral(resourceName: "4b570687fbe6346b087d14ab741d4d9e"))
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
        }()
    
    
    private let button:UIButton = {
       let btn = UIButton()
        btn.setTitle("Next", for:.normal)
        btn.setTitleColor(.brown, for: .normal)
        btn.backgroundColor = .blue
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action:#selector(buttonnext), for:.touchUpInside)
        return btn
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // view.backgroundColor = .green
        animetion()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let scrollview = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width-0, height: view.frame.size.height-0))
        scrollview.backgroundColor = .yellow
        scrollview.contentSize = CGSize(width: view.frame.size.width, height: 2000)
        view.addSubview(scrollview)
        scrollview.addSubview(View)
       View.addSubview(Secondview)
        scrollview.addSubview(Thirdview)
        scrollview.addSubview(fourthview)
        Thirdview.addSubview(imgviw)
        scrollview.addSubview(button)
        
        View.contentMode = .scaleAspectFit
        View.topAnchor.constraint(equalTo:scrollview.topAnchor,constant:0).isActive = true
        View.leadingAnchor.constraint(equalTo:scrollview.leadingAnchor).isActive = true
       // View.trailingAnchor.constraint(equalTo:scrollview.trailingAnchor).isActive = true
        //View.bottomAnchor.constraint(equalTo:scrollview.bottomAnchor).isActive = true
        View.widthAnchor.constraint(equalToConstant:1000).isActive = true
        View.heightAnchor.constraint(equalToConstant:200).isActive = true
        
        Secondview.contentMode = .scaleAspectFit
        Secondview.topAnchor.constraint(equalTo:View.topAnchor,constant:50).isActive = true
        Secondview.leadingAnchor.constraint(equalTo:View.leadingAnchor,constant:90).isActive = true
     //   Secondview.bottomAnchor.constraint(equalTo:View.bottomAnchor,constant:20).isActive = true
        //Secondview.trailingAnchor.constraint(equalTo:View.trailingAnchor,constant:60).isActive = true
        //Secondview.centerYAnchor.constraint(equalTo:View.centerYAnchor,constant:5).isActive = true
        //Secondview.centerXAnchor.constraint(equalTo:View.centerXAnchor,constant:5).isActive = true
        Secondview.widthAnchor.constraint(equalToConstant:250).isActive = true
        Secondview.heightAnchor.constraint(equalToConstant:100).isActive = true
        
        Thirdview.contentMode = .scaleAspectFit
        Thirdview.topAnchor.constraint(equalTo:View.topAnchor,constant: 200).isActive = true
        Thirdview.leadingAnchor.constraint(equalTo:scrollview.leadingAnchor).isActive = true
        Thirdview.widthAnchor.constraint(equalToConstant:1000).isActive = true
        Thirdview.heightAnchor.constraint(equalToConstant:200).isActive = true
        //Thirdview.bottomAnchor.constraint(equalTo:fourthview.bottomAnchor).isActive = true
        
    
        fourthview.contentMode = .scaleAspectFit
        fourthview.topAnchor.constraint(equalTo:Thirdview.topAnchor,constant:200).isActive = true
        fourthview.leadingAnchor.constraint(equalTo:scrollview.leadingAnchor).isActive = true
        fourthview.widthAnchor.constraint(equalToConstant:1000).isActive = true
        fourthview.heightAnchor.constraint(equalToConstant:200).isActive = true
        
        imgviw.contentMode = .scaleAspectFit
        imgviw.topAnchor.constraint(equalTo:Thirdview.topAnchor,constant: 45).isActive = true
        imgviw.leadingAnchor.constraint(equalTo:Thirdview.leadingAnchor,constant:165).isActive = true
        imgviw.widthAnchor.constraint(equalToConstant:80).isActive = true
        imgviw.heightAnchor.constraint(equalToConstant:80).isActive = true
        
        button.contentMode = .scaleAspectFill
        button.topAnchor.constraint(equalTo:fourthview.topAnchor,constant:450).isActive = true
        button.leadingAnchor.constraint(equalTo:scrollview.leadingAnchor,constant: 90).isActive = true
      //  button.trailingAnchor.constraint(equalTo:scrollview.trailingAnchor,constant:300 ).isActive = true
        button.widthAnchor.constraint(equalToConstant:250).isActive = true
        button.heightAnchor.constraint(equalToConstant:60).isActive = true
        //button.bottomAnchor.constraint(equalTo:scrollview.bottomAnchor,constant: 100).isActive = true
        
    }

    @objc func animetion(){
        
        UIView.animate(withDuration: 0.5, animations:{
            self.imgviw.frame = CGRect(x: 5, y: 0, width:50, height:50)
            self.imgviw.center = self.view.center
            
        },completion:{ done in
            if done {
                self.animetion()
            }
        })
        
  }
    func animation(){
        UIView.animate(withDuration:0.7, animations:{
            self.imgviw.frame = CGRect(x: 0, y: 0, width:50, height:50)
            self.imgviw.center = self.view.center
        })
    }
    
    @objc func buttonnext(){
        let vc = FifthViewController()
            
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
}
