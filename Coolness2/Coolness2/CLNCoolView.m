// Copyright (C) 2023 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolView.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolView() <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIView *contentView;
@property (strong, nonatomic) IBOutlet UITextField *textField;
@end

@implementation CLNCoolView

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

@end
