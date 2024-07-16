fx_version 'cerulean'

game 'gta5'
lua54 'yes'


shared_scripts {
    '@es_extended/imports.lua'
}


client_scripts {
    'scripts/**/cl_*.lua', 
}


server_scripts {
    'scripts/**/sv_*.lua',
}

dependencies {
    'es_extended'
}
