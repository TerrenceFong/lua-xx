--[[该源码由叉叉论坛作者[卡其色]提供]]
MathBit = {}

function MathBit.__andBit(left,right)    --与
    return (left == 1 and right == 1) and 1 or 0
end
 
function MathBit.__orBit(left, right)    --或
    return (left == 1 or right == 1) and 1 or 0
end
 
function MathBit.__xorBit(left, right)   --异或
    return (left + right) == 1 and 1 or 0
end
 
function MathBit.__base(left, right, op) --对每一位进行op运算，然后将值返回
    if left < right then
        left, right = right, left
    end
    local res = 0
    local shift = 1
    while left ~= 0 do
        local ra = left % 2    --取得每一位(最右边)
        local rb = right % 2   
        res = shift * op(ra,rb) + res
        shift = shift * 2
        left = math.modf( left / 2)  --右移
        right = math.modf( right / 2)
    end
    return res
end
 
function MathBit.andOp(left, right)
    return MathBit.__base(left, right, MathBit.__andBit)
end
 
function MathBit.xorOp(left, right)
    return MathBit.__base(left, right, MathBit.__xorBit)
end
 
function MathBit.orOp(left, right)
    return MathBit.__base(left, right, MathBit.__orBit)
end
 
function MathBit.notOp(left)
    return left > 0 and -(left + 1) or -left - 1
end
 
function MathBit.lShiftOp(left, num)  --left左移num位
    return left * (2 ^ num)
end
 
function MathBit.rShiftOp(left,num)  --right右移num位
    return math.floor(left / (2 ^ num))
end




-- 以下是 bit 库

bit = {
    data32 = {},
    data64 = {}
}

for i = 1, 32 do
    bit.data32[i] = 2 ^ (32 - i)
    bit.data64[i] = 2 ^ (64 - i)
end
 
function bit:d2b(arg)
    local tr = {}

    if arg > self.data64[32] then
        for i = 1, 32 do
            if arg >= self.data64[i] then
                arg = arg - self.data64[i]
                if arg < self.data64[32] then break end
            end
        end
    end

    for i = 1, 32 do
        if arg >= self.data32[i] then
            arg = arg - self.data32[i]
            tr[i] = 1
        else
            tr[i] = 0
        end
    end

    return tr
end

function bit:b2d(arg)
    local nr = 0
    for i = 1, 32 do
        if arg[i] == 1 then
            nr = nr + 2 ^ (32 - i)
        end
    end
    return nr
end

function bit:to32(arg)
    if arg > self.data64[32] then
        for i = 1, 32 do
            if arg >= self.data64[i] then
                arg = arg - self.data64[i]
                if arg < self.data64[32] then break end
            end
        end
    end

    return arg
end

function bit:to8(arg)
    if arg > self.data64[32] then
        for i = 1, 32 do
            if arg >= self.data64[i] then
                arg = arg - self.data64[i]
                if arg < self.data64[32] then break end
            end
        end
    end

    if arg > self.data32[24] then
        for i = 1, 24 do
            if arg >= self.data32[i] then
                arg = arg - self.data32[i]
                if arg < self.data32[24] then break end
            end
        end
    end

    return arg
end

-- 异或
function bit:_xor(a,b)
    local op1 = self:d2b(a)
    local op2 = self:d2b(b)
    local r = {}
 
    for i = 1, 32 do
        if op1[i] == op2[i] then
            r[i] = 0
        else
            r[i] = 1
        end
    end
    return self:b2d(r)
end

function bit:_bit_xor(a,b)
    if a == b then
        return 1
    else
        return 0
    end
end

function bit:_bit_or(a,b)
    if a == 1 or b == 1 then
        return 1
    else
        return 0
    end
end

function bit:sigma(a,b,c,d,e)
    local op1 = self:d2b(a)
    local op2 = self:d2b(b)
    local op3 = self:d2b(c)
    local op4 = self:d2b(d)
    local op5 = self:d2b(e)
    local r = {}

    for i = 1, 32 do
        r[i] = self:_bit_xor(self:_bit_or(op1[i], op2[i]), self:_bit_xor(self:_bit_or(op3[i], op4[i]), op5[i]))
    end

    return self:b2d(r)
end

-- 与
function bit:_and(a,b)
    local op1 = self:d2b(a)
    local op2 = self:d2b(b)
    local r = {}
    
    for i = 1, 32 do
        if op1[i] == 1 and op2[i] == 1 then
            r[i]=1
        else
            r[i]=0
        end
    end
    return self:b2d(r)
    
end

-- 或
function bit:_or(a,b)
    local op1 = self:d2b(a)
    local op2 = self:d2b(b)
    local r = {}
    
    for i = 1, 32 do
        if op1[i] == 1 or op2[i] == 1 then
            r[i] = 1
        else
            r[i] = 0
        end
    end

    return self:b2d(r)
end

-- 或 连续4次
function bit:_or4(a,b,c,d)
    local op1 = self:d2b(a)
    local op2 = self:d2b(b)
    local op3 = self:d2b(c)
    local op4 = self:d2b(d)
    local r = {}
    
    for i = 1, 32 do
        if op1[i] + op2[i] + op3[i] + op4[i] > 0 then
            r[i] = 1
        else
            r[i] = 0
        end
    end
    return self:b2d(r)
end

-- 非
function bit:_not(a)
    local op1 = self:d2b(a)
    local r = {}
 
    for i = 1, 32 do
        if op1[i] == 1 then
            r[i] = 0
        else
            r[i] = 1
        end
    end
    return self:b2d(r)
end

function bit:_rshift(a,n)
    local op1 = self:d2b(a)
    local r = self:d2b(0)
    
    if n < 32 and n > 0 then
        for i = 1, n do
            for i = 31, 1, -1 do
                op1[i+1] = op1[i]
            end
            op1[1] = 0
        end
    r = op1
    end
    return self:b2d(r)
end
 
function bit:_lshift(a,n)
    local op1 = self:d2b(a)
    local r = self:d2b(0)
    
    if n < 32 and n > 0 then
        for i = 1, n do
            for i = 1, 31 do
                op1[i] = op1[i+1]
            end
            op1[32] = 0
        end
    r=op1
    end
    return self:b2d(r)
end

function bit:print(ta)
    local sr=""
    for i = 1, 32 do
        sr = sr..ta[i]
    end
    print(sr)
end