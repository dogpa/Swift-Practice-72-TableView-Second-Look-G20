//
//  G20CountryListTableViewController.swift
//  Swift Practice # 72 TableView Second Look
//
//  Created by Dogpa's MBAir M1 on 2021/9/7.
//

import UIKit

class G20CountryListTableViewController: UITableViewController {
    
    //建立需要的資料Array，透過剛剛自定億的G20Country的struct來建立Array資料。
    var g20CountryArray:[G20Country] = [
        G20Country(countryImage: "1", countryName: "阿根廷", countryInfo: ["貿易額(百萬美)：142,370","GDP(百萬美)：951,001","人口：42,961,000","主要運動：足球"], countryLink: "https://zh.wikipedia.org/wiki/阿根廷"),
        G20Country(countryImage: "2", countryName: "澳洲", countryInfo: ["貿易額(百萬美)：496,700","GDP(百萬美)：1,099,771","人口：23,599,000","觀光景點：墨爾本、雪梨","國家特色：袋鼠多","經濟主力：礦業與第一農林漁牧業","首都：坎培拉"], countryLink: "https://zh.wikipedia.org/wiki/澳大利亚"),
        G20Country(countryImage: "3", countryName: "巴西", countryInfo: ["貿易額(百萬美)：484,600","GDP(百萬美)：3,275,799","人口：202,768,000"], countryLink: "https://zh.wikipedia.org/wiki/巴西"),
        G20Country(countryImage: "4", countryName: "加拿大", countryInfo: ["貿易額(百萬美)：947,200","GDP(百萬美)：1,595,975","人口：35,467,000","首都：渥太華","觀光資源：極光、冰川"], countryLink: "https://zh.wikipedia.org/wiki/加拿大"),
        G20Country(countryImage: "5", countryName: "中國", countryInfo: ["貿易額(百萬美)：4,620,000","GDP(百萬美)：27,331,116","人口：1,395,380,000"], countryLink: "https://zh.wikipedia.org/wiki/中国"),
        G20Country(countryImage: "6", countryName: "法國", countryInfo: ["貿易額(百萬美)：1,212,300","GDP(百萬美)：2,591,170","人口：63,951,000","首都：巴黎"], countryLink: "https://zh.wikipedia.org/wiki/法國"),
        G20Country(countryImage: "7", countryName: "德國", countryInfo: ["貿易額(百萬美)：2,866,600","GDP(百萬美)：3,748,094","人口：80,940,000"], countryLink: "https://zh.wikipedia.org/wiki/德国"),
        G20Country(countryImage: "8", countryName: "印度", countryInfo: ["貿易額(百萬美)：850,600","GDP(百萬美)：7,411,093","人口：1,259,695,000"], countryLink: "https://zh.wikipedia.org/wiki/印度"),
        G20Country(countryImage: "9", countryName: "印尼", countryInfo: ["貿易額(百萬美)：346,100","GDP(百萬美)：2,685,893","人口：251,490,000"], countryLink: "https://zh.wikipedia.org/wiki/印度尼西亚"),
        G20Country(countryImage: "10", countryName: "義大利", countryInfo: ["貿易額(百萬美)：948,600","GDP(百萬美)：2,135,359","人口：59,960,000"], countryLink: "https://zh.wikipedia.org/wiki/義大利"),
        G20Country(countryImage: "11", countryName: "日本", countryInfo: ["貿易額(百萬美)：1,522,400","GDP(百萬美)：5,749,550","人口：127,061,000","第一大城市：東京","國家特色：台日友好"], countryLink: "https://zh.wikipedia.org/wiki/日本"),
        G20Country(countryImage: "16", countryName: "韓國", countryInfo: ["貿易額(百萬美)：1,170,900","GDP(百萬美)：2,229,779","人口：50,437,000"], countryLink: "https://zh.wikipedia.org/wiki/大韩民国"),
        G20Country(countryImage: "12", countryName: "墨西哥", countryInfo: ["貿易額(百萬美)：813,500","GDP(百萬美)：2,148,884","人口：119,581,789"], countryLink: "https://zh.wikipedia.org/wiki/墨西哥"),
        G20Country(countryImage: "13", countryName: "俄羅斯", countryInfo: ["貿易額(百萬美)：844,200","GDP(百萬美)：3,937,759","人口：146,300,000"], countryLink: "https://zh.wikipedia.org/wiki/俄罗斯"),
        G20Country(countryImage: "14", countryName: "沙烏地阿拉伯", countryInfo: ["貿易額(百萬美)：521,600","GDP(百萬美)：1,609,628","人口：30,624,000"], countryLink: "https://zh.wikipedia.org/wiki/沙特阿拉伯"),
        G20Country(countryImage: "15", countryName: "南非", countryInfo: ["貿易額(百萬美)：200,100","GDP(百萬美)：707,097","人口：53,699,000"], countryLink: "https://zh.wikipedia.org/wiki/南非"),
        G20Country(countryImage: "17", countryName: "土耳其", countryInfo: ["貿易額(百萬美)：417,000","GDP(百萬美)：1,514,859","人口：77,324,000"], countryLink: "https://zh.wikipedia.org/wiki/土耳其"),
        G20Country(countryImage: "18", countryName: "英國", countryInfo: ["貿易額(百萬美)：1,189,400","GDP(百萬美)：3,128,185","人口：64,511,000"], countryLink: "https://zh.wikipedia.org/wiki/英国"),
        G20Country(countryImage: "19", countryName: "美國", countryInfo: ["貿易額(百萬美)：3,944,000","GDP(百萬美)：21,334,667","人口：318,523,000"], countryLink: "https://zh.wikipedia.org/wiki/美國"),
        G20Country(countryImage: "20", countryName: "歐盟", countryInfo: ["貿易額(百萬美)：4,485,000","GDP(百萬美)：18,640,411","人口：505,570,700"], countryLink: "https://zh.wikipedia.org/wiki/欧洲联盟")
    ]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    
    
