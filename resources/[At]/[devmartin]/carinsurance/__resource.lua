-------------------------------------
------- Created by T1GER#9080 -------
------- Leaked By: Leaking Hub | J. Snow | leakinghub.com -------
------------------------------------- 

resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

description 'T1GER Car Insurance'

author 'T1GER#9080'

ui_page 'html/index.html'

server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'script_files/language.lua',
	'script_files/config.lua',
	'script_files/server.lua',
	'protection/server.lua',
}

client_scripts {
	'script_files/language.lua',
	'script_files/config.lua',
	'script_files/client.lua',
	'script_files/utils.lua',
	'protection/client.lua'
}

files {
	'html/index.html',
	'html/assets/css/*.css',
	'html/assets/js/*.js',
	'html/assets/images/*.png'
}
