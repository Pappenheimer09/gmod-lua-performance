--[[
	--- Benchmark complete
	reps	30	rounds	5000
	On Server
	Zero'd	1.0690399993981e-07
	Cached	5.7774666679128e-08
	Create	3.0156200007203e-07
	--- Benchmark complete
	reps	30	rounds	5000
	On Client
	Zero'd	1.0355866663569e-07
	Cached	5.5381333346152e-08
	Create	1.8186866671461e-07
--]]
local ZeroCached =Angle(0,0,0)
local ang = Angle(0,0,0)
LuctusCompareOften(30,0.1,5000,{
    {"Zero'd",function()
        ang:Zero()
        return ang
    end},
		{"Cached",function()
        return ZeroAng
    end},
    {"Create",function()
        return Angle(0,0,0)
    end},
})
