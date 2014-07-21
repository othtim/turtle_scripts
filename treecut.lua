--program assumes that a tree will be planted directly in front of the turtle, and that there is a chest (to deposit items in) directly below the turtle.

local sapling 

function plant()
 --assuming saplings are in slot 1 of turtle inventory
 sapling = turtle.getItemCount(1)
 if (sapling > 1) then
  turtle.select(1)
  turtle.place()
  --make sure tree is grown. compare whatevers in front of turtle with whatevers in slot 2 of inventory. 
  --assuming that wood from tree is in slot 2.
  --this will loop till tree is grown, so turtle knows when to harvest.
  turtle.select(2)
  while(not turtle.compare()) do
   --bogomips
  end
 end
end

--assumes fuel is in slot 16 of turtle inventory
function checkFuel()
 if turtlegetFuelLevel() <= 5 then
  turtle.select(16)
  turtle.refuel(1)
  turtle.select(1)
 end
end

sapling = turtle.getItemCount(1)


while (sapling > 1) do
 plant()
 while turtle.detect() do
  checkFuel()
  turtle.dig()
  print("Digging the block")
  print turtle.digUp()
  turtle.up()
  print("Moving up")
 end
 while not turtle.detect() and not turtle.detectDown() do
  checkFuel()
  turtle.down()
  print("Moving down")
 end
 print("Job done")

 local firstItem,lastItem = 5,15
 for i=firstItem,lastItem do
  turtle.select(i)
  turtle.dropDown()
 end

end


