$data modify storage hexenwerk:temp update_command set from storage hexenwerk:spells spells[{old_spell_id:$(spell_id_old)}].command
function hexenwerk:update/spellbook with storage hexenwerk:temp