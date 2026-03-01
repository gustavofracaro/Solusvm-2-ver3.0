// Copyright 1999-2024. WebPros International GmbH. All rights reserved.

import mixpanel from '../node_modules/mixpanel-browser/dist/mixpanel.module.js';

mixpanel.init('994702a9a3f12790bce836e2c7a096be', {
    debug: false,
    api_host: 'https://mixpanel-proxy.cpanel.net',
    property_blacklist: ['$initial_referrer'],
    batch_requests: true, // Batch requests for better performance
    secure_cookie: true, // Use secure cookies
    persistence: 'localStorage' // Use localStorage for better performance than cookies
});

// Cache mixpanel availability check
const isMixpanelAvailable = mixpanel && typeof mixpanel.identify === 'function' && typeof mixpanel.track === 'function';

window.trackVPSEvent = function(eventName = 'SVM_USR_WHMCS:CLIENTAREA_SGL-PAGE-VISIT', mixpanelUserId = null) {
    if (!isMixpanelAvailable || !mixpanelUserId) {
        return;
    }

    if (mixpanelUserId) {
        mixpanel.identify(mixpanelUserId);
    }

    mixpanel.track(eventName);
};

