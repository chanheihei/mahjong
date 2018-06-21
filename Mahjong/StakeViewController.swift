//
//  StakeViewController.swift
//  Mahjong
//
//  Created by King Chan on 18/05/2018.
//  Copyright © 2018 King Chan. All rights reserved.
//

import UIKit

class StakeViewController: UIViewController, UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		if section == 0 {return 20}
		return 0
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foobar", for: indexPath)
		cell.backgroundColor = UIColor.cyan
		return cell
	}

	@IBOutlet var pointsTable: UICollectionView!
	var pointsTableValues = [1:2, 2:4, 3:8]
	override func viewDidLoad() {
        super.viewDidLoad()
		pointsTable.dataSource = self
		pointsTable.register(PointsTableViewCell.self, forCellWithReuseIdentifier: "foobar")
		pointsTable.reloadData()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
