-- ============================================================
-- change_ped : menu de changement de ped (MenuV)
-- F7 ou change_ped pour ouvrir le menu.
-- ============================================================

local pedModels = {
    -- Hommes
    "a_m_m_beach_01",
    "a_m_m_bevhills_01",
    "a_m_m_bevhills_02",
    "a_m_m_business_01",
    "a_m_m_downtown_01",
    "a_m_m_eastsa_01",
    "a_m_m_farmer_01",
    "a_m_m_golfer_01",
    "a_m_m_hillbilly_01",
    "a_m_m_ktown_01",
    "a_m_m_malibu_01",
    "a_m_m_skater_01",
    "a_m_m_socenlat_01",
    "a_m_m_soucent_01",
    "a_m_m_stlat_02",
    "a_m_m_tourist_01",
    "a_m_m_tramp_01",
    "a_m_m_trampbeac_01",

    "a_m_y_beach_01",
    "a_m_y_beach_02",
    "a_m_y_beach_03",
    "a_m_y_bevhills_01",
    "a_m_y_bevhills_02",
    "a_m_y_business_01",
    "a_m_y_business_02",
    "a_m_y_business_03",
    "a_m_y_clubcust_01",
    "a_m_y_cyclist_01",
    "a_m_y_downtown_01",
    "a_m_y_eastsa_01",
    "a_m_y_eastsa_02",
    "a_m_y_gay_01",
    "a_m_y_gay_02",
    "a_m_y_genstreet_01",
    "a_m_y_genstreet_02",
    "a_m_y_golfer_01",
    "a_m_y_hasjew_01",
    "a_m_y_hiker_01",
    "a_m_y_hipster_01",
    "a_m_y_hipster_02",
    "a_m_y_hipster_03",
    "a_m_y_hipster_04",
    "a_m_y_jetski_01",
    "a_m_y_juggalo_01",
    "a_m_y_ktown_01",
    "a_m_y_latino_01",
    "a_m_y_methhead_01",
    "a_m_y_mexthug_01",
    "a_m_y_motox_01",
    "a_m_y_motox_02",
    "a_m_y_musclbeac_01",
    "a_m_y_musclbeac_02",
    "a_m_y_polynesian_01",
    "a_m_y_roadcyc_01",
    "a_m_y_runner_01",
    "a_m_y_runner_02",
    "a_m_y_smartcaspat_01",
    "a_m_y_soucent_01",
    "a_m_y_soucent_02",
    "a_m_y_soucent_03",
    "a_m_y_soucent_04",
    "a_m_y_stbla_01",
    "a_m_y_stbla_02",
    "a_m_y_stlat_01",
    "a_m_y_stwhi_01",
    "a_m_y_stwhi_02",
    "a_m_y_sunbathe_01",
    "a_m_y_surfer_01",
    "a_m_y_vindouche_01",
    "a_m_y_vinewood_01",
    "a_m_y_vinewood_02",
    "a_m_y_vinewood_03",
    "a_m_y_vinewood_04",
    "a_m_y_yoga_01",

    -- Femmes
    "a_f_m_beach_01",
    "a_f_m_bevhills_01",
    "a_f_m_bevhills_02",
    "a_f_m_bodybuild_01",
    "a_f_m_business_02",
    "a_f_m_downtown_01",
    "a_f_m_eastsa_01",
    "a_f_m_eastsa_02",
    "a_f_m_fatbla_01",
    "a_f_m_fatcult_01",
    "a_f_m_fatwhite_01",
    "a_f_m_ktown_01",
    "a_f_m_ktown_02",
    "a_f_m_prolhost_01",
    "a_f_m_soucent_01",
    "a_f_m_soucent_02",
    "a_f_m_soucentmc_01",
    "a_f_m_tourist_01",
    "a_f_m_tramp_01",

    "a_f_y_beach_01",
    "a_f_y_bevhills_01",
    "a_f_y_bevhills_02",
    "a_f_y_bevhills_03",
    "a_f_y_bevhills_04",
    "a_f_y_business_01",
    "a_f_y_business_02",
    "a_f_y_business_03",
    "a_f_y_business_04",
    "a_f_y_eastsa_01",
    "a_f_y_eastsa_02",
    "a_f_y_fitness_01",
    "a_f_y_fitness_02",
    "a_f_y_genhot_01",
    "a_f_y_golfer_01",
    "a_f_y_hiker_01",
    "a_f_y_hipster_01",
    "a_f_y_hipster_02",
    "a_f_y_hipster_03",
    "a_f_y_hipster_04",
    "a_f_y_indian_01",
    "a_f_y_juggalo_01",
    "a_f_y_runner_01",
    "a_f_y_rurmeth_01",
    "a_f_y_scdressy_01",
    "a_f_y_skater_01",
    "a_f_y_soucent_01",
    "a_f_y_soucent_02",
    "a_f_y_soucent_03",
    "a_f_y_tennis_01",
    "a_f_y_topless_01",
    "a_f_y_tourist_01",
    "a_f_y_tourist_02",
    "a_f_y_vinewood_01",
    "a_f_y_vinewood_02",
    "a_f_y_vinewood_03",
    "a_f_y_vinewood_04",
    "a_f_y_yoga_01",

    -- Services / professions
    "s_m_m_ammucountry",
    "s_m_m_armoured_01",
    "s_m_m_autoshop_01",
    "s_m_m_autoshop_02",
    "s_m_m_bouncer_01",
    "s_m_m_ccrew_01",
    "s_m_m_chemsec_01",
    "s_m_m_ciasec_01",
    "s_m_m_cntrybar_01",
    "s_m_m_dockwork_01",
    "s_m_m_doctor_01",
    "s_m_m_fiboffice_01",
    "s_m_m_fiboffice_02",
    "s_m_m_gardener_01",
    "s_m_m_gentransport",
    "s_m_m_hairdress_01",
    "s_m_m_janitor",
    "s_m_m_lathandy_01",
    "s_m_m_lifeinvad_01",
    "s_m_m_linecook",
    "s_m_m_lsmetro_01",
    "s_m_m_mariachi_01",
    "s_m_m_migrant_01",
    "s_m_m_movalien_01",
    "s_m_m_movprem_01",
    "s_m_m_paramedic_01",
    "s_m_m_pilot_01",
    "s_m_m_postal_01",
    "s_m_m_security_01",
    "s_m_m_strperf_01",
    "s_m_m_strpreach_01",
    "s_m_m_strvend_01",
    "s_m_m_trucker_01",
    "s_m_m_ups_01",
    "s_m_m_ups_02",
    "s_m_y_airworker",
    "s_m_y_ammucity_01",
    "s_m_y_armymech_01",
    "s_m_y_autopsy_01",
    "s_m_y_barman_01",
    "s_m_y_baywatch_01",
    "s_m_y_blackops_01",
    "s_m_y_blackops_02",
    "s_m_y_blackops_03",
    "s_m_y_busboy_01",
    "s_m_y_cop_01",
    "s_m_y_dealer_01",
    "s_m_y_devinsec_01",
    "s_m_y_dockwork_01",
    "s_m_y_doorman_01",
    "s_m_y_dwservice_01",
    "s_m_y_fireman_01",
    "s_m_y_garbage",
    "s_m_y_grip_01",
    "s_m_y_marine_01",
    "s_m_y_marine_02",
    "s_m_y_marine_03",
    "s_m_y_mime",
    "s_m_y_pestcont_01",
    "s_m_y_pilot_01",
    "s_m_y_prismuscl_01",
    "s_m_y_prisoner_01",
    "s_m_y_ranger_01",
    "s_m_y_robber_01",
    "s_m_y_sheriff_01",
    "s_m_y_shop_mask",
    "s_m_y_strvend_01",
    "s_m_y_swat_01",
    "s_m_y_uscg_01",
    "s_m_y_valet_01",
    "s_m_y_waiter_01",
    "s_m_y_winclean_01"
}

