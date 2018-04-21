//
//  ViewController.m
//  Bill Splitter
//
//  Created by Mike Cameron on 2018-04-21.
//  Copyright © 2018 Mike Cameron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UISlider *peopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *billLabelOutput;
@property (weak, nonatomic) IBOutlet UILabel *peopleLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.peopleLabel.text = @"2";
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calculateSplitAmount:(UIButton *)sender {
    float curNum = [self.billTextField.text floatValue];
    int people = [self.peopleLabel.text intValue];
    float perNum = curNum / people;
//    NSNumber perNSnum = @(perNum);
    NSString *output = [NSNumberFormatter localizedStringFromNumber:@(perNum) numberStyle:NSNumberFormatterCurrencyStyle];
    self.billLabelOutput.text = output;
    }

- (IBAction)peopleSlider:(id)sender {
        self.peopleLabel.text = [NSString stringWithFormat:@"%.0f", self.peopleSlider.value];
}


@end
