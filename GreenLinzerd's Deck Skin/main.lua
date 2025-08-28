local atlas_key = 'greenlinzerd_atlas' -- "{prefix}_atlas"

local atlas_lc_img = 'deck.png' -- Filename for the image in the asset folder
-- local atlas_hc_img = '' -- Optional, comment out if not used

local suits = {'Hearts', 'Clubs', 'Diamonds', 'Spades'} -- Which suits to replace
local ranks_to_use = {'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', "King", "Ace"} -- Which ranks to replace

-- local suit_colors_lc = {HEX("")} -- Optional, comment out if not used
-- local suit_colors_hc = {HEX("")} -- Optional, comment out if not used

-- local atlas_icon_lc = '' -- Optional, comment out if not used
-- local atlas_icon_hc = '' -- Optional, comment out if not used

local description = 'GreenLinzerd Deck' -- English-language description, also used as default. Can also be a table for each suit.

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
            pos_style = "deck",
            hc_default = true,
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
