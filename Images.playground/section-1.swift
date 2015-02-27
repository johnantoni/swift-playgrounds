// Shows an image of a kitten

import UIKit

var view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
// This will make it easier to see in an Xcode playground
view.backgroundColor = UIColor.lightGrayColor()

let url = NSURL(string: "http://placekitten.com/240/320")!
let data = NSData(contentsOfURL: url)!
let image = UIImage(data: data)

var imageView = UIImageView(image: image)
// Try ScaleToFill, ScaleAspectFit, and ScaleAspectFill to see their effects
imageView.contentMode = UIViewContentMode.ScaleAspectFit
// Don't forget to set clipsToBounds so it doesn't draw outside the image view's bounds!
imageView.clipsToBounds = true
imageView.frame = CGRect(x: 0, y: 80, width: 320, height: 320)
view.addSubview(imageView)

view
