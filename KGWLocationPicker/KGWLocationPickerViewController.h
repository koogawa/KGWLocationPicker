//
//  KGWLocationPickerViewController.h
//  KGWLocationPicker
//
//  Created by koogawa on 2016/04/23.
//  Copyright © 2016 koogawa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

typedef void (^KGWLocationPickerSuccessReturnBlock)(CLLocationCoordinate2D coordinate);
typedef void (^KGWLocationPickerFauilreBlock)(NSError* error);

@protocol ConfigTableViewControllerDelegate <NSObject>
- (void)configClosed;
@end

@interface KGWLocationPickerViewController : UIViewController <MKMapViewDelegate>

- (id)initWithSucess:(KGWLocationPickerSuccessReturnBlock)sucess onFailure:(KGWLocationPickerFauilreBlock)failure;

@end
