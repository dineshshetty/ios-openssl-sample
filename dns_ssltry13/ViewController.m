//
//  ViewController.m
//  dns_ssltry13
//
//  Created by dns on 10/4/17.
//  Copyright © 2017 si. All rights reserved.
//

#import "ViewController.h"

#include <string.h>
#import "Utils.h"
#include <stdlib.h>
#include <openssl/md5.h>

#import <CommonCrypto/CommonDigest.h>

#import "MYBERParser.h"
#import "MYASN1Object.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button_calculate:(id)sender {
    
    
    
    NSString *string = _textfield_input.text;
    unsigned char *thestring = (unsigned char *) [[string dataUsingEncoding:NSASCIIStringEncoding] bytes];
    unsigned char result[MD5_DIGEST_LENGTH];
    unsigned long strlength = [string length];
    NSMutableString *resultString = [NSMutableString string];
    MD5(thestring, strlength, result);
    unsigned int i;
    for (i = 0; i < MD5_DIGEST_LENGTH; i++) {
        [resultString appendFormat:@"%02x", result[i]];
    }
    NSLog(@"%@", [resultString copy]);
    [self showAlertMessageWithTitle:[resultString copy] title:@"MD5 Hash" handler:^(UIAlertAction *action) {}];
    
}


- (void)showAlertMessageWithTitle:(NSString*)message title:(NSString*)title handler:(void (^ __nullable)(UIAlertAction *action))handler {
    
    [self.view resignFirstResponder];
    [Utils showAlertMessageWithTitle:message title:title viewController:self handler:handler];
}
@end
