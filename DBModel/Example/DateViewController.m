//
//  DateViewController.m
//  DBModel
//
//  Created by DaBin on 2017/7/10.
//  Copyright © 2017年 DaBin. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController


- (void)valeTransformer:(id)sender{
    NSLog(@"%s",__func__);
    NSError *error;
    NSString *textFileContents = [NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cashier 2" ofType:@"json"] encoding:NSUTF8StringEncoding error:&error];
    if (textFileContents == nil) {
        DBModelLog(@"Error reading text file. %@", [error localizedFailureReason]);
        return;
    }
    _textView.text = textFileContents;
    
//    PersonDataModel *person = [PersonDataModel DB_modelWithJson:textFileContents];
//    NSLog(@"person:\n%@",person);
}

@end
