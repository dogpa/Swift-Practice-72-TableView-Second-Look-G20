//
//  WikiPageViewController.swift
//  Swift Practice # 72 TableView Second Look
//
//  Created by Dogpa's MBAir M1 on 2021/9/7.
//

import UIKit
import WebKit

class WikiPageViewController: UIViewController {
    
    
    var urlLink: String!    //從上一頁取得網址
    
    @IBOutlet weak var showCountryWiKiWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url: String = urlLink                                                           //指派url為第二頁取得資料的urlLink
        let encodedUrl = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) //指派encodedUrl為剛剛取得資料的url並重新編碼有中文的網址
        let encodedStringUrl: String = encodedUrl!                                          //轉型encodedUrl!
        
        /*測試轉型是否成功以及確認Optional的狀態用
        print("新編碼網址\(encodedUrl!)")
        print("新編碼型別\(type(of: encodedUrl))")
        print("新編碼網址\(encodedStringUrl)")
        print("新編碼型別\(type(of: encodedStringUrl))")
         */
        //透過if let 檢查是否有取得網址
        if let webUrl = URL(string: encodedStringUrl){
            
            //指派webRequest取得URLRequest的功能
            let webRequest = URLRequest(url: webUrl)
            
            //showCountryWiKiWebView載入指定的網址
            showCountryWiKiWebView.load(webRequest)
        }
        
        

        // Do any additional setup after loading the view.
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
