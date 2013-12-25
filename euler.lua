function love.load()
  love.graphics.setBackgroundColor(51,51,51)
  love.mouse.setVisible(true)
  --screen_width = love.graphics.getWidth()
  --screen_height = love.graphics.getHeight()
  love.graphics.setLineWidth(2)
  love.graphics.setLineStyle("smooth")
  love.graphics.setColor(182,12,72)
  t={100,500, 200,500}
end

--e = {x1 = 100, y1 = 500, x2 = 200, y2 = 500}
--length = math.sqrt(math.pow((e.x1-e.x2),2) + math.pow((e.y1-e.y2),2))
--function love.update(dt)
--end
function love.draw()
	for n=1,10,2 do
  	t[n+4] = t[n+2] + 30*math.cos((-math.pi/9)*n) 
  	t[n+5] = t[n+3] + 30*math.sin((-math.pi/9)*n)
  	love.graphics.line(t)
	end
  --love.graphics.print(length,10,10)
end
