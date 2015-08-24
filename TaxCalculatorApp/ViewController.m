//
//  ViewController.m
//  TaxCalculatorApp
//
//  Created by Juan Camilo Prieto Tobos on 8/14/15.
//  Copyright (c) 2015 Juan Camilo Prieto Tobos. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *priceTextField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double caTax;
@property double chiTax;
@property double nyTax;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGRect frame= self.segmentedControl.frame;
    [self.segmentedControl setFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.width, 100)];
    
    // Do any additional setup after loading the view, typically from a nib.
    self.caTax = 7.5;
    self.chiTax = 9.25;
    self.nyTax = 4.5;
    
}
- (IBAction)onCalculateButtonTapped:(id)sender
{
    NSString *enteredText = self.priceTextField.text;
    double enteredValue = enteredText.intValue;
    
    if (self.segmentedControl.selectedSegmentIndex == 0)
    {
        double result = enteredValue * self.caTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else if (self.segmentedControl.selectedSegmentIndex == 1)
    {
        double result = enteredValue * self.chiTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
    else
    {
        double result = enteredValue * self.nyTax;
        self.resultLabel.text = [NSString stringWithFormat:@"%.2f", result];
    }
}

@end
