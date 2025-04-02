--- STEAMODDED HEADER
--- MOD_NAME: Friends Of Lavvo 1
--- MOD_ID: FriendsOfLavvo1
--- PREFIX: friendsoflavvoone
--- MOD_AUTHOR: [Lavender9999]
--- MOD_DESCRIPTION: A Friends of Jimbo styled mod!
--- PRIORITY: -248
--- BADGE_COLOR: B30245
--- DISPLAY_NAME: Friends Of Lavvo 1
--- VERSION: 1.1.1

-- ///////////////// ( Mouthwashing, Clubs ) ///////////////////

SMODS.Atlas {
    key = "mouthwash",
    path = "mouthwash.png",
    px = 71,
    py = 95,
}
SMODS.Atlas {
    key = "mouthwashHC",
    path = "mouthwashHC.png",
    px = 71,
    py = 95,
}

SMODS.DeckSkin {
    key = "MouthwashClubs",
    suit = "Clubs",
    loc_txt = "Mouthwashing",
    palettes = {
        {
            key = 'lc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_mouthwash",
            pos_style = "collab"
        },
        {
            key = 'hc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_mouthwashHC",
            pos_style = "collab"
        }
    },
}

-- ///////////////// ( Khonjin House, Spades ) ///////////////////

SMODS.Atlas {
    key = "khonjin",
    path = "khonjin.png",
    px = 71,
    py = 95,
}
SMODS.Atlas {
    key = "khonjinHC",
    path = "khonjinHC.png",
    px = 71,
    py = 95,
}

SMODS.DeckSkin {
    key = "KhonjinSpades",
    suit = "Spades",
    loc_txt = "Khonjin House",
    palettes = {
        {
            key = 'lc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_khonjin",
            pos_style = "collab"
        },
        {
            key = 'hc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_khonjinHC",
            pos_style = "collab"
        }
    },
}

-- ///////////////// ( OFF, Hearts ) ///////////////////

SMODS.Atlas {
    key = "off",
    path = "off.png",
    px = 71,
    py = 95,
}
SMODS.Atlas {
    key = "offHC",
    path = "offHC.png",
    px = 71,
    py = 95,
}

SMODS.DeckSkin {
    key = "OffHearts",
    suit = "Hearts",
    loc_txt = "OFF",
    palettes = {
        {
            key = 'lc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_off",
            pos_style = "collab"
        },
        {
            key = 'hc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_offHC",
            pos_style = "collab"
        }
    },
}

-- ///////////////// ( Pizza Tower, Diamonds ) ///////////////////

SMODS.Atlas {
    key = "pt",
    path = "pt.png",
    px = 71,
    py = 95,
}
SMODS.Atlas {
    key = "pthc",
    path = "pthc.png",
    px = 71,
    py = 95,
}

SMODS.DeckSkin {
    key = "PizzaTowerDiamonds",
    suit = "Diamonds",
    loc_txt = "Pizza Tower",
    palettes = {
        {
            key = 'lc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_pt",
            pos_style = "collab"
        },
        {
            key = 'hc',
            ranks = { "Jack", "Queen", "King" },
            display_ranks = { "Jack", "Queen", "King" },
            atlas = "friendsoflavvoone_pthc",
            pos_style = "collab"
        }
    },
}