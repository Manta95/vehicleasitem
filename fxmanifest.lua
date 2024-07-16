fx_version 'adamant'

game 'gta5'
lua54 'yes'
ui_page('html/index.html')


shared_scripts {
    '@es_extended/imports.lua',
    "@es_extended/locale.lua",
    '@ox_lib/init.lua',
    'config.lua',
    'cl_edit.lua',
}


client_scripts {
    'scripts/**/cl_*.lua', 
}


server_scripts {
    "@oxmysql/lib/MySQL.lua",
    'scripts/**/sv_*.lua',
}

files {
    'html/*',
    'locales/*.json',
}

dependencies {
    'es_extended'
}