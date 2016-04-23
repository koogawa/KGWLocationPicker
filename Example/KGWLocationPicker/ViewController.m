//
//  ViewController.m
//  KGWLocationPicker
//
//  Created by koogawa on 2016/04/23.
//  Copyright © 2016 koogawa. All rights reserved.
//

#import "ViewController.h"
#import "KGWLocationPickerViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *locationLabel;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didTapSelectLocationButton:(id)sender
{
    __weak typeof(self) weakSelf = self;

    KGWLocationPickerViewController *viewController =
    [[KGWLocationPickerViewController alloc] initWithSucess:^(CLLocationCoordinate2D coordinate) {
        weakSelf.locationLabel.text = [NSString stringWithFormat:@"%f, %f", coordinate.latitude, coordinate.longitude];
    }
                                                  onFailure:nil];

    UINavigationController *navigationController =
    [[UINavigationController alloc] initWithRootViewController:viewController];
    [self presentViewController:navigationController
                       animated:YES
                     completion:nil];
}

@end
