**PLEASE NOTE THAT THIS LIBRARY IS STILL VERY EARLY IN DEVELOPMENT. WHILE I EXPECT ALREADY IMPLEMENTED FEATURES TO STAY THE SAME WITH FUTURE UPDATES OF THE PACK, I CAN NOT GURANTEE SO AT THIS POINT IN TIME**

This datapack library aims to establish a standardised mana/magic system multiple packs can use without breaking each other or getting confusing for the user.

<details>
<summary>Basic functionality</summary>
  
Mana is the main **resource used to cast any form of magic**. 
By default, a player can **hold up to 1000 mana**, once they reach that point, they simply stop regenerating. Without any modifiers, **5 mana points are regenerated per second**. 
Through armor pieces, potions or other sources it's possible to not only **increase the amount of mana/second** a player regenerates but also to unlock up to 1000 points of **overflow mana**.

Each point of overflow mana allows the player to store one mana above what would usually be the maximum of 1000, **allowing for up to 2000 mana to be stored**.
</details>


<details>
<summary>Interacting with the library</summary>
  
### Abilities/Items that use mana:
To deplete use a set amount of mana run:
`function hexenkraft:_public/mana/use {amount:<AMOUNT>}` (e.g. with `execute store result`)
This will only use mana if the player has enough, in which case the function will return `1`, if the player does **not** have enough mana, the function will return `-1` and give audible feedback to the player. In the future, this will also be communicated by animating the mana bar.

  
### Items that grant additional mana regen / overflow
To allow for any item to increase mana regen or overflow, simply add the following to the items `"minecraft:custom_data"` component:
`{hexenkraft:{attributes:{<SLOT TYPE>:true,<MODIFIER TYPE>:true,<MODIFIER TYPE>_amount:<AMOUNT>}}}`

`<SLOT TYPE>`: The slots the item needs to be in for the modifier to activate. Can be any or all of: `armor`, `offhand` or `mainhand`

`<MODIFIER TYPE>`: The type of the modifier. Can be any or all of: `overflow`, `regen`

`<AMOUNT>`: The amount of additional mana to regenerate per second/of overflow mana to be freed. Can be any integer, though overflow mana can not be negative.

### Reading mana values

All mana values are stored in scoreboards:

`hexenkraft.mana.amount` -> Current amount of stored mana

`hexenkraft.mana.overflow` -> Amount of theoretically acessible overflow mana

`hexenkraft.mana.max` -> Maximum mana of a player, including their current overflow mana

`hexenkraft.mana.regen` -> Amount of mana to be regenerated / second

**PLEASE** do NOT ever directly modify these scoreboards, as doing so can break core functions of the library or compatibility with other packs. If you feel the need to change any of these and find no native way to do so using the library, please request for such function either via github issues or in the linked discord server!

If you for some reason want to get the current mana percentage of a player simply run:
`function hexenkraft:_public/get/mana_percentage`
And then read from scoreboard `hexenkraft.mana.percentage`

### Utility functions

These functions can be run during development but are not supposed to be used in packs. 

`/function hexenkraft:_public/mana/add {amount:<AMOUNT>}` -> increases the players mana by a set amount

`/function hexenkraft:_public/mana/deplete` -> sets the players current mana to 0

`/function hexenkraft:_public/mana/fill` -> completely fills up the players mana, including overflow

`/function hexenkraft:_public/mana/no_overflow` -> completely fills up the players mana, excluding overflow

`/function hexenkraft:_public/mana/set {amount:<AMOUNT>}` -> sets the players mana to a specific amount
</details>

<details>
<summary>Recommendations for developers</summary>
  
- Though internally, the can hold up to 1000/2000 mana, it is recommended to communicate it as 100/200 to the player. E.g. 5 mana points -> 0.5 mana, 500 -> 50 mana, etc.
- Don't run any functions not in the `_public` folder :P
- More recommendations to be added soon™️
</details>


<details>
<summary>Planned features</summary>

  - A textured mana bar in line with all of the vanilla attribute bars (e.g. health & armor), automatically which reacts to mana usage and shows the amount of mana needed in case the player does not already have enough
  - The ability for packs to artificially regnerate set amounts of mana
  - Being able to temporarily increase mana regen or overflow independently of item attributes
  - Further optimisation of the pack
  - Whatever the people long for :)
 
</details>
