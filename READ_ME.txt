# The Hero's Tournament

### WEAPONS
# 1. A weapon can be a sword, knife, bow, or staff.
# 2. A weapon has a base damage of 5.
# 3. A weapon may have one of the following qualities: 
    # "Shabby", "Normal", "Long", "Great", or "Bastard".
    # It will increase weapon damage by 0, 1, 2, 3, or 4 respectively.
# 3. A weapon may have one of the primary enchantments of 
    # "Fire", "Ice", "Shadow", or "Light"
# 4. A weapon may have one of the following secondary enchantments: 
    # "Healing", "Mighty", "Shielding", "Striking"
# 5. When a weapon print's itself it should display all it's enchantments.
    # Example 1 "Shielding Great Bow of Fire" (AWESOME)
    # Example 2 "Healing Shabby Staff" (bad quality but enchanted)
    # Example 3 "Normal Sword" (no enchantnets)

### Hero
# 0. A hero will have a name.
# 1. A hero will equip a weapon.
# 2. A hero will have a base health of 30 HP.
# 3. A hero will have a base armor of 1 to 4.
# 4. A hero will have a strength ranging from 2 to 5.
# 5. A hero will have an alignment. "Fire", "Ice", "Shadow" or "Light"
# 6. A hero will have a class. "Warrior", "Rouge", "Hunter", "Mage"
# 7. A warrior can only equip swords.
# 8. A rouge can only equip knives.
# 9. A hunter can only equip bows.
# 10. A mage can only equip staves.

### Combat
# 1. When a hero attacks another hero.
    # 1. The hero deals damage to their opponent.
        # Ice <=> Fire. Shadow <=> Light.
        # If enchantment <=> opponent alignment: str + weapon dmg + 3 - enemy armor.
        # Else if weapon is enchanted at all: str + weapon dmg + 1 - enemy armor.
        # Else: str + weapon dmg - enemy armor.
    # 2. If their weapon has a secondary enchantment:
        # "Healing" - Will heal 2 to HP to the hero every 
            # time they deal damage. (but not beyond their max HP)
        # "Mighty" - Will add 2 additional damage to each hit (before armor).
        # "Shielding" - Will increase the hero's armor by 2.
        # "Striking" - Will ignore 2 points of enemy armor.
    # 3. After a hero attacks their enemy the results should print to the console.

### Main
# 1. Generate 8 Heros. Ask a name from the user for each of them.
# 2. Give each hero a randomly generated weapon.
# 3. Each hero should fight in single elimination tournament style.
# 4. The winner of each heat should compete in the next heat. 
# 5. Once a hero loses they are dead and disqualified from the tournement.
# 7. At the start of each fight we should print each hero's name, stats, and weapon.
# 8. After the fight the winner should heal fully and we should print the hero's name.
