if (flash) { shader_set(shdFlash); }

draw_sprite_ext(sprite_index, image_index, x, y, 1 + xScaleOffset, 1 + yScaleOffset, xSpd * 4, image_blend, 1);

if (flash) { shader_reset(); }

draw_sprite_ext(sprPlayerFace, playerFaceFrame, x, y - 16, 1 + xScaleOffset, 1 + yScaleOffset, xSpd * 4, c_white, 1);