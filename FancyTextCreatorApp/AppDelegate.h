//
//  AppDelegate.h
//  FancyTextCreatorApp
//
//  Created by Rently Coimbatore on 15/08/24.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

