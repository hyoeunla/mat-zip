//
//  DetailViewController.swift
//  mat-zip
//
//  Created by 라효은 on 2023/02/07.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mCell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTableViewCell
        
        mCell.menuTitle.text = self.mName[indexPath.row]
        mCell.menuPrice.text = self.mPrice[indexPath.row]
        mCell.menuImg?.image = UIImage(named: self.mImg[indexPath.row])
        return mCell
    }
    
    
    var receiveName: String?
    var receiveImg: String?
    
    var mImg:[String]!
    var mName:[String]!
    var mPrice:[String]!
    
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var menuName: UILabel!
    @IBOutlet weak var menuTableView: UITableView!

    override func viewDidLoad() {
        menuTableView.dataSource = self
        menuTableView.delegate = self
        super.viewDidLoad()
        menuName.text = receiveName
        self.menuTableView.rowHeight = 165
        // Do any additional setup after loading the view.
        
        img.image = UIImage(named: receiveImg!) // 가게 이미지
        if receiveName! == "인덕대학교 푸드코트" {
            self.mName = ["양념치킨 오므라이스", "육회 비빔밥", "새우튀김 알밥", "가츠동"]
            self.mPrice = ["4,500 원", "4,500 원", "4,000 원", "4,000 원"]
            self.mImg = ["in0.png", "in1.png", "in2.png", "in3.png"]
        } else if receiveName == "민들레초밥" {
            self.mName = ["특초밥(대표)", "민들레초밥(대표)", "모듬초밥"]
            self.mPrice = ["15,000 원", "15,000 원", "15,000 원"]
            self.mImg = ["min0.png", "jap.png", "min2.png"]
        } else if receiveName == "하다식당" {
            self.mName = ["안심하다(대표)", "등심하다(대표)", "소바하다+한입 안심(대표)", "카레우동+한입 안심"]
            self.mPrice = ["12,000 원", "11,000 원", "9,000 원", "9,000"]
            self.mImg = ["ha0.png", "ha1.png", "ha2.png", "ha3.png"]
        } else if receiveName == "피자굽는 오빠" {
            self.mName = ["학생A세트(피자+볶음밥)", "학생B세트(피자+파스타)", "학회장세트(피자+즉석떡볶이)", "조교세트(피자+즉석떡볶이+볶음밥)"]
            self.mPrice = ["24,000 원", "25,000 원", "31,000 원", "39,000"]
            self.mImg = ["pi0.png", "pi1.png", "pi2.png", "pi3.png"]
        } else if receiveName == "밥은화" {
            self.mName = ["직화 돼지숙주 덮밥", "직화 간장제육 덮밥"]
            self.mPrice = ["7,000 원", "7,000 원"]
            self.mImg = ["bap0.png", "bap1.png"]
        }
    }
    
    
    
    func receiveName(_ name:String) {
        receiveName = name
    }
    
    func receiveImg(_ img:String){
        receiveImg = img
    }
    
//    func menuDetail() {
//        switch receiveName! {
//        case "인덕대학교 푸드코트":
//            menu = ["오므라이스", "육회 비빔밥", "새우튀김 알밥"]
//            price = ["3,800 원", "3,800 원", "3,800 원"]
//            mImg = ["korean.png", "korean.png", "korean.png"]
//        case "민들레 초밥":
//            menu = ["오므라이스", "육회 비빔밥", "새우튀김 알밥"]
//            price = ["3,800 원", "3,800 원", "3,800 원"]
//            mImg = ["korean.png", "korean.png", "korean.png"]
//
//        default:
//            return
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
