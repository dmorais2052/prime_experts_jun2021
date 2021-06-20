*** Variables ***
#Setup do device
${REMOTE_URL}            http://localhost:4723/wd/hub
${PLATFORM_NAME}         Android
${PLATFORM_VERSION}      11.0
${DEVICE_NAME}           Pixel_09_primeExperts
${APP_PACKAGE}           com.google.android.youtube
${APP_ACTIVITY}          com.google.android.apps.youtube.app.WatchWhileActivity
${AUTOMATION_NAME}       UiAutomator2
 
#Locators
${BANNER_ICON}                 thumbnail
${BTN_SEARCH}                  accessibility_id=Search
${INPUT_SEARCH}                search_edit_text
${TITLE}                       com.google.android.youtube:id/channel_title
${CHANNEL_NAME}                channel_name
${PLAYLISTS}                   accessibility_id=Playlists
${CHOOSE_E3}                   //android.widget.TextView[@text='E3 2021'] 
${NAVIGATEUP_BTN}              accessibility_id=Navigate up
${HOME_BTN}                    accessibility_id=Home
${TRENDING_BTN}                accessibility_id=Explore
${SUBSCRIPTIONS_BTN}           accessibility_id=Subscriptions
${NOTIFICATION_BTN}            accessibility_id=Notifications