//
//  AppDelegate.h
//  runtimeWithKVC
//
//  Created by 三少 on 16/11/3.
//  Copyright © 2016年 tan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

