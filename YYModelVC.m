//
//  YYModelVC.m
//  YYKit_ywt
//
//  Created by YangWeitian on 15/12/23.
//  Copyright © 2015年 YangWeitian. All rights reserved.
//

#import "YYModelVC.h"
#import "YYKit.h"

///////////////////////////////////////////////////////////////////////
#pragma mark Simple Object Example

@interface YYBook : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) UInt64 pages;
@property (nonatomic, strong) NSDate *publishDate;
@end

static void SimpleObjectExamole() {
    YYBook *book = [YYBook modelWithJSON:@""];
}


@implementation YYModelVC

- (void)runExample {
    SimpleObjectExamole();
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    [self runExample];
}

@end