    //回傳Sections的數量
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //回傳需要的顯示行數
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return g20CountryArray.count    //20
    }

    //顯示的資料內容
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //指派cell取得tableView的重用機制功能，發生的地方位於"cell"的indexPath上
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //cell的標題從g20CountryArray[indexPath.row].countryName取得
        cell.textLabel?.text = g20CountryArray[indexPath.row].countryName
        
        //cell的照片的名稱從g20CountryArray[indexPath.row].countryImage
        cell.imageView?.image = UIImage(named: g20CountryArray[indexPath.row].countryImage)
        //回傳cell
        
        return cell
    }
    
    //設定Section的標題
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "G20 Country"
    }
    
    
    
    //點選了tableView的row後要顯示下一個頁面，透過"showCountryInfo"這條segue去顯示下一頁的頁面
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showCountryInfo", sender: nil)
    }
    
    
    
    //確認傳遞資料的路徑確認，確認後傳遞資料
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //若segue的ＩＤ為指定的"showCountryInfo"
        if segue.identifier == "showCountryInfo" {
            
            //嘗試轉型取得CountryInfoViewController後指派給CountryInfoView
            if let CountryInfoView = segue.destination as? CountryInfoViewController{
                
                //指派所選到的row指派給selectedIndexPath
                let selectedIndexPath = self.tableView.indexPathForSelectedRow
                
                //使用if let 如果真的有選到row (selectedIndexPath有值)
                if let selectRow = selectedIndexPath?.row {
                    
                    //則將第2頁CountryInfoViewController所需要的資料指派後傳給第2頁
                    CountryInfoView.numbersOfRow = selectRow                    //所選到的列數
                    CountryInfoView.countryArrayForInfoPage = g20CountryArray   //整個g20CountryArray傳到下一頁用
                    
                }
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
