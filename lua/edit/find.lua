return {
	nf = function()
		require("hop").hint_char1({
			direction = require("hop.hint").HintDirection.AFTER_CURSOR,
			current_line_only = true,
		})
	end,

	nF = function()
		require("hop").hint_char1({
			direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
			current_line_only = true,
		})
	end,
}
