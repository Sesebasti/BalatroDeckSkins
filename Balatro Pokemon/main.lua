-- Malverk
if Malverk then
    AltTexture({ -- Enhancements
        key = 'pkmn_enhance',
        set = 'Enhanced',
        path = 'Poke Decks.png',
        display_pos = "m_stone",
        localization = true
    })
    AltTexture({ -- Seals
        key = 'pkmn_seals',
        set = 'Seal',
        path = 'Poke Decks.png',
        display_pos = "Red",
        localization = true
    })
    AltTexture({ -- Tarots
        key = 'pkmn_tarot',
        set = 'Tarot',
        path = 'Poke Tarots.png',
        keys = { 'c_fool', 'c_high_priestess', 'c_empress', 'c_emperor', 'c_heirophant', 'c_lovers', 'c_chariot',
            'c_justice', 'c_hermit', 'c_wheel_of_fortune', 'c_strength', 'c_hanged_man', 'c_death', 'c_temperance',
            'c_devil', 'c_tower', 'c_star', 'c_moon', 'c_sun', 'c_judgement', 'c_world' },
        original_sheet = true,
        display_pos = "c_emperor",
        localization = true
    })
    TexturePack { -- Texture Pack
        key = 'pokemon',
        textures = { 'bltrpkmn_pkmn_enhance', 'bltrpkmn_pkmn_seals', 'bltrpkmn_pkmn_tarot' },
        dynamic_display = true
    }
end

-- Deck Skins
local atlas_key = 'bltrpkmn_atlas'   -- "{prefix}_atlas"

local atlas_lc_img = 'Poke Deck.png' -- Filename for the image in the asset folder
-- local atlas_hc_img = 'Poke Deck.png' -- Optional, comment out if not used

local suits = { 'Hearts', 'Clubs', 'Diamonds', 'Spades' }                                           -- Which suits to replace
local ranks_to_use = { '2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace" } -- Which ranks to replace

local suit_colors_lc = { HEX("f34533"), HEX("2a81e1"), HEX("fcec3c"), HEX("4cac54") }               -- Optional, comment out if not used
-- local suit_colors_hc = {HEX("f34533"), HEX("2a81e1"), HEX("fcec3c"), HEX("4cac54")} -- Optional, comment out if not used

local atlas_icon_lc = 'Poke Deck UI.png' -- Optional, comment out if not used
-- local atlas_icon_hc = 'Poke Suit UI.png' -- Optional, comment out if not used

local description = { 'Pokemon Hearts', 'Pokemon Clubs', 'Pokemon Diamonds', 'Pokemon Spades' } -- English-language description, also used as default. Can also be a table for each suit.

-----------------------------------------------------------
-- You should only need to change things above this line --
-----------------------------------------------------------

-- Atlases
SMODS.Atlas {
    key = atlas_key .. '_lc',
    px = 71,
    py = 95,
    path = atlas_lc_img
}

if atlas_hc_img then
    SMODS.Atlas {
        key = atlas_key .. '_hc',
        px = 71,
        py = 95,
        path = atlas_hc_img
    }
end

if atlas_icon_lc then
    SMODS.Atlas {
        key = atlas_key .. '_icon_lc',
        path = atlas_icon_lc,
        px = 18,
        py = 18
    }
end

if atlas_icon_hc then
    SMODS.Atlas {
        key = atlas_key .. '_icon_hc',
        path = atlas_icon_hc,
        px = 18,
        py = 18
    }
end

-- DeckSkin

for i, suit in ipairs(suits) do
    local palettes = {}

    -- Low-contrast palette
    local lc_palette = {
        key = "lc",
        ranks = ranks_to_use,
        display_ranks = ranks_to_use,
        atlas = atlas_key .. '_lc',
        pos_style = "deck"
    }
    if suit_colors_lc then
        lc_palette.colour = suit_colors_lc[i]
    end
    if atlas_icon_lc then
        lc_palette.suit_icon = {
            atlas = atlas_key .. '_icon_lc',
            pos = 1
        }
    end
    table.insert(palettes, lc_palette)

    -- High-contrast palette if provided
    if atlas_hc_img then
        local hc_palette = {
            key = "hc",
            ranks = ranks_to_use,
            display_ranks = ranks_to_use,
            atlas = atlas_key .. '_hc',
            pos_style = "deck"
        }
        if suit_colors_hc then
            hc_palette.colour = suit_colors_hc[i]
        end
        if atlas_icon_hc then
            hc_palette.suit_icon = {
                atlas = atlas_key .. '_icon_hc',
                pos = 1
            }
        end
        table.insert(palettes, hc_palette)
    end

    -- Description(s)
    local desc = description
    if type(description) == "table" then
        desc = description[i]
    end

    SMODS.DeckSkin {
        key = string.lower(suit) .. '_skin',
        suit = suit,
        loc_txt = desc,
        palettes = palettes
    }
end
