//
//  ViewController.swift
//  Prework
//
//  Created by Mìke MK on 31/8/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBOutlet weak var PetCountStepper: UIStepper!
    
    @IBOutlet weak var favoriteColorTextField: UITextField!
    @IBOutlet weak var hometownTextField: UITextField!
    @IBOutlet weak var majorTextField: UITextField!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBOutlet weak var MorePets_Switch: UISwitch!
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let colors: [UIColor] = [
            .systemBlue,
            .systemGreen,
            .systemOrange,
            .systemPurple,
            .systemPink,
            .systemTeal,
            .systemIndigo
        ]
        
        let randomColor = colors.randomElement() ?? .systemBackground
        view.backgroundColor = randomColor
        
        // Show a brief alert to confirm color change
        let alert = UIAlertController(title: "Background Changed!", message: "Your background color has been updated!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cool!", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func showAdditionalInfo(_ sender: UIButton) {
        let additionalInfo = """
        Additional Information:
        
        Favorite Color: \(favoriteColorTextField.text ?? "Not specified")
        Hometown: \(hometownTextField.text ?? "Not specified")
        Major: \(majorTextField.text ?? "Not specified")
        Current Year: \(yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex) ?? "Not specified")
        Number of Pets: \(numberOfPetsLabel.text ?? "0")
        Wants More Pets: \(MorePets_Switch.isOn ? "Yes" : "No")
        """
        
        let alert = UIAlertController(title: "Additional Details", message: additionalInfo, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Thanks!", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func showFunFact(_ sender: UIButton) {
        let funFacts = [
            "Did you know that \(firstNameTextField.text ?? "you") is studying at \(schoolNameTextField.text ?? "an amazing school")?",
            "\(firstNameTextField.text ?? "This person") has \(numberOfPetsLabel.text ?? "0") pets! That's awesome!",
            "From \(hometownTextField.text ?? "somewhere great") to studying \(majorTextField.text ?? "something interesting") - what a journey!",
            "Favorite color is \(favoriteColorTextField.text ?? "something beautiful") - great choice!",
            "\(firstNameTextField.text ?? "This student") is in their \(yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex) ?? "current") year!"
        ]
        
        let randomFact = funFacts.randomElement() ?? "You're doing great!"
        
        let alert = UIAlertController(title: "Fun Fact!", message: randomFact, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "That's cool!", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {

        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)

        let introduction = "My Name is \(firstNameTextField.text!) \(lastNameTextField.text!) and I go to \(schoolNameTextField.text!). Currently, I am in my \(year!) year and I own \(numberOfPetsLabel.text!) cats. It is \(MorePets_Switch.isOn) that I want more pets, maybe some dogs?."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)

        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)

        alertController.addAction(action)

        present(alertController, animated: true, completion: nil)

        print(introduction)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

