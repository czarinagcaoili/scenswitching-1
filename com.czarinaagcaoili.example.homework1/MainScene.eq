
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{


	SESprite image1;
	SESprite image2;
	SESprite image3;
	SESprite image4;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("blue"), get_scene_width(), get_scene_height());
	rsc.prepare_image("image1", "image1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("image2", "image2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("image3", "image3", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("image4", "image4", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "calibri color=black", 40);
	
	image1 = add_sprite_for_image(SEImage.for_resource("image1"));
	image2 = add_sprite_for_image(SEImage.for_resource("image2"));
	image3 = add_sprite_for_image(SEImage.for_resource("image3"));
	image4 = add_sprite_for_image(SEImage.for_resource("image4"));
	text = add_sprite_for_text("Disney Characters", "myfont");
	
	image1.move(0,0);
	image2.move(0,get_scene_height()*0.5);
	image3.move(get_scene_width()*0.5,0);
	image4.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Hw1());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Hw2());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Hw3());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Hw4());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}