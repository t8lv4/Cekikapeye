//
//  PeopleTableViewController.swift
//  Cekikapeye
//
//  Created by Ambroise COLLON on 24/05/2018.
//  Copyright © 2018 OpenClassrooms. All rights reserved.
//

import UIKit

class PeopleViewController: UIViewController {
    @IBOutlet weak var peopleTextView: UITextView!
    @IBOutlet weak var peopleTextField: UITextField!

    @IBAction func dismiss() {
        dismiss(animated: true, completion: nil)
    }
}

extension PeopleViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        addPerson()
        return true
    }

    private func addPerson() {
        guard let personName = peopleTextField.text,
            var people = peopleTextView.text else {
                return
        }

        people += personName + "\n"
        peopleTextView.text = people
        peopleTextField.text = ""

        // TODO: Save person
    }
}
