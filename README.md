# KGWLocationPicker

Simple location picker with a built in maps. The selected item can be returned to the calling controller as a `CLLocationCoordinate2D`.

![](./demo.gif)

## Usage

1. Link `CoreLocation.framework` and `MapKit.framework` to your project.
2. Fill in `NSLocationWhenInUseUsageDescription` in your Info.plist if you use KGWLocationPicker on iOS 8 and above.
3. Include the `KGWLocationPickerViewController.h` header
4. Initialise the KGWLocationPicker
5. Push the controller

```obj-c
KGWLocationPickerViewController *viewController =
[[KGWLocationPickerViewController alloc] initWithSucess:^(CLLocationCoordinate2D coordinate) {
    NSLog(@"Lat, Lng = %f, %f", coordinate.latitude, coordinate.longitude);
}
                                              onFailure:nil];
```

## Installation

KGWLocationPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "KGWLocationPicker"
```


## Requirements

KGWLocationPicker requires iOS 7.0 and above.

## Creator

[Kosuke Ogawa](https://twitter.com/koogawa)
 
## License

KGWLocationPicker is available under the MIT license. See the LICENSE file for more info.


 
