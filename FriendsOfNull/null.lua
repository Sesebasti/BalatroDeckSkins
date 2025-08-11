--- STEAMODDED HEADER
--- MOD_NAME: Friends of [null]
--- MOD_ID: cw_skin
--- MOD_AUTHOR: [#Guigui]
--- MOD_DESCRIPTION: A face card skin based on Corrupted Worlds and #Guigui's other OCs
--- DEPENDENCIES: [Steamodded>=1.0.0~ALPHA-0812d]

local atlas_clubs_hc = SMODS.Atlas { key = "cw_clubs_hc", path = "cw_C_HC.png", px = 71, py = 95}
local atlas_clubs_lc = SMODS.Atlas { key = "cw_clubs_lc", path = "cw_C.png", px = 71, py = 95}
local atlas_hearts_hc = SMODS.Atlas { key = "cw_hearts_hc", path = "cw_H_HC.png", px = 71, py = 95}
local atlas_hearts_lc = SMODS.Atlas { key = "cw_hearts_lc", path = "cw_H.png", px = 71, py = 95}
local atlas_spades_hc = SMODS.Atlas { key = "cw_spades_hc", path = "cw_S_HC.png", px = 71, py = 95}
local atlas_spades_lc = SMODS.Atlas { key = "cw_spades_lc", path = "cw_S.png", px = 71, py = 95}
local atlas_diamonds_hc = SMODS.Atlas { key = "cw_diamonds_hc", path = "cw_D_HC.png", px = 71, py = 95}
local atlas_diamonds_lc = SMODS.Atlas { key = "cw_diamonds_lc", path = "cw_D.png", px = 71, py = 95}

SMODS.DeckSkin{
	key = "cw_clubs",
	suit = "Clubs",
	loc_txt = "Corrupted Worlds (Friends of [null])",
	palettes = {
		{
			key = "lc",
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_clubs_lc.key,
			pos_style = 'collab',
		},
		{
			key = "hc",
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_clubs_hc.key,
			pos_style = 'collab',
		},
	}
}

SMODS.DeckSkin{
	key = "cw_hearts",
	suit = "Hearts",
	loc_txt = "Friends of [null] - Hearts",
	palettes = {
		{
			key = "lc",
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_hearts_lc.key,
			pos_style = 'collab',
		},
		{
			key = "hc",
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_hearts_hc.key,
			pos_style = 'collab',
		},
	}
}

SMODS.DeckSkin{
	key = "cw_spades",
	suit = "Spades",
	loc_txt = "Friends of [null] - Spades",
	palettes = {
		{
			key = 'lc',
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_spades_lc.key,
			pos_style = 'collab',
		},
		{
			key = 'hc',
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_spades_hc.key,
			pos_style = 'collab',
		},
	}
}


SMODS.DeckSkin{
	key = "cw_diamonds",
	suit = "Diamonds",
	loc_txt = "Friends of [null] - Diamonds",
	palettes = {
		{
			key = "lc",
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_diamonds_lc.key,
			pos_style = 'collab',
		},
		{
			key = "hc",
			ranks = {"Jack", "Queen", "King"},
			display_ranks = {"Jack", "Queen", "King"},
			atlas = atlas_diamonds_hc.key,
			pos_style = 'collab',
		},
	}
}
