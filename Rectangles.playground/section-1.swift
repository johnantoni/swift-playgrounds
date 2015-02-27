// Playground - noun: a place where people can play

import UIKit

// Create a view the size of an iPhone 4
var parentView = UIView(frame: CGRectMake(0, 0, 320, 480))

// Set its background colour to blue
parentView.backgroundColor = UIColor.blueColor()

// Create a subview that is red and add it to parentView
var redView = UIView(frame: CGRectMake(20, 20, 200, 200))
redView.backgroundColor = UIColor.redColor()
parentView.addSubview(redView)

// Create another subview that is green and add it to parentView
var greenView = UIView(frame: CGRectMake(40, 40, 200, 200))
greenView.backgroundColor = UIColor.greenColor()
parentView.addSubview(greenView)

// Because greenView was added second, it will overlap redView

// Remember: View menu -> Assistant Editor -> Show Assistant Editor
// then click the + button that shows up when you hover over UIView on the right
parentView
