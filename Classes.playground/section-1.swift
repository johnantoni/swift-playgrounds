// Playground - noun: a place where people can play

import UIKit

class MyView: UIView {
    var label1 = UILabel()
    var label2 = UILabel()
    var spacer = UIView()

    override init(frame: CGRect) {
        super.init(frame: frame)

        self.label1.text = "Label One"
        self.label1.font = UIFont.boldSystemFontOfSize(48.0)
        self.label2.text = "Label Two"
        self.label2.font = UIFont.boldSystemFontOfSize(48.0)

        self.spacer.backgroundColor = UIColor.greenColor()

        self.addSubview(self.label1)
        self.addSubview(self.label2)
        self.addSubview(self.spacer)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let bounds = self.bounds

        self.label1.sizeToFit()
        self.label2.sizeToFit()

        var rect = self.label1.frame
        rect.origin.x = 40.0
        rect.origin.y = 0.0
        self.label1.frame = rect

        // a += b is the same as a = a + b
        rect.origin.y += rect.size.height + 20.0
        self.label2.frame = rect

        let top = rect.origin.y + rect.size.height

        var spaceRect = bounds
        spaceRect.origin.y = top
        spaceRect.size.height -= top + 20.0
        spaceRect.origin.x = 20.0
        spaceRect.size.width -= 40.0

        self.spacer.frame = spaceRect

    }
}

var view = MyView(frame: CGRectMake(0, 0, 400, 320))
view.backgroundColor = UIColor.lightGrayColor()


view

view.label1.frame



