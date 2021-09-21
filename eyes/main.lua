function love.draw()

function draweye(eyeX,eyeY)
	
	-- 마우스 위치 가져오기 
	local distanceX = love.mouse.getX() - eyeX
	local distanceY = love.mouse.getY() - eyeY
	-- 직선거리 구하기
	local distance = math.min(math.sqrt(distanceX^2 + distanceY^2), 30)
	-- 각도 구하기
	local angle = math.atan2(distanceY, distanceX)

	-- 작은 눈알 좌표 구하기 
	local minieyeX = eyeX + (math.cos(angle) * distance)
	local minieyeY = eyeY + (math.sin(angle) * distance)
	
	-- 큰 눈알 색깔
	love.graphics.setColor(1,1,1)
	-- 큰 눈알 (색칠,x,y,크기)
	love.graphics.circle('fill',eyeX,eyeY,50)
	
	-- 작은 눈알 색깔
	love.graphics.setColor(0,0,1)
	-- 작은 눈알 (색칠,x,y,크기)
	love.graphics.circle('fill',minieyeX ,minieyeY ,14)
end

draweye(300,200)
draweye(500,200)

	


end
