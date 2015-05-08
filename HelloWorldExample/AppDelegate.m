#import "AppDelegate.h"

#import "GAI.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // Override point for customization after application launch.

  // Initialize the default tracker. After initialization, [GAI sharedInstance].defaultTracker
  // returns this same tracker.
  // TODO: Replace the tracker-id with your app one from https://www.google.com/analytics/web/
  id<GAITracker> tracker = [[GAI sharedInstance] trackerWithTrackingId:@"UA-54478999-2"];

  // Provide unhandled exceptions reports.
  [GAI sharedInstance].trackUncaughtExceptions = YES;

  // Enable Remarketing, Demographics & Interests reports. Requires the libAdIdAccess library
  // and the AdSupport framework.
  // https://developers.google.com/analytics/devguides/collection/ios/display-features
  tracker.allowIDFACollection = YES;

  return YES;
}

@end
