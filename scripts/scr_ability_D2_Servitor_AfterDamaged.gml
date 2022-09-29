///scr_ability_D2_Servitor_AfterDamaged()
var MapStr=argument0;

if Stats[? "Finalized_Hp"]<1{
    if Stats[? "AbilityConstantTarget"]!=noone && instance_exists(Stats[? "AbilityConstantTarget"]){
        with(Stats[? "AbilityConstantTarget"]){
            //remove its immunity
            var _m=Stats[? "Multi_IsImmune"];
            ds_map_delete(_m,GetMultiStatsString(other.id))
            player_con_CardholdersUpdateMultiStats()
        }
        //ability is completed
        Stats[? "AbilityAlrdy"]=true
    }
}
