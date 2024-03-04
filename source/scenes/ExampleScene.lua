ExampleScene = {}
class("ExampleScene").extends(NobleScene)
local scene = ExampleScene

function scene:init()
	scene.super.init(self)

end

function scene:enter()
	scene.super.enter(self)


    scene.cloudSprite = NobleSprite(
		"assets/images/cloud_1.png"
	)
	scene.cloudSprite:add()
	scene.cloudSprite:setZIndex(10)
	scene.cloudSprite:moveTo(200, 100)


	scene.tileImage = Graphics.imagetable.new("assets/images/bird")
    scene.tileAnimation = Noble.Animation.new(scene.tileImage)
    scene.tileAnimation:addState(
        "idle",
        1,
        scene.tileAnimation.imageTable:getLength()
    )
    scene.tileSprite = NobleSprite(scene.tileAnimation)
	scene.tileSprite:add()
    scene.tileSprite:setZIndex(9)
	scene.tileSprite:moveTo(200, 100)
end

function scene:update()
	scene.super.update(self)

	-- need this draw call to see the sprite
	-- but it does not respect ZIndex
	-- scene.tileAnimation:draw(200, 100)
end
