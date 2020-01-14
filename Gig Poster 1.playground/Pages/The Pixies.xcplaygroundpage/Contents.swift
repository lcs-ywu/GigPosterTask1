//: # Gig Poster 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![pixies-no-grid](pixies-no-grid.png "Pixies")
 ![pixies-with-grid](pixies-with-grid.png "Pixies")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You may use the color constants created below to obtain the correct colors.
 
 Remember that you can refer to the [Canvas class documentation](https://www.russellgordon.ca/canvasgraphics/documentation/classes/canvas), as needed.
 */

// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// COLORS
let offWhite = Color(hue: 92, saturation: 6, brightness: 89, alpha: 100)
let limeGreen = Color(hue: 122, saturation: 77, brightness: 75, alpha: 100)

// Begin your solution here...

let black = Color(hue:0, saturation:0, brightness:0, alpha:100)
canvas.fillColor = black
canvas.drawRectangle(at: Point(x:0, y:0), width:400, height:600)

canvas.fillColor = limeGreen
canvas.drawRectangle(at: Point(x:0, y:400), width:400, height:200)

canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = limeGreen
for k in stride(from: 0, through: 400, by: 40){
    for l in stride(from: 0, through: 400, by: 40){
        canvas.drawEllipse(at: Point(x: k, y: l), width: 35, height: 35, borderWidth: 100)
    }
}
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = offWhite
var n = 1
for e in stride(from: 360, through: 40, by: -40){
    for f in 1...n {
        canvas.drawEllipse(at: Point(x: 40*f, y: e), width: 35, height: 35, borderWidth: 100)
    }
    n+=1
}
canvas.drawText(message: "pixies", at: Point(x:10, y:410), size: 70)
canvas.drawText(message: "saturday", at: Point(x:15, y:550), size: 10)
canvas.drawText(message: "december 13 1986", at: Point(x:15, y:535), size: 10)
canvas.drawText(message: "9 pm over 21", at: Point(x:15, y:520), size: 10)
canvas.drawText(message: "at the rat", at: Point(x:280, y:550), size: 10)
canvas.drawText(message: "528 commonwealth", at: Point(x:280, y:535), size: 10)
canvas.drawText(message: "boston, mass.", at: Point(x:280, y:520), size: 10)
canvas.textColor = offWhite
canvas.drawText(message: "with", at: Point(x:280, y:455), size: 15)
canvas.drawText(message: "throwing muses", at: Point(x:280, y:440), size: 15)
canvas.drawText(message: "big dipper", at: Point(x:280, y:425), size: 15)

canvas.lineColor = offWhite
for m in 1...7 {
    canvas.drawLine(from: Point(x:m*50, y:0), to: Point(x:m*50, y: 600))
}

for n in 1...11 {
    canvas.drawLine(from: Point(x:0,y:n*50), to: Point(x:400,y:n*50))
}

/*:
 ## Use Source Control
 
 Remember to commit and push your work before 11:30 AM on Monday, January 13, 2020, please.

 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas

