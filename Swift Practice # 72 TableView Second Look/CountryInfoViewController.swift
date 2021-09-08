//
//  CountryInfoViewController.swift
//  Swift Practice # 72 TableView Second Look
//
//  Created by Dogpa's MBAir M1 on 2021/9/7.
//


import UIKit

class CountryInfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var numbersOfRow: Int!                      //選到的row的值
    var countryArrayForInfoPage: [G20Country]!  //第一頁g20CountryArray整個的自定義資料
    
    @IBOutlet weak var countryNameLable: UILabel!           //顯示國家名稱
    
    @IBOutlet weak var countryFlagImageView: UIImageView!   //顯示國旗
    
    @IBOutlet weak var showWikiPageButton: UIButton!        //連結維基百科的Button
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //顯示國家名稱的取得方法
        countryNameLable.text = "\(countryArrayForInfoPage![numbersOfRow].countryName)"
        
        //顯示國旗圖案的取得方法
        countryFlagImageView.image = UIImage(named: "\(countryArrayForInfoPage![numbersOfRow].countryImage)")
        
        //設定Button的名稱的方法
        showWikiPageButton.setTitle("\(countryArrayForInfoPage![numbersOfRow].countryName) 維基百科", for: .normal)
        
        //print(countryArrayForInfoPage!)
    }
    
    
    
    
    @IBSegueAction func presentWikiPage(_ coder: NSCoder) -> UIViewController? {
        let controller = WikiPageViewController(coder: coder)
        
        controller?.urlLink = countryArrayForInfoPage![numbersOfRow].countryLink //傳資料給下一頁的urlLink
        
        return controller
    }
    
    
    //回傳區域數
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //回傳需要多少的row
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryArrayForInfoPage![numbersOfRow].countryInfo.count
    }
    //顯示的內容為何
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = countryArrayForInfoPage![numbersOfRow].countryInfo[indexPath.row]
        return cell
    }
    
    


}
