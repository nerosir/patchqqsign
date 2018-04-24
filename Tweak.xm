
%hook QQAddressBookAppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
// Override point for customization after application launch.

%orig;
NSDictionary *dic = [[NSBundle mainBundle]infoDictionary];
[dic setValue:@"com.tencent.mqq" forKey:@"CFBundleIdentifier"];

return YES;
}
%end

