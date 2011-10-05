//
//  MyViewController.m
//  MyFirstIos
//
//  Created by LCC on 11-9-18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "MyViewController.h"

@implementation MyViewController

@synthesize textField;
@synthesize label;
@synthesize urlField;
@synthesize myWevView;
@synthesize string;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (IBAction)changeGreeting:(id)sender {
    
    NSLog(@"========================inter3");
    self.string = textField.text;
    
    NSString *nameString = string;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    NSLog(@"========================inter5");
    label.text = greeting;
    
    NSLog(@"greeting = %@", greeting);
    
    NSLog(@"label = %@", label.text);


    [greeting release];
}

- (IBAction)goWebsite:(id)sender{
    NSString *urlString=urlField.text;
     NSString *myurl = [[NSString alloc] initWithFormat:@"http://%@", urlString];
    
     NSLog(@"url = %@", myurl);
    
     [myWevView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:myurl]]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    
    
    NSLog(@"========================inter4");
    
    if (theTextField == textField ) {
        [textField resignFirstResponder];
    }
    if ( theTextField==urlField) {
        [urlField resignFirstResponder];
    }
    return YES;
}



- (void)dealloc {
    [textField release];
    [label release];
    [string release];
    [super dealloc];
}

@end
