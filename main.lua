-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local composer = require("composer")
local widget = require("widget")
local pacman = require("pacman")
-- local mapaClassico = require("mapaClassico")
composer.gotoScene("mapaClassico")
pacman:criar(160, 231)

-- Your code here
-- local circulo = display.newCircle(display.contentCenterX, display.contentCenterY, 20)
-- physics.addBody(circulo, {radius = tamanho})
function moverCima( event )
	pacman:moverCima()
	-- circulo.y = circulo.y - 10
end

function moverBaixo( event )
	pacman:moverBaixo()
	-- circulo.y = circulo.y + 10
end

function moverEsquerda( event )
	pacman:moverEsquerda()
	-- circulo.x = circulo.x - 10
end

function moverDireita( event )
	pacman:moverDireita()
-- circulo.x = circulo.x + 10
end



physics.setDrawMode( "hybrid" )
widget.newButton({label = "◄", x = 40, y = 480,width = 80, height = 50, shape = "rect" , onRelease  = moverEsquerda})
widget.newButton({label = "▲", x = 120, y = 480, width = 80, height = 50, shape = "rect" , onRelease  = moverCima})
widget.newButton({label = "►", x = 280, y = 480,width = 80, height = 50, shape = "rect" , onRelease  = moverDireita})
widget.newButton({label = "▼", x = 200, y = 480,width = 80, height = 50, shape = "rect" , onRelease  = moverBaixo})

