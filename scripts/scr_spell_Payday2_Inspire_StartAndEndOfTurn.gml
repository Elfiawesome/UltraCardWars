///scr_spell_Payday2_Inspire_WhenCasted()
var MapStr=argument0;

if mysocket=global.NetworkObj.mysocket{
    var _con=global.NetworkObj.socket_to_instanceid[? mysocket]
    //creating selector
    var _o=instance_create(0,0,obj_cardselector_control)
    for(var i=0;i<ds_list_size(_con.DeadCardList);i++){
        ds_list_add(_o.cardlist,_con.DeadCardList[| i])
    }
    _o.CardHolderInitiator=id
    _o.ControlParent=_con
    ds_list_add(_con.GUIObjectOrder,_o)
}
