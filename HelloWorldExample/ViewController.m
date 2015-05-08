#import "ViewController.h"

#import "GAI.h"
#import "GAIDictionaryBuilder.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.

  // Set the screen name for automatic screenview tracking.
  self.screenName = @"Main";
}

- (IBAction)settingsDidClick:(id)sender {
  // Log setting open event with category="ui", action="open", and label="settings".
  [[GAI sharedInstance].defaultTracker send:
      [[GAIDictionaryBuilder createEventWithCategory:@"ui"
                                              action:@"open"
                                               label:@"settings"
                                               value:nil] build]];

  // Show an alert.
  [[[UIAlertView alloc] initWithTitle:@"Alert"
                              message:@"Clicked settings"
                             delegate:nil
                    cancelButtonTitle:nil
                    otherButtonTitles:@"OK", nil] show];
}

@end
