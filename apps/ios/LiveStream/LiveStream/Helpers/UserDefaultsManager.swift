//
//  Copyright (C) 2021 Twilio, Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

import InAppSettingsKit
import SwiftyUserDefaults
import TwilioLivePlayer
import TwilioVideo

class UserDefaultsManager {
    private let appInfoStore = AppInfoStore()
    private let settingsReader = IASKSettingsReader()
    private let userDefaults = UserDefaults.standard
    
    func registerDefaults() {
        userDefaults.register(defaults: settingsReader.gatherDefaultsLimited(toEditableFields: true))
    }
    
    func sync() {
        Defaults.appVersion = appInfoStore.version
        Defaults.videoSDKVersion = TwilioVideoSDK.sdkVersion()
        Defaults.playerSDKVersion = Player.sdkVersion()
    }
}
