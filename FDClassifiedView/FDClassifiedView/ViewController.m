//
//  ViewController.m
//  FDClassifiedView
//
//  Created by sino on 2017/7/7.
//  Copyright © 2017年 Evelyn. All rights reserved.
//

#import "ViewController.h"
#import "FDClasSubView.h"
#import "FDClassifiedView.h"
@interface ViewController ()
{
    FDClassifiedView *classifyView ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    classifyView = [[FDClassifiedView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 60)];
    classifyView.typeNameArray = @[@"保险1", @"保险2", @"保险3", @"保险4"];
    classifyView.valueArray = @[@"0元", @"0元", @"0元", @"0元"];
    classifyView.columnValue = 3;
    classifyView.selectColorArray = @[[UIColor redColor], [UIColor blueColor], [UIColor orangeColor], [UIColor purpleColor]];
    classifyView.unSelectColor = [UIColor brownColor];
    [self.view  addSubview:classifyView];
    
    
    UIButton *bu = [UIButton buttonWithType:UIButtonTypeCustom];
    [bu setFrame:CGRectMake(80, 300, 60, 50)];
    bu.backgroundColor = [UIColor lightGrayColor];
    [bu addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view  addSubview:bu];
    
    UIButton *bu1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [bu1 setFrame:CGRectMake(80, 360, 60, 50)];
    bu1.backgroundColor = [UIColor lightGrayColor];
    [bu1 addTarget:self action:@selector(buttonAction1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view  addSubview:bu1];
    
}

- (void)buttonAction:(UIButton *)sender {
    [classifyView selectClassifiedSubViewWithIndex:2 vlaue:@"100元"];
}

- (void)buttonAction1:(UIButton *)sender {
//    [classifyView selectClassifiedSubViewWithIndex:3 vlaue:@"150元"];
    
    [classifyView selectClassifiedSubViewWithIndex:@[@0, @3] value:@[@"150元",@"150元"]];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
