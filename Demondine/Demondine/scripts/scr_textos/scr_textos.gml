// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_textos(){
	switch npc_nome {
		case "Neuromancer" :
		texto[0] = "Parece que você realmente é forte, boom pegue estes itens";
		global.uso = 1;
		texto[1] = "Até a próxima";
		instance_destroy(obj_inimigo.id)
		break;
	}
}