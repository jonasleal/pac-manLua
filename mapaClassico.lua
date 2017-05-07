local composer = require("composer")
local physics = require("physics")
local largura = display.contentWidth
local altura = display.contentHeight
local centroX = display.contentCenterX
local centroY = display.contentCenterY
local scene = composer.newScene()
local tPacMan = 12 * 2
physics.start(true)



function linhaVertical(x , y, comprimento, espessura)
	
	local linha = display.newLine(x, y, x ,y + comprimento)
	linha.strokeWidth = espessura

	physics.addBody(linha, "static", { friction = 1, bounce = 0, shape = {espessura*-1, 0 , espessura , 0 , espessura*-1 ,
													 comprimento, espessura ,comprimento}})
end
function linhaHorizontal(x , y, comprimento, espessura)
	
	local linha = display.newLine(x, y, x+ comprimento ,y)
	linha.strokeWidth = espessura

	physics.addBody(linha, "static", { friction = 1, bounce = 0, shape = {0, espessura*-1 , 0 , espessura , comprimento ,
													 espessura * -1, comprimento ,espessura}})
end

function scene:create( event )
	local imagemFundo = display.newImage("img/classico.jpg", 159 , 150)
	constroiContorno()
	constroiTopo()
	constroiCentro()
	constroiBaixo()
	

end

function constroiTopo()
	--I topo
	linhaVertical(160,5, 39, 7)
	--Barra topo
	linhaHorizontal( 29, 34, 37, 10)
	linhaHorizontal( 85, 34, 49, 10)
	linhaHorizontal( 187, 34, 48, 10)
	linhaHorizontal( 255, 34, 35, 10)
	linhaHorizontal( 29, 69, 37, 5)
	linhaHorizontal( 255, 69, 35, 5)
	--T centro
	linhaHorizontal(119, 69, 82 , 5)
	linhaVertical(160,74, 29, 7)
end

function constroiCentro()
	-- T esqedo
	linhaVertical(92,64,68,7)
	linhaHorizontal(99,98,34,5)
	-- T direito
	linhaVertical(228,64,68,7)
	linhaHorizontal(187,98,34,5)
	-- I esquerdo
	linhaVertical(92 , 152, 40, 7)
	
	-- I esquerdo
	linhaVertical(228 , 152, 40, 7)
	-- Caixa centro
	linhaHorizontal(120, 125, 30, 2)
	linhaHorizontal(170,125, 30, 2)
	linhaVertical(121, 125, 35, 2)
	linhaVertical(199, 125, 35, 2)
	linhaHorizontal(120, 160, 80 , 2)
	--T centro
	linhaHorizontal(119, 187, 82 , 5)
	linhaVertical(160,192, 29, 7)
end
function constroiBaixo()
	--L esquerdo
	linhaHorizontal(29, 216, 37, 5)
	linhaVertical(59,222, 28, 7)
	--Barra esquerda	
	linhaHorizontal(85, 216, 48, 5)
	--Barra direita
	linhaHorizontal(187, 216, 48, 5)
	--L Direito
	linhaHorizontal(255, 216, 35, 5)
	linhaVertical(262,222, 28, 7)
	--Barra Esquerda
	linhaHorizontal(9, 245, 22, 5)
	--T Esquerdo
	linhaVertical(92, 241, 28, 7)
	linhaHorizontal(29, 275, 104,5)
	--T Centro
	linhaHorizontal(120, 245, 81,5)
	linhaVertical(160, 251, 29, 7)
	--T Direito
	linhaVertical(228, 241, 28, 7)
	linhaHorizontal(187, 275, 103,5)
	--Barra Direita
	linhaHorizontal(289, 245, 22, 5)
end

function constroiContorno()
	-- contorno do cenario
	linhaHorizontal(8, 4, 303, 1)	--1
	linhaVertical(8 , 4, 90, 1)
	linhaVertical(312 , 4, 90, 1)
	linhaHorizontal(5, 113, 61, 19)
	linhaHorizontal(255, 113, 60, 19)
	linhaHorizontal(5, 172, 61, 19)
	linhaHorizontal(255, 172, 60, 19)
	linhaVertical(8 , 190, 110, 1)
	linhaVertical(312 , 190, 110, 1)
	linhaHorizontal(8, 301, 303, 1)
end

scene:addEventListener("create", scene)
return scene