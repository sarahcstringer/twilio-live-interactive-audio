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

import SwiftyUserDefaults

extension DefaultsKeys {
    // Default values are handled by https://github.com/futuretap/InAppSettingsKit#register-default-values
    var appVersion: DefaultsKey<String> { .init("AppVersion", defaultValue: "") }
    var playerSDKVersion: DefaultsKey<String> { .init("PlayerSDKVersion", defaultValue: "") }
    var streamURL: DefaultsKey<String> { .init("StreamURL", defaultValue: "") }
    var userIdentity: DefaultsKey<String> { .init("UserIdentity", defaultValue: "") }
    var videoSDKVersion: DefaultsKey<String> { .init("VideoSDKVersion", defaultValue: "") }
}
