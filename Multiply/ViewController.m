//
//  ViewController.m
//  Multiply
//
//  Created by Sapan Bhuta on 5/12/14.
//  Copyright (c) 2014 SapanBhuta. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)onSlide:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    float myFloat = slider.value;
    int val = myFloat;
    self.myMultiplier.text = [NSString stringWithFormat:@"%i", val];
}

- (IBAction)onCalculateButtonPressed:(id)sender
{
    int numb = [self.myNumber.text intValue];
    int mult = [self.myMultiplier.text intValue];
    int answer = numb * mult;
    self.myAnswer.text = [NSString stringWithFormat:@"%d",answer];
    if (answer>20)
    {
        self.view.backgroundColor = [UIColor greenColor];
    }

    if (answer % 3 == 0 && answer % 5 == 0)
    {
        self.myAnswer.text = @"fizzbuzz";
    }
    else if (answer%3==0)
    {
        self.myAnswer.text = @"fizz";
    }
    else if (answer%5==0)
    {
        self.myAnswer.text = @"buzz";
    }

    [self.myNumber resignFirstResponder];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
