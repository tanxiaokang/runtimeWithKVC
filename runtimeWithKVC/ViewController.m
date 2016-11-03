//
//  ViewController.m
//  runtimeWithKVC
//
//  Created by 三少 on 16/11/3.
//  Copyright © 2016年 tan. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>
#import "Person.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [Person new];
    
    //runtime 获取变量名
    unsigned int count;
    Ivar *personList = class_copyIvarList([UILabel class], &count);
    
    for (int i =0; i<count; i++) {
        Ivar personIvar = personList[i];
        const char *ivarName = ivar_getName(personIvar);
        NSLog(@"personIvarName:%@",[NSString stringWithUTF8String:ivarName]);
    }
    
    //KVC 赋值
    [person setValue:@"23" forKey:@"age"];          //此处取_age和age结果一直,原理不明
    NSString *personAge = [person valueForKey:@"age"];
    NSLog(@"personAge:%@",personAge);
    
    [person setValue:@"康康" forKey:@"name"];
    NSString *personName = [person valueForKey:@"name"];
    NSLog(@"personName:%@",personName);

}



@end
