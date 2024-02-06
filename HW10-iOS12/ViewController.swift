import UIKit

class ViewController: UIViewController {

    let label = UILabel()
    let button = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup label
        label.frame = CGRect(x: 50, y: 100, width: 200, height: 20)
        label.text = "Миша опоздал!"
        label.textAlignment = .center
        view.addSubview(label)

        // Setup button
        button.frame = CGRect(x: 50, y: 150, width: 200, height: 50)
        button.setTitle("Казнить!", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

        // Button styling
        button.backgroundColor = UIColor.systemBlue // Add a background color
        button.setTitleColor(UIColor.white, for: .normal) // Change the text color to white for better contrast
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18) // Make the font bold and slightly larger

        // Adding border
        button.layer.borderColor = UIColor.darkGray.cgColor // Set the border color
        button.layer.borderWidth = 1.0 // Set the border width

        // Rounding the corners
        button.layer.cornerRadius = 10 // Round the corners

        // Adding shadow (optional)
        button.layer.shadowColor = UIColor.black.cgColor // Set the shadow color
        button.layer.shadowOffset = CGSize(width: 0, height: 2) // Set the shadow offset
        button.layer.shadowRadius = 4 // Set the shadow radius
        button.layer.shadowOpacity = 0.25 // Set the shadow opacity

        view.addSubview(button)
        
        // Set the background color of the view
        view.backgroundColor = .white
    }

    @objc func buttonTapped() {
        label.text = "Ну вот зачем так? :("
    }
}


