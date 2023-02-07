//
//  TableViewController.swift
//  mat-zip
//
//  Created by 라효은 on 2023/02/07.
//

import UIKit

var name = ["인덕대학교 푸드코트", "민들레초밥", "하다식당", "피자굽는 오빠", "밥은화"]
var itemsImageFile = ["duk.png", "min.jpeg", "2.png", "pi.png", "bap.png"]
var itemsDetail = ["학식당", "초밥집", "돈까스 전문점", "이탈리아 음식", "덮밥"]
class TableViewController: UITableViewController {
    
    @IBOutlet var tvListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        return name.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        let text: String = name[indexPath.row]
        let ex: String = itemsDetail[indexPath.row]
        cell.myName?.text = text
        cell.myEx?.text = ex
        cell.myImg.image = UIImage(named: itemsImageFile[indexPath.row])
        // Configure the cell...

        return cell
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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "sgDetail" {
                let cell = sender as! UITableViewCell
                let indexPath = self.tvListView.indexPath(for: cell)
                let detailView = segue.destination as! DetailViewController
                detailView.receiveName(name[(indexPath?.row)!])
                detailView.receiveImg(itemsImageFile[(indexPath?.row)!])
            }
        }
}


/*
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "sgDetail" {
             let cell = sender as! UITableViewCell
             let indexPath = self.tvListView.indexPath(for: cell)
             let detailView = segue.destination as! DetailViewController
             detailView.receiveName(name[(indexPath?.row)!])
         }
         }
     }
 
 
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "mySegue"{
             if let destination = segue.destination as?
                 nextViewController {
                 if let selectdeIndex =
                     self.tableView.indexPathForSelectedRow?.row {
                         
                         destination.prepareImage = img[selectdeIndex]
                         destination.prepareLabel = label[selectdeIndex]
                 }
             }
         }
     }
 */
