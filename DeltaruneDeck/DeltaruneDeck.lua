local suits = {
  Hearts = SMODS.Atlas {
    key = "collab_dr_hearts",
    path = "collab_DR_hearts.png",
    px = 71,
    py = 95,
  },
  Spades = SMODS.Atlas {
    key = "collab_dr_spades",
    path = "collab_DR_spades.png",
    px = 71,
    py = 95,
  }
}

for suit, atlas in pairs(suits) do
  SMODS.DeckSkin {
    key = atlas.key,
    suit = suit,
    loc_txt = "Deltarune",
    palettes = {
      {
        key = "lc",
        ranks = {'Jack', 'Queen', "King"},
        display_ranks = {"King", "Queen", "Jack"},
        atlas = atlas.key,
        pos_style = 'collab'
      }
    }
  }
end