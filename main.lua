require('util')
require('secs')
require('hexo')


arse = hexo:new()
arse:init()

function love.update(dt)
  doit = 0.1
  if lk.isDown("right") then
    arse.rotation = arse.rotation + (doit * dt)
  end
  if lk.isDown("left") then
    arse.rotation = arse.rotation - (doit * dt)
  end
  arse:update(dt)
end

function love.draw(dt)
  arse:draw(dt)
end