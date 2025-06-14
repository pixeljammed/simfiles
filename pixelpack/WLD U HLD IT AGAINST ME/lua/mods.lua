if not P1 or not P2 then
	backToSongWheel('Two Player Mode Required')
	return
end

-- judgment / combo proxies
for pn = 1, 2 do
	setupJudgeProxy(PJ[pn], P[pn]:GetChild('Judgment'), pn)
	setupJudgeProxy(PC[pn], P[pn]:GetChild('Combo'), pn)
end
-- player proxies
for pn = 1, #PP do
	PP[pn]:SetTarget(P[pn])
	P[pn]:hidden(1)
end

-- your code goes here here:
setdefault {1, 'xmod', 100, 'overhead', 100, 'dizzyholds', 100, 'modtimer'}

set {0, 100, 'invert'}
set {0, 0, 'zoom'}
ease {0, 1, outExpo, 0, 'invert'}
ease {0, 1, outExpo, 100, 'zoom'}


ease {
	0, 4, inCubic,
	30, 'drunk',
	30, 'tipsy',
	30, 'wave',
	30, 'expand',
}

ease {
	24, 1, inCubic,
	0, 'drunk',
	0, 'tipsy',
	0, 'wave',
	0, 'expand',
}

ease { 22 , 4, outExpo, 2, 'xmod'}

ease {
	32, 1, inCubic,
	15, 'drunk',
	15, 'tipsy',
	15, 'wave',
	15, 'expand',
}

ease { 63 , 1, outExpo, 50, 'beat'}

ease {
	62, 2, outExpo,
	0, 'drunk',
	0, 'tipsy',
	0, 'wave',
	0, 'expand',
}

-- DROP
set {96, 100, 'beat'}
ease { 92 , 4, outExpo, 3, 'xmod'}
--ease { 92 , 4, outExpo, 200, 'longholds'}

-- DROP OFF
ease { 156 , 4, outExpo, 1.5, 'xmod'}
set {160, 0, 'beat'}

-- DINKS
ease { 220 , 4, outExpo, 1, 'xmod'}
ease { 224 , 16, outExpo, 50, 'dizzy'}
ease { 224 , 16, outExpo, 50, 'dizzyholds'}

-- DROP 2
ease { 284 , 4, outExpo, 3, 'xmod'}
ease { 280 , 4, outExpo, 0, 'dizzy'}
ease { 280 , 4, outExpo, 0, 'dizzyholds'}