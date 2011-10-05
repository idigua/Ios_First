//
//  MyViewController.h
//  MyFirstIos
//
//  Created by LCC on 11-9-18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <mapKit/MapKit.h>

@interface MyViewController : UIViewController <UITextFieldDelegate>  {
    UITextField *textField;
    UITextField *urlField;
    UILabel *label;
    NSString *string;
    UIWebView *myWevView;
}
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UITextField *urlField;
@property (nonatomic, retain) IBOutlet UIWebView *myWevView;
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, copy) NSString *string;
- (IBAction)changeGreeting:(id)sender;
- (IBAction)goWebsite:(id)sender;

@end
