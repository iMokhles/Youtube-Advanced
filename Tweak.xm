#import <iMoMacros.h>

%hook YTIPlayabilityStatus
- (BOOL)isPlayableInBackground {
	return YES;
}
%end

%hook YTDataUtils
+ (id)identifierForAdvertising {
	return nil;
}
%end

%hook YTPlayerViewController
- (BOOL)isPlayingAd {
	return NO;
}
%end

%hook YTRealDataServices
- (id)videoAdsService {
	return nil;
}
%end

%hook YTVASTAd
- (BOOL)isForecastingAd {
	return NO;
}
- (BOOL)isAdSenseAdSystem {
	return NO;
}
-(id)initWithIsSkippable:(BOOL)arg1 {
	return %orig(YES);
}
- (BOOL)isSkippable {
	return TRUE;
}
%end

%hook YTVideoAdsController
- (id)init {
	return nil;
}
- (id)videoAdsService {
	return nil;
}
+ (BOOL)isAdSenseAdTag:(id)arg1 {
	return NO;
}
%end

%hook YTLocalPlaybackController
- (void)playerStateDidChangeToFinished {
	return;
}
%end

%hook YTPromotedVideoCellController
- (BOOL)shouldShowPromotedItems {
	return NO;
}
%end

%hook YTReachability
- (BOOL)isOnWiFi {
	return YES;
}
%end

%hook YTSettings
- (BOOL)streamHDOnWiFiOnly {
	return NO;
}
- (void)setStreamHDOnWiFiOnly:(BOOL)arg1 {
	%orig(NO);
}
%end

%hook YTUserDefaults
- (BOOL)streamHDOnWiFiOnly {
	return NO;
}
- (void)setStreamHDOnWiFiOnly:(BOOL)arg1 {
	%orig(NO);
}
%end

%hook YTVideoQualitySwitchController
// let's do it better
- (BOOL)canSelectQuality:(long long) {
	return YES;
}
%end
