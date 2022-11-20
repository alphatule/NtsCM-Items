
--░██╗░░░░░░░██╗███████╗██████╗░██╗░░██╗░█████╗░░█████╗░██╗░░██╗░██████╗
--░██║░░██╗░░██║██╔════╝██╔══██╗██║░░██║██╔══██╗██╔══██╗██║░██╔╝██╔════╝
--░╚██╗████╗██╔╝█████╗░░██████╦╝███████║██║░░██║██║░░██║█████═╝░╚█████╗░
--░░████╔═████║░██╔══╝░░██╔══██╗██╔══██║██║░░██║██║░░██║██╔═██╗░░╚═══██╗
--░░╚██╔╝░╚██╔╝░███████╗██████╦╝██║░░██║╚█████╔╝╚█████╔╝██║░╚██╗██████╔╝
--░░░╚═╝░░░╚═╝░░╚══════╝╚═════╝░╚═╝░░╚═╝░╚════╝░░╚════╝░╚═╝░░╚═╝╚═════╝░

--- @param Important, add a webhook here, otherwise the images won't work.
Config.Webhook = 'https://discord.com/api/webhooks/1004563995346341989/uhzfUyxSgnUJw1omEyW7gcrmMH-LQYLTrYx4K38tIBdANOtTwtFTPd5eaGXc7En2fpqT'             --- @param Set your own discord Webhook here.
Config.TwitterWebhook = 'https://discord.com/api/webhooks/1004563688293929132/pZGHt84VP6_AKaEqMyBzE-vEiEyOy_KwPf9Cg_h_eAVbTOdQBjwkuYOnAqC3UsdKXoMh'      --- @param Set your own discord Webhook here.
Config.InstagramWebhook = 'https://discord.com/api/webhooks/1004563775090856036/kC3qBoJ-EGNhMMFF1lUPPCjw42ohtW31sqH_IoMhj8mwEqCl4rl0UmEofulykMPiRxaP'    --- @param Set your own discord Webhook here.
Config.YellowPagesWebhook = 'https://discord.com/api/webhooks/1004563775090856036/kC3qBoJ-EGNhMMFF1lUPPCjw42ohtW31sqH_IoMhj8mwEqCl4rl0UmEofulykMPiRxaP'  --- @param Set your own discord Webhook here.
Config.NewsWebhook = 'https://discord.com/api/webhooks/1043949186846031883/hxUzS62wLsRx9JIhgUfEYQh0qj8THQsSNjnHk0JL0TuK14X9ajG1Q0H9iC8leO-a1OPV'         --- @param Set your own discord Webhook here.

-- Webhooks for social media posts, all of these can be public for your players to see the webhooks on your discord server!
Config.PublicWebhookFooter = 'Logueador de la poya movil'
Config.WebhookImage = 'https://media.discordapp.net/attachments/926274292373655562/999502096430796950/xd.png?width=676&height=676'

Config.Webhooks = { -- Enable or disable webhooks.
    twitter = true,
    instagram = true,
    yellowpages = true,
    news = true,
}

Config.WebhooksTranslations = { -- All webhook translations.
    ['twitter'] = {
        name = 'Twitter',
        title = 'New Tweet!',
        username = '**Username**: @',
        description = '\n**Description**: ',
    },

    ['instagram'] = {
        name = 'Instagram',
        title = 'New Post!',
        username = '**Username**: @',
        description = '\n**Description**: ',
    },

    ['yellowpages'] = {
        name = 'Yellow Pages',
        title = 'New Post!',
        username = '**Username**: ',
        description = '\n**Description**: ',
        number = '\n**Number**: ',
    },

    ['news'] = {
        name = 'News',
        title = 'New Storie!',
        storie = '**Title**: ',
        description = '\n**Description**: ',
        date = '\n**Number**: ',
    },
}