public class Hw4 : SEScene
{

	SESprite text;
	SESprite mainscene;
	SESprite sprite;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
			add_sprite_for_color(Color.instance("blue"), get_scene_width(), get_scene_height());
			
			rsc.prepare_image("home", "home", get_scene_width()*0.2,get_scene_height()*0.2);
			rsc.prepare_image("image4", "image4", get_scene_width()*0.5,get_scene_height()*0.65);
			rsc.prepare_font("myfont", "calibri  color=#000000", 80);
			
			mainscene = add_sprite_for_image(SEImage.for_resource("home"));
		    sprite = add_sprite_for_image(SEImage.for_resource("image4"));
			text = add_sprite_for_text("Sulley", "myfont");

		mainscene.move(0,600);
		    sprite.move(get_scene_width()*0.5,0);
			text.move(0,0);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,600,0.75*get_scene_width(),0.75*get_scene_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}