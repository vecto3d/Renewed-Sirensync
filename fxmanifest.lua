fx_version 'cerulean'
game 'gta5'
use_experimental_fxv2_oal 'yes'
author 'AvarianKnight // FjamZoo'
description 'Renewed Sirensync - A completely reworked PMA Sirensync alternative'
version '1.0.2'
lua54 'yes'

shared_script '@ox_lib/init.lua'

client_script 'client.lua'

server_script 'server.lua'

files {
  'config.lua',
  'stream/dlc_danish_sirens/police.awc',
  'stream/data/danish_sirens.dat54.rel',
  'stream/data/danish_sirens.dat54.nametable'
}

data_file 'AUDIO_WAVEPACK' 'stream/dlc_danish_sirens'
data_file 'AUDIO_SOUNDDATA' 'stream/data/danish_sirens.dat'
