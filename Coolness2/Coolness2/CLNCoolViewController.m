// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolViewController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolViewController () <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@end

@implementation CLNCoolViewController

- (IBAction)addCell {
    NSLog(@"In %s", __func__);
    CLNCoolViewCell *newCell = [[CLNCoolViewCell alloc] init];
    newCell.text = self.textField.text;
    newCell.backgroundColor = UIColor.systemGreenColor;
    [self.contentView addSubview:newCell];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self.textField resignFirstResponder];
    return YES;
}

// MARK: - Examples

- (void)loadView1 {
    [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:self options:nil];
}

- (void)loadView2 {
    NSArray *topLevelObjs = [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:nil options:nil];
    self.view = topLevelObjs.firstObject;
}

/// Responder chain experiement
/// - Parameters:
///   - touches: the set of touches
///   - event: the event
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"In %s", __func__);
    // Call to super forwards up the responder chain.
    [super touchesBegan:touches withEvent:event];
}

//- (void)viewDidLoad {
//    CLNCoolViewCell *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(50, 100, 160, 40)];
//    CLNCoolViewCell *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(70, 160, 160, 40)];
//
//    [self.contentView addSubview:subview1];
//    [self.contentView addSubview:subview2];
//
//    subview1.text = @"Hello World! 🌎🌏🌍";
//    subview2.text = @"Cool View Cells Rock! 🍾🥂";
//
//    subview1.backgroundColor = UIColor.systemPurpleColor;
//    subview2.backgroundColor = UIColor.systemOrangeColor;
//}

@end
