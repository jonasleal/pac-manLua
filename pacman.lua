local composer = require("composer")
local pacman = composer.newScene()
local physics = require("physics")

pacman.orientacao = 0
pacman.tempoInvencivel = 0
pacman.estaAndando = false
local tamanho = 7

function pacman:criar( x , y )
	--pacman.imagem  = display.newCircle(x, y, tamanho)
	pacman.imagem = display.newRect(x, y, 15, 15 )
	physics.start(true)
	physics.setGravity(0,0)
	physics.addBody( pacman.imagem, {friction = 1, bounce = 0})
	--physics.addBody( pacman.imagem, {friction = 1, bounce = 0, radius = tamanho})
end

function pacman:andar()
	
end

function pacman:moverCima()
	local posicao = pacman.imagem.y - 10 
	pacman.imagem.y = posicao
end

function pacman:moverBaixo()
	local posicao = pacman.imagem.y + 10 
	pacman.imagem.y = posicao
end

function pacman:moverEsquerda()
	local posicao = pacman.imagem.x - 10 
	pacman.imagem.x = posicao
end

function pacman:moverDireita()
	local posicao = pacman.imagem.x + 10 
	pacman.imagem.x = posicao
end


return pacman