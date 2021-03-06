//
//  ShowViewController.m
//  maxfun
//
//  Created by Hampton Catlin on 27/07/09.
//  Copyright 2009 Wikimedia Foundation. All rights reserved.
//

#import "ShowViewController.h"


@implementation ShowViewController

@synthesize show;

-(IBAction) closeView:(id)sender {
  [self clearWebView];
  [[self parentViewController] dismissModalViewControllerAnimated:YES];
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

-(void)clearWebView {
  [webView loadHTMLString:@"" baseURL:[NSURL URLWithString:@"http://localhost"]];
}

-(void)viewWillAppear:(BOOL)animated {
  [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[@"http://localhost:3000/shows/" stringByAppendingString:show.sid]]]];
}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
