local atlas_hc = SMODS.Atlas {
key = "skin_hc",
path = "collab_AU_2.png",
px = 71,
py = 95,
}

local atlas_lc = SMODS.Atlas {
key = "skin_lc",
path = "collab_AU_1.png",
px = 71,
py = 95,
}

SMODS.DeckSkin {
key = "htmfcd",
suit = "Hearts",
loc_txt = "Zelda",
palettes = {
{
key = 'lc',
ranks = {'Jack', 'Queen', 'King',},
display_ranks = {"King", "Queen", "Jack"},
atlas = atlas_lc.key,
pos_style = 'collab',
suit_icon = {
pos = 0,
},
},
{
key = 'hc',
ranks = {'Jack', 'Queen', 'King',},
display_ranks = {"King", "Queen", "Jack"},
atlas = atlas_hc.key,
pos_style = 'collab',
colour = HEX("d62115"),
suit_icon = {
pos = 0,
},
},
},
}