//
//  ViewController.m
//  Obj-C
//
//  Created by IOS on 12/13/22.
//

#import "ViewController.h"

#import <UIKit/UIKit.h>
#import <NativeScript/NativeScript.h>

#ifdef DEBUG
#include <notify.h>
#include <TKLiveSync/TKLiveSync.h>

#define NOTIFICATION(name)                                                      \
    [[NSString stringWithFormat:@"%@:NativeScript.Debug.%s",                    \
        [[NSBundle mainBundle] bundleIdentifier], name] UTF8String]
#endif


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  // Do any additional setup after loading the view.
    
    extern char startOfMetadataSection __asm("section$start$__DATA$__TNSMetadata");
    NativeScript* nativescript;
    
    int argc = 0;	
    char *argv[] = {"0"};
    @autoreleasepool {
        NSString* baseDir = [[NSBundle mainBundle] resourcePath];
        
        NSLog(@"hereeeeeeeeeeeeeeeee");
        void* metadataPtr = &startOfMetadataSection;
        
        bool isDebug = false;
        
        Config* config = [[Config alloc] init];
        config.IsDebug = isDebug;
        config.LogToSystemConsole = isDebug;
        config.MetadataPtr = metadataPtr;
        config.BaseDir = baseDir;
        config.ArgumentsCount = argc;
        config.Arguments = argv;
        
        nativescript = [[NativeScript alloc] initWithConfig:config];
        [nativescript runMainApplication];
        
    }
}


@end

