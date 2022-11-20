Config = []

Config.Webhook = "https://discord.com/api/webhooks/1043949610856628334/el_SofbTEDf9q6N2fu29evybq3GZJOOuRiN7MJyLJFyXU3EsFD_XT9uQinW80sVWjd17" // Set your own discord Webhook here.

// Ignore this line, it's just the alert for you to add your webhook.
if (Config.Webhook == '') {
    $.post('http://qs-videos/Log', JSON.stringify({
        msg: "[qs-videos] Missing webhook inside qs-videos/config/config.js."
    }))
}