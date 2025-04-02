--- STEAMODDED HEADER
--- MOD_NAME: Kopi Puesto Face Cards
--- MOD_ID: Kopi_Puesto
--- PREFIX: kp_fc
--- MOD_AUTHOR: [Crimson Heart]
--- MOD_DESCRIPTION: Kopi Puesto Face Cards, (Credits to SeSebasti for current update)
--- BADGE_COLOUR: a2f000
--- DISPLAY_NAME:  Kopi Puesto
--- VERSION: 1.0.0
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]

----------------------------------------------
------------MOD CODE -------------------------

ranks = {"Jack", "Queen", "King"}
SMODS.Atlas {
    key = 'clubs_1',
    path = "KP_C_1.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}
SMODS.Atlas {
    key = 'clubs_2',
    path = "KP_C_2.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}
SMODS.Atlas {
    key = 'hearts_1',
    path = "KP_H_1.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}
SMODS.Atlas {
    key = 'hearts_2',
    path = "KP_H_2.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}
SMODS.Atlas {
    key = 'diamonds_1',
    path = "KP_D_1.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}

SMODS.Atlas {
    key = 'diamonds_2',
    path = "KP_D_2.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}
SMODS.Atlas {
    key = 'spades_1',
    path = "KP_S_1.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}
SMODS.Atlas {
    key = 'spades_2',
    path = "KP_S_2.png",
    atlas_table = 'ASSET_ATLAS',
    px = 71,
    py = 95,
    disable_mipmap = true,
}

SMODS.DeckSkin({
    key = 'kp_fc_clubs',
    suit = "Clubs",
    ranks = ranks,
    lc_atlas = 'kp_fc_clubs_1',
    hc_atlas = "kp_fc_clubs_2",
    posStyle = 'collab',
    loc_txt = {
        ["en-us"] = "Kopi Puesto",
    }
})
SMODS.DeckSkin({
    key = 'kp_fc_hearts',
    suit = "Hearts",
    ranks = ranks,
    lc_atlas = 'kp_fc_hearts_1',
    hc_atlas = "kp_fc_hearts_2",
    posStyle = 'collab',
    loc_txt = {
        ["en-us"] = "Kopi Puesto",
    }
})
SMODS.DeckSkin({
    key = 'kp_fc_diamonds',
    suit = "Diamonds",
    ranks = ranks,
    lc_atlas = 'kp_fc_diamonds_1',
    hc_atlas = "kp_fc_diamonds_2",
    posStyle = 'collab',
    loc_txt = {
        ["en-us"] = "Kopi Puesto",
    }
})

SMODS.DeckSkin({
    key = 'kp_fc_spades',
    suit = "Spades",
    ranks = ranks,
    lc_atlas = 'kp_fc_spades_1',
    hc_atlas = "kp_fc_spades_2",
    posStyle = 'collab',
    loc_txt = {
        ["en-us"] = "Kopi Puesto",
    }
})
