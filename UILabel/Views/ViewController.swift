import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameTesxtfield: UITextField!
    
    @IBOutlet weak var passwordTesxtfield: UITextField!
    
    @IBOutlet weak var alertLabel : UILabel!
    
    @IBOutlet weak var activityIndıcator: UIActivityIndicatorView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        alertLabel.isHidden = true
    }
    
    @IBAction func enterButton(_ sender: Any) {
        
        if usernameTesxtfield.text == "furkan", passwordTesxtfield.isHidden {
            passwordTesxtfield.isHidden = false
            alertLabel.isHidden = false
            alertLabel.textColor = UIColor.systemGreen
            alertLabel.text = "Kullanıcı isminiz doğru lütfen şifrenizi giriniz"
            
        } else {
            if usernameTesxtfield.text != "furkan"{
                alertLabel.isHidden = false
                alertLabel.textColor = UIColor.systemRed
                alertLabel.text = "Kullanıcı ismi hatalı"
            }
            else if passwordTesxtfield.isHidden == false, passwordTesxtfield.text == "123456" {
                alertLabel.isHidden = true
                activityIndıcator.startAnimating()
            } else{
                alertLabel.textColor = UIColor.systemRed
                alertLabel.text = "Password hatalı"
            }
        }
    }
}
