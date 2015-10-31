///scr_text("Text",speed,x,y)
if (instance_exists(obj_text)) {with obj_text {instance_destroy()}}
txt = instance_create(argument2,argument3,obj_text);
with txt {
    padding = 16;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt_text;
    draw_set_font(font);
    text_length = string_length(text);
    font_size = font_get_size(font);
    text_width = string_width_ext(text,font_size +(font_size /2),maxlength);
    text_height = string_height_ext(text,font_size +(font_size /2),maxlength);   
    box_width = text_width + (padding * 2);
    box_height = text_height + (padding * 2); 
}

