//
//  PlayersViewController.swift
//  Mahjong
//
//  Created by King Chan on 18/05/2018.
//  Copyright © 2018 King Chan. All rights reserved.
//

import UIKit

class PlayersViewController: UIViewController {
	@IBOutlet var enterPlayerNamesLabel: UILabel!
	@IBOutlet var playerOneTextField: UITextField!
	@IBOutlet var playerTwoTextField: UITextField!
	@IBOutlet var playerThreeTextField: UITextField!
	@IBOutlet var playerFourTextField: UITextField!

	var playerTextFields: [UITextField]!

    override func viewDidLoad() {
        super.viewDidLoad()
		enterPlayerNamesLabel.text = "Enter player name"
		playerOneTextField.delegate = self
		playerTwoTextField.delegate = self
		playerThreeTextField.delegate = self
		playerFourTextField.delegate = self

		playerOneTextField.returnKeyType = .next
		playerTwoTextField.returnKeyType = .next
		playerThreeTextField.returnKeyType = .next
		playerFourTextField.returnKeyType = .continue

		playerTextFields = [playerOneTextField, playerTwoTextField, playerThreeTextField, playerFourTextField]
	}
}

extension PlayersViewController: UITextFieldDelegate {
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		if let index = playerTextFields.index(of: textField) {
			let nextIndex = index + 1
			if nextIndex < playerTextFields.count {
				// go to next text field when enter
				let nextPlayerTextField  = playerTextFields[nextIndex]
				nextPlayerTextField.becomeFirstResponder()
			} else {
				// enter to go to the next page on player four
				performSegue(withIdentifier: "goToStake", sender: nil)
			}
		}
		return true
	}
}
