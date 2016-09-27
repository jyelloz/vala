/* gstreamer-player-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", gir_namespace = "GstPlayer", gir_version = "1.0", lower_case_cprefix = "gst_")]
namespace Gst {
	[CCode (cheader_filename = "gst/player/player.h", type_id = "gst_player_get_type ()")]
	public class Player : Gst.Object {
		[CCode (has_construct_function = false)]
		public Player (owned Gst.PlayerVideoRenderer? video_renderer, owned Gst.PlayerSignalDispatcher? signal_dispatcher);
		public static uint config_get_position_update_interval (Gst.Structure config);
		public static string config_get_user_agent (Gst.Structure config);
		public static void config_set_position_update_interval (Gst.Structure config, uint interval);
		public static void config_set_user_agent (Gst.Structure config, string agent);
		public static unowned GLib.List<Gst.PlayerAudioInfo> get_audio_streams (Gst.PlayerMediaInfo info);
		public int64 get_audio_video_offset ();
		public double get_color_balance (Gst.PlayerColorBalanceType type);
		public Gst.Structure get_config ();
		public Gst.PlayerAudioInfo get_current_audio_track ();
		public unowned Gst.PlayerSubtitleInfo get_current_subtitle_track ();
		public Gst.PlayerVideoInfo get_current_video_track ();
		public string get_current_visualization ();
		public Gst.ClockTime get_duration ();
		public Gst.PlayerMediaInfo get_media_info ();
		[Version (since = "1.10")]
		public Gst.Video.MultiviewFlags get_multiview_flags ();
		[Version (since = "1.10")]
		public Gst.Video.MultiviewMode get_multiview_mode ();
		public bool get_mute ();
		public Gst.Element get_pipeline ();
		public Gst.ClockTime get_position ();
		public double get_rate ();
		public static unowned GLib.List<Gst.PlayerSubtitleInfo> get_subtitle_streams (Gst.PlayerMediaInfo info);
		public string get_subtitle_uri ();
		public string get_uri ();
		public static unowned GLib.List<Gst.PlayerVideoInfo> get_video_streams (Gst.PlayerMediaInfo info);
		public double get_volume ();
		public bool has_color_balance ();
		public void pause ();
		public void play ();
		public void seek (Gst.ClockTime position);
		public bool set_audio_track (int stream_index);
		public void set_audio_track_enabled (bool enabled);
		public void set_audio_video_offset (int64 offset);
		public void set_color_balance (Gst.PlayerColorBalanceType type, double value);
		public bool set_config (owned Gst.Structure config);
		[Version (since = "1.10")]
		public void set_multiview_flags (Gst.Video.MultiviewFlags flags);
		[Version (since = "1.10")]
		public void set_multiview_mode (Gst.Video.MultiviewMode mode);
		public void set_mute (bool val);
		public void set_rate (double rate);
		public bool set_subtitle_track (int stream_index);
		public void set_subtitle_track_enabled (bool enabled);
		public void set_subtitle_uri (string uri);
		public void set_uri (string uri);
		public bool set_video_track (int stream_index);
		public void set_video_track_enabled (bool enabled);
		public bool set_visualization (string name);
		public void set_visualization_enabled (bool enabled);
		public void set_volume (double val);
		public void stop ();
		public static void visualizations_free (Gst.PlayerVisualization viss);
		[CCode (array_length = false, array_null_terminated = true)]
		public static Gst.PlayerVisualization[] visualizations_get ();
		public int64 audio_video_offset { get; set; }
		public Gst.PlayerAudioInfo current_audio_track { owned get; }
		public Gst.PlayerSubtitleInfo current_subtitle_track { get; }
		public Gst.PlayerVideoInfo current_video_track { owned get; }
		public uint64 duration { get; }
		public Gst.PlayerMediaInfo media_info { owned get; }
		public bool mute { get; set; }
		public Gst.Element pipeline { owned get; }
		public uint64 position { get; }
		public double rate { get; set; }
		public Gst.PlayerSignalDispatcher signal_dispatcher { construct; }
		[NoAccessorMethod]
		public string suburi { owned get; set; }
		public string uri { owned get; set; }
		[NoAccessorMethod]
		public Gst.Video.MultiviewFlags video_multiview_flags { get; set; }
		[NoAccessorMethod]
		public Gst.Video.MultiviewFramePacking video_multiview_mode { get; set; }
		public Gst.PlayerVideoRenderer video_renderer { construct; }
		public double volume { get; set; }
		public signal void buffering (int object);
		public signal void duration_changed (uint64 object);
		public signal void end_of_stream ();
		public signal void error (GLib.Error object);
		public signal void media_info_updated (Gst.PlayerMediaInfo object);
		public signal void mute_changed ();
		public signal void position_updated (uint64 object);
		public signal void seek_done (uint64 object);
		public signal void state_changed (Gst.PlayerState object);
		public signal void uri_loaded (string object);
		public signal void video_dimensions_changed (int object, int p0);
		public signal void volume_changed ();
		public signal void warning (GLib.Error object);
	}
	[CCode (cheader_filename = "gst/player/player.h", type_id = "gst_player_audio_info_get_type ()")]
	public class PlayerAudioInfo : Gst.PlayerStreamInfo {
		[CCode (has_construct_function = false)]
		protected PlayerAudioInfo ();
		public int get_bitrate ();
		public int get_channels ();
		public unowned string get_language ();
		public int get_max_bitrate ();
		public int get_sample_rate ();
	}
	[CCode (cheader_filename = "gst/player/player.h", lower_case_csuffix = "player_g_main_context_signal_dispatcher", type_id = "gst_player_g_main_context_signal_dispatcher_get_type ()")]
	public class PlayerGMainContextSignalDispatcher : GLib.Object, Gst.PlayerSignalDispatcher {
		[CCode (has_construct_function = false, type = "GstPlayerSignalDispatcher*")]
		public PlayerGMainContextSignalDispatcher (GLib.MainContext? application_context);
		[NoAccessorMethod]
		public GLib.MainContext application_context { owned get; construct; }
	}
	[CCode (cheader_filename = "gst/player/player.h", type_id = "gst_player_media_info_get_type ()")]
	public class PlayerMediaInfo : GLib.Object {
		[CCode (has_construct_function = false)]
		protected PlayerMediaInfo ();
		public unowned string get_container_format ();
		public Gst.ClockTime get_duration ();
		public unowned Gst.Sample get_image_sample ();
		public unowned GLib.List<Gst.PlayerStreamInfo> get_stream_list ();
		public unowned Gst.TagList get_tags ();
		public unowned string get_title ();
		public unowned string get_uri ();
		public bool is_live ();
		public bool is_seekable ();
	}
	[CCode (cheader_filename = "gst/player/player.h", type_id = "gst_player_stream_info_get_type ()")]
	public abstract class PlayerStreamInfo : GLib.Object {
		[CCode (has_construct_function = false)]
		protected PlayerStreamInfo ();
		public unowned Gst.Caps get_caps ();
		public unowned string get_codec ();
		public int get_index ();
		public unowned string get_stream_type ();
		public unowned Gst.TagList get_tags ();
	}
	[CCode (cheader_filename = "gst/player/player.h", type_id = "gst_player_subtitle_info_get_type ()")]
	public class PlayerSubtitleInfo : Gst.PlayerStreamInfo {
		[CCode (has_construct_function = false)]
		protected PlayerSubtitleInfo ();
		public unowned string get_language ();
	}
	[CCode (cheader_filename = "gst/player/player.h", type_id = "gst_player_video_info_get_type ()")]
	public class PlayerVideoInfo : Gst.PlayerStreamInfo {
		[CCode (has_construct_function = false)]
		protected PlayerVideoInfo ();
		public int get_bitrate ();
		public void get_framerate (out int fps_n, out int fps_d);
		public int get_height ();
		public int get_max_bitrate ();
		public void get_pixel_aspect_ratio (out uint par_n, out uint par_d);
		public int get_width ();
	}
	[CCode (cheader_filename = "gst/player/player.h", type_id = "gst_player_video_overlay_video_renderer_get_type ()")]
	public class PlayerVideoOverlayVideoRenderer : GLib.Object, Gst.PlayerVideoRenderer {
		[CCode (has_construct_function = false, type = "GstPlayerVideoRenderer*")]
		public PlayerVideoOverlayVideoRenderer (void* window_handle);
		public void expose ();
		public void get_render_rectangle (out int x, out int y, out int width, out int height);
		public void* get_window_handle ();
		public void set_render_rectangle (int x, int y, int width, int height);
		public void set_window_handle (void* window_handle);
		public void* window_handle { get; set construct; }
	}
	[CCode (cheader_filename = "gst/player/player.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "gst_player_visualization_get_type ()")]
	[Compact]
	public class PlayerVisualization {
		public weak string description;
		public weak string name;
		public Gst.PlayerVisualization copy ();
		public void free ();
	}
	[CCode (cheader_filename = "gst/player/player.h", type_cname = "GstPlayerSignalDispatcherInterface", type_id = "gst_player_signal_dispatcher_get_type ()")]
	public interface PlayerSignalDispatcher : GLib.Object {
		[NoWrapper]
		public abstract void dispatch (Gst.Player player, owned Gst.PlayerSignalDispatcherFunc emitter);
	}
	[CCode (cheader_filename = "gst/player/player.h", type_cname = "GstPlayerVideoRendererInterface", type_id = "gst_player_video_renderer_get_type ()")]
	public interface PlayerVideoRenderer : GLib.Object {
		[NoWrapper]
		public abstract unowned Gst.Element create_video_sink (Gst.Player player);
	}
	[CCode (cheader_filename = "gst/player/player.h", cprefix = "GST_PLAYER_COLOR_BALANCE_", type_id = "gst_player_color_balance_type_get_type ()")]
	public enum PlayerColorBalanceType {
		HUE,
		BRIGHTNESS,
		SATURATION,
		CONTRAST;
		public unowned string get_name ();
	}
	[CCode (cheader_filename = "gst/player/player.h", cprefix = "GST_PLAYER_STATE_", type_id = "gst_player_state_get_type ()")]
	public enum PlayerState {
		STOPPED,
		BUFFERING,
		PAUSED,
		PLAYING;
		public unowned string get_name ();
	}
	[CCode (cheader_filename = "gst/player/player.h", cprefix = "GST_PLAYER_ERROR_")]
	public errordomain PlayerError {
		FAILED;
		public unowned string get_name ();
		public static GLib.Quark quark ();
	}
	[CCode (cheader_filename = "gst/player/player.h", has_target = false)]
	public delegate void PlayerSignalDispatcherFunc (void* data);
}
