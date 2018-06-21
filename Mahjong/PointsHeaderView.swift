//
//  PointsHeaderView.swift
//  Mahjong
//
//  Created by King Chan on 21/06/2018.
//  Copyright © 2018 King Chan. All rights reserved.
//

import UIKit

class PointsHeaderView: UIView {
	@IBOutlet var pointsLabel: UILabel!
	@IBOutlet var costLabel: UILabel!

	override func awakeFromNib() {
		super.awakeFromNib()
		costLabel.text = "abc"
	}
}