math.randomseed(GetGameTimer())

local changePedMenu = nil
local isAskingModel = false

-- ------------------------------------------------------------
-- Utilitaires
-- ------------------------------------------------------------

-- Notification affichée au-dessus de la minimap
local function notify(message)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(message)
    EndTextCommandThefeedPostTicker(false, true)
end

-- Change le modèle du joueur. Retourne true en cas de succès.
local function changePlayerModel(modelName)
    local modelHash = GetHashKey(modelName)

    if not IsModelInCdimage(modelHash) or not IsModelValid(modelHash) then
        print(("^1[ChangePed] Modèle introuvable ou invalide : %s^7"):format(modelName))
        notify(("Modèle introuvable : %s"):format(modelName))
        return false
    end

    RequestModel(modelHash)

    local timeout = GetGameTimer() + 10000
    while not HasModelLoaded(modelHash) do
        Wait(0)
        if GetGameTimer() > timeout then
            print(("^1[ChangePed] Délai dépassé pour : %s^7"):format(modelName))
            notify(("Délai dépassé pour : %s"):format(modelName))
            return false
        end
    end

    SetPlayerModel(PlayerId(), modelHash)
    SetPedDefaultComponentVariation(PlayerPedId())
    SetModelAsNoLongerNeeded(modelHash)

    print(("^2[ChangePed] Modèle appliqué : %s^7"):format(modelName))
    notify(("Modèle appliqué : %s"):format(modelName))
    return true
