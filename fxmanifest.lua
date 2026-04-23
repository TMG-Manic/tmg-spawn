fx_version 'cerulean'
game 'gta5'
lua54 'yes'
author 'TMG_Manic'
description 'Allows players to select a spawn point from a list of available locations'
version '1.0.0'

shared_scripts {
    '@tmg-core/shared/locale.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua',
    '@tmg-apartments/config.lua',
}

client_script 'client.lua'

server_scripts {
    'server.lua'
}

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/style.css',
    'html/vue.js',
    'html/reset.css'
}

dependency 'tmgnosql'
