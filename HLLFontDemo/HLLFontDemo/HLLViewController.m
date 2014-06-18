//
//  HLLViewController.m
//  HLLFontDemo
//
//  Created by CouldHll on 13-10-25.
//  Copyright (c) 2013年 CouldHll. All rights reserved.
//

#import "HLLViewController.h"

#import "UIFont+HLLFont.h"

@interface HLLViewController ()

@end

@implementation HLLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	   
    // init label
    UILabel *label=[[UILabel alloc] init];
    label.font=[UIFont fontWithName:@"Helvetica" size:18];
    label.text=@"Only for testing.";
    
    // add label to view
    [self.view addSubview:label];
    [label sizeToFit];
    
    // change font
    label.font=[UIFont fontWithFont:label.font style:UIFONT_BOLD];
    
//    NSMutableArray *fontNames = [[NSMutableArray alloc] init];
//    NSArray *fontFamilyNames = [UIFont familyNames];
//    for (NSString *familyName in fontFamilyNames)
//    {
//        NSArray *names = [UIFont fontNamesForFamilyName:familyName];
//        [fontNames addObjectsFromArray:names];
//        NSLog(@"Font Family Name = %@", familyName);
//        NSLog(@"Font Names = %@", names);
//        NSLog(@"==============================");
//    }
//    NSLog(@"All Font Names = %@", fontNames);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
