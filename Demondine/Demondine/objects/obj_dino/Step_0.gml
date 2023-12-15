/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if vida > 0 {
script_execute(estado);
}else {
	audio_play_sound(snd_dino, 1, 0);
	instance_destroy();	
}
