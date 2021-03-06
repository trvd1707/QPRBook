//
//  MainViewController.m
//  QPRBook
//
//  Created by Teresa Rios-Van Dusen on 10/14/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "InfoViewController.h"

@implementation MainViewController


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
}
*/


- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}



- (void)infoViewControllerDidFinish:(InfoViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo:(id)sender {   
    
    UIButton *b = sender;
    
    if ([b.titleLabel.text compare:@"Open Book"] == NSOrderedSame) {
        // set language as English
        [[NSUserDefaults standardUserDefaults] setValue:@"English" forKey:@"language"];        
    } else {
        // set language as Spanish
        [[NSUserDefaults standardUserDefaults] setValue:@"Spanish" forKey:@"language"];

    }
	
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil ];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)dealloc {
    [super dealloc];
}

- (void) showQPRSite:(id)sender {
    InfoViewController * vc= sender;
    vc.delegate = self;
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:vc animated:YES];
    [vc release];
    
}

@end