end

-- Choisit un modèle au hasard dans toute la liste
local function changeToRandomPed()
    if #pedModels == 0 then
        print("^1[ChangePed] Aucun modèle disponible.^7")
        notify("Aucun modèle disponible.")
        return
    end

    changePlayerModel(pedModels[math.random(1, #pedModels)])
end

-- Ouvre le clavier à l'écran de GTA et retourne le texte saisi
-- (nil si l'utilisateur annule ou ne saisit rien)
local function askModelName()
    AddTextEntry('CHANGEPED_INPUT', 'Nom du modèle (ex : a_m_m_beach_01)')
    DisplayOnscreenKeyboard(1, 'CHANGEPED_INPUT', '', '', '', '', '', 64)

    local status = UpdateOnscreenKeyboard()
    while status == 0 do
        DisableAllControlActions(0)
        Wait(0)
        status = UpdateOnscreenKeyboard()
    end

    -- 1 = validé, 2 = annulé, 3 = clavier non affiché
    if status ~= 1 then
        return nil
    end

    local result = GetOnscreenKeyboardResult()
    if not result then
        return nil
    end

    -- Nettoyage : espaces retirés, minuscules
    result = result:gsub('%s+', ''):lower()

    if result == '' then
        return nil
    end

    return result
end

-- ------------------------------------------------------------
-- Menu
-- ------------------------------------------------------------

changePedMenu = MenuV:CreateMenu(
    'Changement de ped',          -- titre
    'Sélectionne un personnage',  -- sous-titre
    'topleft',                    -- position
    0, 120, 255,                  -- r, g, b
    'size-125',                   -- taille
    'default',                    -- texture
    'menuv',                      -- dictionnaire (menuv.ytd)
    'change_ped',               -- namespace
    'native'                      -- thème
)

local randomButton = changePedMenu:AddButton({
    icon = '🎲',
    label = 'Aléatoire',
    description = 'Génère un personnage aléatoire parmi tous les modèles de la liste'
})
randomButton:On('select', function()
    changeToRandomPed()
end)

local chosenButton = changePedMenu:AddButton({
    icon = '✏️',
    label = 'Choisir',
    description = 'Saisir le nom exact d\'un modèle (ex : a_m_m_beach_01)'
})
chosenButton:On('select', function()
    if isAskingModel then
        return
    end

    isAskingModel = true

    CreateThread(function()
        -- On ferme le menu pour que MenuV ne capte pas le clavier
        changePedMenu:Close()
        Wait(300)

        local modelName = askModelName()

        if modelName then
            changePlayerModel(modelName)
        else
            notify('Saisie annulée.')
        end

        Wait(200)
        isAskingModel = false
        changePedMenu:Open()
    end)
end)

local fermerButton = changePedMenu:AddButton({
    icon = '❌',
    label = 'Fermer',
    description = 'Fermer le menu'
})
fermerButton:On('select', function()
    changePedMenu:Close()
end)

-- Ouverture avec F7 (gérée par MenuV)
changePedMenu:OpenWith('KEYBOARD', 'F7')

-- Commande de secours (console F8) : change_ped
RegisterCommand('change_ped', function()
    changePedMenu:Open()
end, false)