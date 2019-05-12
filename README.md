# Overview - WaveAnimationView

![WaveAnimationView-header-min](https://user-images.githubusercontent.com/44746730/57581092-7295c580-74ed-11e9-8842-220e8299e34e.png)

WaveAnimationView is a library to install wave progress-animation.  
Something looks like below:

| Progress | Loading | Background |
|---|---|---|
| ![sample_1](https://user-images.githubusercontent.com/44746730/57581097-86d9c280-74ed-11e9-99f1-f3d71975d0ca.gif) | ![sample_2](https://user-images.githubusercontent.com/44746730/57581098-86d9c280-74ed-11e9-8683-3b3db94f126d.gif) | ![sample_3](https://user-images.githubusercontent.com/44746730/57581099-86d9c280-74ed-11e9-8ce4-2ccce912b861.gif) |


# Installation

WaveAnimationView is available through CocoaPods and Carthage.   
To install simply add the following line to your Podfile or Cartfile:

### Cocoapods

Add below line to your Podfile:
```
pod "WaveAnimationView"
```
and Run `pod install`,then import it your project:
```
import WaveAnimationView
```

### Carthage
Add below line to your Cartfile:
```
github 'maniCreate/WaveAnimationView'
```
and Run `carthage update`, import its `WaveAnimationView.framework` into your Xcode project.

# How to Use

WaveAnimationView can install to your app just by writting 3 lines as follows:

```swift
import UIKit
import WaveAnimationView

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let wave = WaveAnimationView(frame: CGRect, color: UIColor)
        
        //superView.addSubView(WaveAnimationView)
        
        // 2
        wave.startAnimation()
        
    }
    
    override func viewDidDisAppear() {
        super.viewDidDisAppear(animated)
        
        // 3 - Be sure to read the following Attension!
        wave.stopAnimation()
        
    }
}


```

## ⚠️Attension

WaveAnimationView is animated by ScheduledTimer, not UIView.animate or Core Animation.

```swift
//Start wave Animation
open func startAnimation() {
    timer = Timer.scheduledTimer(timeInterval: 0.035, target: self, selector: #selector(waveAnimation), userInfo: nil, repeats: true)
}    
```

Therefore, Please be sure to call this method at ViewDidDisAppear or deinit in ViewController.
If it isn't called, Memory Leaks occurs by Timer

```swift
open func stopAnimation() {
    timer.invalidate()
}
```

# Options

## Front/Back FillColor

Wave's fillColor is possible to be set fillColors separately.
```swift
let wave = WaveAnimationView(frame: CGRect, frontColor: UIColor, backColor: UIColor)
```
Set one Color
```swift
let wave = WaveAnimationView(frame: CGRect, color: UIColor)
```

## MaskImage

Possible to mask the WaveAnimationView just by setting an image containing Solid and Alpha Areas.
```swift
let wave = WaveAnimationView(frame: CGRect, color: UIColor)
wave.maskImage = UIImage(named: "image name")
```

## Set/GetProgress

Progress are set and gotten in the same way as UIProgressView

・Get Progress
```swift
let wave = WaveAnimationView(frame: CGRect, color: UIColor)
wave.progress = 1.0 //0.0 .. 1.0, default is 0.5
```
・Set Progress
```swift
//Example: UISlider
@IBAction func slide(_ sender: UISlider) {

     self.wave.setProgress(to: sender.value //0.0 .. 1.0)
     
}
```

# License

WaveAnimationView is released under the MIT license.  
Go read the LICENSE file for more information.

# Contact

When you have some opinions or ideas about this library, send me a reply on Twitter!  
Twitter: [@mani_transm](https://twitter.com/mani_transm)
