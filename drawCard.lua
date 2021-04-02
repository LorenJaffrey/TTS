local deck
local deckGUID = "3d80f6"

function onLoad()
    deck = getObjectFromGUID(deckGUID)
    self.createButton({
        click_function = "drawCard",
        function_owner = self,
        label          = "Draw from Top",
        tooltip        = "Draw a card",
        position       = {0, 1, 0},
        rotation       = {0, 0, 0},
        width          = 2400,
        height         = 400,
        font_size      = 340,
        color          = {0.5, 0.5, 0.5},
        font_color     = {1, 1, 1}
    })
end

function drawCard()
    deck.deal(1)
end