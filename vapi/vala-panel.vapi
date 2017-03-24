/* vala-panel.vapi generated by valac 0.34.0, do not modify. */

namespace ValaPanel {
	namespace Data {
		[CCode (cheader_filename = "vala-panel.h")]
		public const string EXPANDABLE;
		[CCode (cheader_filename = "vala-panel.h")]
		public const string ONE_PER_SYSTEM;
	}
	[CCode (cheader_filename = "vala-panel.h", cname = "PanelApplet")]
	public abstract class Applet : Gtk.EventBox {
		public Applet (ValaPanel.Toplevel top, GLib.Settings? s, uint num);
		public abstract void create ();
		public void init_background ();
		public void menu_position_func (Gtk.Menu m, out int x, out int y, out bool push);
		public void popup_position_helper (Gtk.Widget popup, out int x, out int y);
		public void set_popup_position (Gtk.Widget popup);
		public void show_config_dialog ();
		public virtual void update_context_menu (ref GLib.Menu parent_menu);
		public Gtk.Widget background_widget { get; set; }
		public uint number { get; construct; }
		public GLib.Settings? settings { get; construct; }
		public ValaPanel.Toplevel toplevel { get; construct; }
	}
	[CCode (cheader_filename = "vala-panel.h")]
	public class Toplevel : Gtk.ApplicationWindow {
		public const string[] anames;
		public const string[] gnames;
		protected override bool button_release_event (Gdk.EventButton e);
		public void configure (string page);
		protected override bool configure_event (Gdk.EventConfigure e);
		[CCode (returns_floating_reference = true)]
		public static ValaPanel.Toplevel create (Gtk.Application app, string name, int mon, Gtk.PositionType e);
		protected override void destroy ();
		public GLib.List<weak Gtk.Widget> get_applets_list ();
		protected override void get_preferred_height (out int min, out int nat);
		protected override void get_preferred_width (out int min, out int nat);
		[CCode (returns_floating_reference = true)]
		public static ValaPanel.Toplevel? load (Gtk.Application app, string config_file, string config_name);
		protected override bool map_event (Gdk.EventAny e);
		protected override void size_allocate (Gtk.Allocation alloc);
		public bool autohide { get; internal set; }
		public string background_color { owned get; internal set; }
		public string background_file { get; internal set; }
		public bool dock { get; internal set; }
		public Gtk.PositionType edge { get; internal set construct; }
		public string font { get; internal set; }
		public uint font_size { get; internal set; }
		public bool font_size_only { get; internal set; }
		public string foreground_color { owned get; internal set; }
		public int height { get; internal set; }
		public uint icon_size { get; internal set; }
		public bool is_dynamic { get; internal set; }
		public int monitor { get; internal set construct; }
		public Gtk.Orientation orientation { get; }
		public int panel_margin { get; internal set; }
		public string panel_name { get; internal construct; }
		public uint round_corners_size { get; internal set; }
		public bool show_hidden { get; internal set; }
		public bool strut { get; internal set; }
		public bool use_background_color { get; internal set; }
		public bool use_background_file { get; internal set; }
		public bool use_font { get; internal set; }
		public bool use_foreground_color { get; internal set; }
		public int width { get; internal set; }
	}
	[CCode (cheader_filename = "vala-panel.h")]
	public interface AppletConfigurable {
		[CCode (returns_floating_reference = true)]
		public abstract Gtk.Dialog get_config_dialog ();
	}
	[CCode (cheader_filename = "vala-panel.h")]
	public interface AppletMenu {
		public abstract void show_system_menu ();
	}
	[CCode (cheader_filename = "vala-panel.h")]
	public interface AppletPlugin : Peas.ExtensionBase {
		public abstract ValaPanel.Applet get_applet_widget (ValaPanel.Toplevel toplevel, GLib.Settings? settings, uint number);
	}
	[CCode (cheader_filename = "vala-panel.h")]
	public static void setup_icon (Gtk.Image img, GLib.Icon icon, ValaPanel.Toplevel? top = null, int size = -1);
	[CCode (cheader_filename = "vala-panel.h")]
	public static void setup_icon_button (Gtk.Button btn, GLib.Icon? icon = null, string? label = null, ValaPanel.Toplevel? top = null);
	[CCode (cheader_filename = "vala-panel.h")]
	public static void start_panels_from_dir (Gtk.Application app, string dirname);
}
namespace Config {
	[CCode (cheader_filename = "vala-panel.h")]
	public const string DATADIR;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string GETTEXT_PACKAGE;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string INSTALL_PREFIX;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string LOCALE_DIR;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string PKGDATADIR;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string PLUGINS_DATA;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string PLUGINS_DIRECTORY;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string RELEASE_NAME;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string VERSION;
	[CCode (cheader_filename = "vala-panel.h")]
	public const string VERSION_INFO;
}
