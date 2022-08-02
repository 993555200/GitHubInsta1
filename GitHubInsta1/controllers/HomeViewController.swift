//
//  HomeViewController.swift
//  GitHubInsta1
//
//  Created by Habibulloh on 01/08/22.
//

import UIKit

class HomeViewController:BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var items: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initViews()
    }

    //Mark:Method
    func initViews(){
        tableView.dataSource = self
        tableView.delegate = self
        setNavigationBar()
        
        
        items.append(Post(fullName: "Habibi"))
        items.append(Post(fullName: "Uxc_007"))
        //items.append(Post(profile_Im: "Bro1", fullName: "Habi", post_Im: "person8", post_Im1: "person3"))
    }
    
    func setNavigationBar(){
        let camera = UIImage(named: "ic_camera")
        let send = UIImage(named: "ic_near")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: camera, style: .plain, target: self, action: #selector(leftTapped))
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: send, style: .plain, target: self, action: #selector(rightTapped))
        title = "Instagram"
    }
    

    //Mark:Action
    
    @objc func leftTapped(){
        
    }
    @objc func rightTapped(){
        
    }
    
    //Mark: Table View
    

    func tableView(_ tableView: UITableView,numberOfRowsInSection section:Int) -> Int{
        return items.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let item = items[indexPath.row]
            let cell = Bundle.main.loadNibNamed("PostTableViewCell", owner: self, options: nil)?.first as! PostTableViewCell
           
            //cell.profileImage.image = UIImage(named: item.profile_Im!)
                // cell.NameLabel.text = item.fullName
           //cell.postImage.image = UIImage(named: item.post_Im!)
         //cell.postImage1.image = UIImage(named: item.post_Im1!)
            return cell
        }
        
     func tableView(_ tableView:UITableView,heightForRowAt indexPath:  IndexPath) -> CGFloat{
        return 400
    }
    
}
