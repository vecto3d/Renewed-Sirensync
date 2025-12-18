return {
    ---@class audioConfig
    ---@field audioName string
    ---@field audioRef? string the audioBank to use, if for example you use custom serverside sirens

    ---@class SirenConfigTable
    ---@field models? table<string, boolean>
    ---@field sirenModes table<number, audioConfig> the key is the siren mode
    ---@field horn? audioConfig

    controls = {
        policeLights = 'Q',
        policeHorn   = 'E',
        sirenToggle  = 'LMENU',
        sirenCycle   = 'R',
    },

    sirenShutOff = true,          -- Set to true if you want the siren to automatically shut off when the player exits the vehicle

    disableDamagedSirens = false, -- Set to true if you want to disable the damaged siren
    useEngineHealth = false,      -- Determine wether to use engine health over body health for siren damage
    damageThreshold = 300,        -- If the vehicle's health is below this value, the siren will be considered damaged

    ---@type table<number, SirenConfigTable>
    --- Configure what siren sounds to use for a specific model and siren mode
    sirens = {
        --base
        {
            sirenModes = {
                { audioName = 'SIREN_2',          audioRef = 'POLICE_SOUNDSET' },
                { audioName = 'SIREN_PA20A_WAIL', audioRef = 'POLICE_SOUNDSET' },
                { audioName = 'SIREN_QUICK_01',   audioRef = 'POLICE_SOUNDSET' },
            },

            horn = {
                audioName = 'AIRHORN_EQD', audioRef = 'POLICE_SOUNDSET'
            }
        },

        --fire
        {
            sirenModes = {
                { audioName = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_QUICK_01' },
                { audioName = 'RESIDENT_VEHICLES_SIREN_FIRETRUCK_WAIL_01' },
                { audioName = 'VEHICLES_HORNS_AMBULANCE_WARNING' }
            },

            horn = {
                audioName = 'VEHICLES_HORNS_FIRETRUCK_WARNING'
            },

            models = {
                [`FIRETRUK`] = true,
                [`ambulance`] = true,
            }
        },
    }
}
