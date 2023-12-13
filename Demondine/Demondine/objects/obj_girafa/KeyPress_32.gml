/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if global.dialogo == false {
	if global.uso == true {
		global.troca = !global.troca;
		if global.troca == 0 {
			audio_play_sound(snd_carga, 1, 0)	
		}
	}
}



