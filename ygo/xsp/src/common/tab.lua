-- 点击函数 （含偏差值）
local function tab(x, y)
    x = x + math.random(-2, 2)
    y = y + math.random(-2, 2)
    touchDown(1, x, y)
    mSleep(50)
    touchUp(1, x, y)
end

return tab