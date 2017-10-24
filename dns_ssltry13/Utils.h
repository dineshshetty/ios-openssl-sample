//
//  Utils.h
//  dns_ssltry13
//
//  Created by dns on 2/17/17.
//  Copyright © 2017 dns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Utils : NSObject

+ (void)showAlertMessageWithTitle:(NSString *)message title:(NSString*)title viewController:(UIViewController*)viewController handler:(void (^ __nullable)(UIAlertAction *action))handler ;
@end
