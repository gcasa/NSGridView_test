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

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    // NSMutableArray *array = [NSMutableArray arrayWithCapacity: 32];
    /*
    NSUInteger i = 0;
    for (i = 0; i < 32; i++)
    {
        float rand_max = RAND_MAX;
        float red = rand() / rand_max;
        float green = rand() / rand_max;
        float blue = rand() / rand_max;
        // NSColor* myColor = [NSColor colorWithCalibratedRed:red green:green blue:blue alpha:1.0];
        
        NSView *v = [[NSView alloc] init];
        NSTextField *tv = [[NSTextField alloc] init];
        [tv setStringValue:@"Test"];
        [v addSubview: tv];
        
        [self.gridView addSubview: v];
    }*/
    
    NSLog(@"NSGridView has %ld subviews.", [[self.gridView subviews] count]);
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
