--- STEAMODDED HEADER
--- MOD_NAME: A couple freaks - Inkticious' Decks
--- MOD_ID: ink_deck
--- PREFIX: ink
--- MOD_AUTHOR: [Inkticious]
--- MOD_DESCRIPTION: Ink's packs woah!
--- LOADER_VERSION_GEQ: 1.0.0
--- VERSION: 1.0.0
--- BADGE_COLOR: FF3800 

local atlas_key = 'ink_atlas' -- Format: PREFIX_KEY
-- See end of file for notes
local atlas_path = 'ink_lc.png' -- Filename for the image in the asset folder
local atlas_path_hc = 'ink_hc.png' -- Filename for the high-contrast version of the texture, if existing

local suits = {'hearts', 'clubs', 'diamonds', 'spades'} -- Which suits to replace
local ranks = {'Jack', 'Queen', "King", "Ace"} -- Which ranks to replace

local descriptions = {'Mouthwashing', 'Body Horror', 'Goobers', 'Wendigo'} -- English-language description, in order of suits

-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

SMODS.Atlas{  
    key = atlas_key..'_lc',
    px = 71,
    py = 95,
    path = atlas_path,
    prefix_config = {key = false}, -- See end of file for notes
}

if atlas_path_hc then
    SMODS.Atlas{  
        key = atlas_key..'_hc',
        px = 71,
        py = 95,
        path = atlas_path_hc,
        prefix_config = {key = false}, -- See end of file for notes
    }
end

for i, suit in ipairs(suits) do
    SMODS.DeckSkin{
        key = suit.."_skin",
        suit = suit:gsub("^%l", string.upper),
        ranks = ranks,
        lc_atlas = atlas_key..'_lc',
        hc_atlas = (atlas_path_hc and atlas_key..'_hc') or atlas_key..'_lc',
        loc_txt = {
            ['en-us'] = descriptions[i]
        },
        posStyle = 'deck'
    }
end

-- Notes:

-- The current version of Steamodded has a bug with prefixes in mods including `DeckSkin`s.
-- By manually including the prefix in the atlas' key, this should keep the mod functional
-- even after this bug is fixed.
