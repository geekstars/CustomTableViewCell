//
//  MasterTableVC.swift
//  CustomTableViewCell
//
//  Created by Hoàng Minh Thành on 9/7/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class MasterTableVC: UITableViewController {
    var arrayData : [DataItem]!
    var detailVC: DetailVC!
    override func viewDidLoad() {
        super.viewDidLoad()
        let item1: DataItem = DataItem.init(nameFC: "Manchester United", nameStd: "Old Trafford", imgLogo: "manchester-united.png", imgStar: 5)
        let item2: DataItem = DataItem.init(nameFC: "Arsenal", nameStd: "Emirates", imgLogo: "arsenal.png", imgStar: 5)
        let item3: DataItem = DataItem.init(nameFC: "Aston Villa", nameStd: "Villa Park", imgLogo: "aston-villa.png", imgStar: 3)
        let item4: DataItem = DataItem.init(nameFC: "Liverpool", nameStd: "Anfield", imgLogo: "liverpool.png", imgStar: 5)
        let item5: DataItem = DataItem.init(nameFC: "Stoke City", nameStd: "Britannia", imgLogo: "stoke-city.png", imgStar: 2)
        let item6: DataItem = DataItem.init(nameFC: "West Ham United", nameStd: "Upton Park", imgLogo: "west-ham.png", imgStar: 4)
        let item7: DataItem = DataItem.init(nameFC: "Norwich City", nameStd: "Carrow Road", imgLogo: "norwich-city.png", imgStar: 3)
        let item8: DataItem = DataItem.init(nameFC: "A.F.C. Bournemouth", nameStd: "Dean Court", imgLogo: "bournemouth.png", imgStar: 2)
        let item9: DataItem = DataItem.init(nameFC: "Southampton", nameStd: "St Mary's Stadium", imgLogo: "southampton.png", imgStar: 3)
        let item10: DataItem = DataItem.init(nameFC: "Manchester City", nameStd: "Etihad", imgLogo: "manchester-city.png", imgStar: 4)
        let item11: DataItem = DataItem.init(nameFC: "Leicester City", nameStd: "King Power", imgLogo: "leicester-city.png", imgStar: 3)
        let item12: DataItem = DataItem.init(nameFC: "Everton", nameStd: "Goodison Park", imgLogo: "everton.png", imgStar: 4)
        let item13: DataItem = DataItem.init(nameFC: "West Bromwich Albion", nameStd: "The Hawthorns", imgLogo: "west-bromwich.png", imgStar: 3)
        let item14: DataItem = DataItem.init(nameFC: "Swansea City", nameStd: "Liberty", imgLogo: "swansea-city.png", imgStar: 3)
        let item15: DataItem = DataItem.init(nameFC: "Sunderland", nameStd: "Stadium of Light", imgLogo: "sunderland.png", imgStar: 3)
        let item16: DataItem = DataItem.init(nameFC: "Chelsea", nameStd: "Stamford Bridge", imgLogo: "chelsea.png", imgStar: 5)
        let item17: DataItem = DataItem.init(nameFC: "Watford", nameStd: "Vicarage Road", imgLogo: "watford.png", imgStar: 2)
        let item18: DataItem = DataItem.init(nameFC: "Tottenham Hotspur", nameStd: "White Hart Lane", imgLogo: "tottenham-hotspur.png", imgStar: 4)
        let item19: DataItem = DataItem.init(nameFC: "Crystal Palace", nameStd: "Selhurst Park", imgLogo: "crystal-palace.png", imgStar: 3)
        let item20: DataItem = DataItem.init(nameFC: "Newcastle United", nameStd: "St. James' Park", imgLogo: "newcastle-united.png", imgStar: 3)
        arrayData = [item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13,item14,item15,item16,item17,item18,item19,item20]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayData.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! CustomCellMaster
        let cell = NSBundle.mainBundle().loadNibNamed("CustomTVCell", owner: self, options: nil)?.first as! CustomTVCell
        let item: DataItem = arrayData[indexPath.row]
        cell.labelStadium.text = item.nameStadium
        cell.labelFootballClub.text = item.nameFootballClub
        cell.imageViewLogo.image = item.imageLogo
        cell.imageViewStarRating.image = item.imageStarRating

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        detailVC =  self.storyboard?.instantiateViewControllerWithIdentifier("DetailVC") as! DetailVC
        let item:DataItem = arrayData[indexPath.row]
        detailVC.stringTitle = item.nameStadium
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
