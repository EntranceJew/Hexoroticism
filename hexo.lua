require('secs')
hexo = {}
hexo = class:new()

function hexo:init()
  self.diameter = 80 --units from center
  self.cord = {200,200}
  self.rotation = 1.0

  self.points = {}
  self.dex_points = {}
end

function hexo:update(dt)
  self.points = {}
  self.dex_points = {}
  self.factor = (2.0 * math.pi / 0.6) * self.rotation;
  for i=1,6 do
    x = self.cord[1] + (self.diameter * math.cos(i * self.factor))
    y = self.cord[2] + (self.diameter * math.sin(i * self.factor))
    table.insert(self.points, x)
    table.insert(self.points, y)
    table.insert(self.dex_points, {x, y})
  end
end

function hexo:draw(dt)
  love.graphics.polygon('line', self.points)
end