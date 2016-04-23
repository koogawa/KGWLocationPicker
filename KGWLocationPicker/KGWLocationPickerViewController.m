//
//  KGWLocationPickerViewController.m
//  KGWLocationPicker
//
//  Created by koogawa on 2016/04/23.
//  Copyright © 2016 koogawa. All rights reserved.
//

#import "KGWLocationPickerViewController.h"

@interface KGWLocationPickerViewController ()

@property (nonatomic, strong) MKMapView *mapView;
@property (nonatomic, copy) KGWLocationPickerSuccessReturnBlock success;
@property (nonatomic, copy) KGWLocationPickerFauilreBlock failure;

@end

@implementation KGWLocationPickerViewController

- (id)initWithSucess:(KGWLocationPickerSuccessReturnBlock)success onFailure:(KGWLocationPickerFauilreBlock)failure;
{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        // Custom initialization
        self.success = success;
        self.failure = failure;
    }
    return self;
}

- (void)loadView
{
    [super loadView];

    self.mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0,
                                                               0,
                                                               self.view.frame.size.width,
                                                               self.view.frame.size.height)];
    self.mapView.showsUserLocation = YES;
    //    mapView_.delegate = self;
    self.mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view addSubview:self.mapView];
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    //[self.navigationController setToolbarHidden:NO animated:NO];

    UIBarButtonItem *cancel =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                  target:self
                                                  action:@selector(didTapCancelButton)];
    self.navigationItem.leftBarButtonItem = cancel;

    UIBarButtonItem *doneButton =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                  target:self
                                                  action:@selector(didTapDoneButton)];
    self.navigationItem.rightBarButtonItem = doneButton;

    UIBarButtonItem *currentButton =
    [[UIBarButtonItem alloc] initWithBarButtonSystemItem:100
                                                  target:self
                                                  action:@selector(didTapCurrentButton)];

    [self setToolbarItems:@[currentButton] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private method

- (void)didTapCancelButton
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didTapDoneButton
{
    if (self.success) {
        self.success(self.mapView.centerCoordinate);
    }

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didTapCurrentButton
{
}

@end
