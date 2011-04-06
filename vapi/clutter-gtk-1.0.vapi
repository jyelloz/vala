/* clutter-gtk-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GtkClutter", lower_case_cprefix = "gtk_clutter_")]
namespace GtkClutter {
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public class Actor : Clutter.Actor, Clutter.Scriptable, Clutter.Animatable, Atk.Implementor, Clutter.Container {
		[CCode (type = "ClutterActor*", has_construct_function = false)]
		public Actor ();
		public unowned Gtk.Widget get_contents ();
		public unowned Gtk.Widget get_widget ();
		[CCode (type = "ClutterActor*", has_construct_function = false)]
		public Actor.with_contents (Gtk.Widget contents);
		[NoAccessorMethod]
		public Gtk.Widget contents { owned get; set construct; }
	}
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public class Embed : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Embed ();
		public unowned Clutter.Actor get_stage ();
	}
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public class Texture : Clutter.Texture, Clutter.Scriptable, Clutter.Animatable, Atk.Implementor {
		[CCode (type = "ClutterActor*", has_construct_function = false)]
		public Texture ();
		public static GLib.Quark error_quark ();
		public bool set_from_icon_name (Gtk.Widget widget, string icon_name, Gtk.IconSize icon_size) throws GLib.Error;
		public bool set_from_pixbuf (Gdk.Pixbuf pixbuf) throws GLib.Error;
		public bool set_from_stock (Gtk.Widget widget, string stock_id, Gtk.IconSize icon_size) throws GLib.Error;
	}
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public class Window : Gtk.Window, Atk.Implementor, Gtk.Buildable {
		[CCode (type = "GtkWidget*", has_construct_function = false)]
		public Window ();
		public unowned Clutter.Actor get_stage ();
	}
	[CCode (cprefix = "GTK_CLUTTER_TEXTURE_ERROR_INVALID_STOCK_", has_type_id = false, cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public enum TextureError {
		ID
	}
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public const int CLUTTER_GTK_MAJOR_VERSION;
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public const int CLUTTER_GTK_MICRO_VERSION;
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public const int CLUTTER_GTK_MINOR_VERSION;
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public const int CLUTTER_GTK_VERSION_HEX;
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public const string CLUTTER_GTK_VERSION_S;
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public static bool check_version (uint major, uint minor, uint micro);
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public static unowned GLib.OptionGroup get_option_group ();
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public static Clutter.InitError init ([CCode (array_length_pos = 0.9)] ref unowned string[] argv);
	[CCode (cheader_filename = "clutter-gtk/clutter-gtk.h")]
	public static Clutter.InitError init_with_args ([CCode (array_length_pos = 0.9)] ref unowned string[] argv, string parameter_string, [CCode (array_length = false)] GLib.OptionEntry[] entries, string? translation_domain) throws GLib.Error;
}