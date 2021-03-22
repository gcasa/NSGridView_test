//
//  AppDelegate.m
//  NSGridView_test
//
//  Created by Gregory Casamento on 8/2/20.
//  Copyright © 2020 Open Logic Corporation. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (retain) IBOutlet NSWindow *window;
@property (retain) IBOutlet NSGridView *gridView;

@property (retain) IBOutlet NSWindow *window1;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSInteger r = 1;
    NSRect f = NSMakeRect(0, 0,500, 400);
    NSButton *v = [[NSButton alloc] initWithFrame: f];
    [v setTitle: @"Button 1"];
    NSArray *a = [NSArray arrayWithObject:v];
    [self.gridView insertRowAtIndex:1 withViews:a];
    NSButton *v1 = [[NSButton alloc] initWithFrame: f];
    [v1 setTitle: @"Button 2"];
    NSArray *a1 = [NSArray arrayWithObject:v1];
    [self.gridView insertColumnAtIndex:1 withViews:a1];
    NSLog(@"NSGridView has %ld subviews.", [[self.gridView subviews] count]);
    NSLog(@"NSGridViewSizeForContent = %f", NSGridViewSizeForContent);
    NSLog(@"Nunber of cells in row %ld = %ld",r, [[self.gridView columnAtIndex:r] numberOfCells]);
    
    
    NSArray *views = @[@[[[NSButton alloc] init],[[NSColorWell alloc] init]],@[[[NSButton alloc] init],[[NSColorWell alloc] init]]];
    NSGridView *gv = [NSGridView gridViewWithViews:views];
    [gv setFrame: NSMakeRect(50,50,200,200)];
    [[self.window1 contentView] addSubview: gv];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
