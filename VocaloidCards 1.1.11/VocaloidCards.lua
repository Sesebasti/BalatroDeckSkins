--- STEAMODDED HEADER
--- MOD_NAME: Vocaloid Cards
--- MOD_ID: voc_deckall
--- PREFIX: voc
--- MOD_AUTHOR: [GreenRupee]
--- MOD_DESCRIPTION: Miku and friends are in your Balatro!
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.1.11
--- BADGE_COLOR: 1DF8DC

local atlas_key = 'voc_atlas' -- Format: PREFIX_KEY
-- See end of file for notes
local atlas_path = 'vocaloid_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'vocaloid_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} -- Which suits to replace
local ranks = {'Jack', 'Queen', "King", "Ace", "10", "9", "8", "7", "6", "5", "4", "3", "2"} -- Which ranks to replace

local description = 'Vocaloid' -- English-language description, also used as default

-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false},
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false},
    }
end

for _, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
		display_ranks = {"Ace", "King", "Queen", "Jack"},
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = description
        },
        posStyle = 'deck'
    }
end

local icon_lc = SMODS.Atlas {
	key = "icon_lc",
	path = "icon_lc.png",
	px = 18,
	py = 18,
}

local icon_hc = SMODS.Atlas {
	key = "icon_hc",
	path = "icon_hc.png",
	px = 18,
	py = 18,
}

-- Notes:

-- The current version of Steamodded has a bug with prefixes in mods including `DeckSkin`s.
-- By manually including the prefix in the atlas' key, this should keep the mod functional
-- even after this bug is fixed.
