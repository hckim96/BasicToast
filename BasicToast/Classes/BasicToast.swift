import UIKit

@available (iOS 13.0, *)
open class BasicToast {
    public enum pos {
        case top
        case middle
        case bottom
    }
    
    public static func show(self: UIViewController, message: String, duration: TimeInterval = 5.0, position: pos = .bottom, font: UIFont = UIFont.systemFont(ofSize: 14.0)) {
        var yy:CGFloat
        switch position {
        case .top:
            yy = 100
        case .middle:
            yy = self.view.frame.size.height/2
        case .bottom:
            yy = self.view.frame.size.height-100
            
        }
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 150, y: yy, width: 300, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: duration, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}
