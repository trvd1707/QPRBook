//
//  FlipsideViewController.h
//  QPRBook
//
//  Created by Teresa Rios-Van Dusen on 10/14/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol FlipsideViewControllerDelegate;
@class TiledPDFView;
@class PDFScrollView;
@class InfoViewController;

@interface FlipsideViewController : UIViewController<UIScrollViewDelegate, UIActionSheetDelegate,UIGestureRecognizerDelegate > {
	id <FlipsideViewControllerDelegate> delegate;
    int pageNumber;
    int totalPages;
    CGPDFDocumentRef pdf;
    UIImageView *imageView;
    NSMutableArray *bookmarks;
    UIScrollView  *singleSV;
    InfoViewController *infoVC;
}
@property (nonatomic, assign) id <FlipsideViewControllerDelegate> delegate;
@property (nonatomic, retain) UIImageView *imageView;
@property (nonatomic, retain) NSMutableArray *bookmarks;
@property (nonatomic, retain) IBOutlet UIScrollView *singleSV;
@property (nonatomic, retain) InfoViewController *infoVC;

- (IBAction)done:(id)sender;
- (IBAction)nextPage:(id)sender;
- (IBAction)previousPage:(id)sender;
- (IBAction)endBook:(id)sender;
- (IBAction)medbag:(id)sender;
- (IBAction)annotation:(id)sender;
- (IBAction)flipLanguage:(id)sender;
@end


@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end


