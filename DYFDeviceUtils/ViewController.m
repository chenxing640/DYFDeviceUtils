//
//  ViewController.m
//  DYFDeviceUtils
//
//  Created by dyf on 2019/5/22.
//  Copyright © 2019 dyf. All rights reserved.
//

#import "ViewController.h"
#import "DYFDeviceUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)testAction:(id)sender {
    // Gets device identifier.
    NSString *deviceID = DYFDeviceUtils.getUUID;
    NSLog(@"device identifier: %@", deviceID);
    
    // Gets device name.
    NSString *deviceName = DYFDeviceUtils.getDeviceName;
    NSLog(@"device name: %@", deviceName);
    
    // Whether enable advertising tracking or not.
    BOOL adTrackingEnabled = DYFDeviceUtils.isAdvertisingTrackingEnabled;
    NSLog(@"ad tracking enabled: %d", adTrackingEnabled);
    
    // Gets idfa.
    NSString *idfa = DYFDeviceUtils.getAdvertisingIdentifier;
    NSLog(@"idfa: %@", idfa);
    
    // Gets idfv.
    NSString *idfv = DYFDeviceUtils.getVendorIdentifier;
    NSLog(@"idfv: %@", idfv);
    
    // Gets system hardware model.
    NSString *hwModel = DYFDeviceUtils.getModel;
    NSLog(@"hardware model: %@", hwModel);
    
    // Gets system hardware machine identifier.
    NSString *hwMachine = DYFDeviceUtils.getMachine;
    NSLog(@"hardware machine: %@", hwMachine);
    
    // Gets country code.
    NSString *countryCode = DYFDeviceUtils.getCountryCode;
    NSLog(@"country code: %@", countryCode);
    
    // Gets preferred language.
    NSString *preferredLanguage = DYFDeviceUtils.getPreferredLanguage;
    NSLog(@"preferred language: %@", preferredLanguage);
    
    // Gets system version.
    NSString *sysVersion = DYFDeviceUtils.getSystemVersion;
    NSLog(@"system version: %@", sysVersion);
    
    // Gets user interface idiom.
    UIUserInterfaceIdiom uiIfIdiom = DYFDeviceUtils.getUserInterfaceIdiom;
    NSLog(@"user interface idiom: %zi", uiIfIdiom);
    
    // Gets battery state.
    // UIDeviceBatteryStateUnknown,
    // UIDeviceBatteryStateUnplugged,   // on battery, discharging
    // UIDeviceBatteryStateCharging,    // plugged in, less than 100%
    // UIDeviceBatteryStateFull,        // plugged in, at 100%
    UIDeviceBatteryState batteryState = DYFDeviceUtils.getBatteryState;
    NSLog(@"battery state.: %zi", batteryState);
    
    // Gets battery level.
    CGFloat batteryLevel = DYFDeviceUtils.getBatteryLevel;
    NSLog(@"battery level: %.2f", batteryLevel);
    
    // Whether support multitasking or not.
    BOOL multitaskingSupported = DYFDeviceUtils.isMultitaskingSupported;
    NSLog(@"multitasking supported: %d", multitaskingSupported);
}

@end
