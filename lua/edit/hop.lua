function HopNf()
	require("hop").hint_char1({ direction = require("hop.hint").HintDirection.AFTER_CURSOR, current_line_only = true })
end

function HopNF()
	require("hop").hint_char1({ direction = require("hop.hint").HintDirection.BEFORE_CURSOR, current_line_only = true })
end

function HopOf()
	require("hop").hint_char1({
		direction = require("hop.hint").HintDirection.AFTER_CURSOR,
		current_line_only = true,
		inclusive_jump = true,
	})
end

function HopOF()
	require("hop").hint_char1({
		direction = require("hop.hint").HintDirection.BEFORE_CURSOR,
		current_line_only = true,
		inclusive_jump = true,
	})
end
