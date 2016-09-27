/* atspi-2.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Atspi", gir_namespace = "Atspi", gir_version = "2.0", lower_case_cprefix = "atspi_")]
namespace Atspi {
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_accessible_get_type ()")]
	public class Accessible : Atspi.Object, Atspi.Action, Atspi.Collection, Atspi.Component, Atspi.Document, Atspi.EditableText, Atspi.Hypertext, Atspi.Image, Atspi.Selection, Atspi.Table, Atspi.TableCell, Atspi.Text, Atspi.Value {
		public weak Atspi.Accessible accessible_parent;
		public weak GLib.HashTable<void*,void*> attributes;
		public uint cached_properties;
		public weak GLib.GenericArray<void*> children;
		public weak string description;
		public int interfaces;
		public weak string name;
		public Atspi.Role role;
		public weak Atspi.StateSet states;
		[CCode (has_construct_function = false)]
		protected Accessible ();
		public void clear_cache ();
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Action get_action ();
		public Atspi.Action get_action_iface ();
		public Atspi.Accessible get_application () throws GLib.Error;
		public string get_atspi_version () throws GLib.Error;
		public GLib.HashTable<string,string> get_attributes () throws GLib.Error;
		public GLib.Array<string> get_attributes_as_array () throws GLib.Error;
		public Atspi.Accessible get_child_at_index (int child_index) throws GLib.Error;
		public int get_child_count () throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Collection get_collection ();
		public Atspi.Collection get_collection_iface ();
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Component get_component ();
		public Atspi.Component get_component_iface ();
		public string get_description () throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Document get_document ();
		public Atspi.Document get_document_iface ();
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.EditableText get_editable_text ();
		public Atspi.EditableText get_editable_text_iface ();
		public Atspi.Hyperlink get_hyperlink ();
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Hypertext get_hypertext ();
		public Atspi.Hypertext get_hypertext_iface ();
		public int get_id () throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Image get_image ();
		public Atspi.Image get_image_iface ();
		public int get_index_in_parent () throws GLib.Error;
		public GLib.Array<string> get_interfaces ();
		public string get_localized_role_name () throws GLib.Error;
		public string get_name () throws GLib.Error;
		public unowned string get_object_locale () throws GLib.Error;
		public Atspi.Accessible? get_parent () throws GLib.Error;
		public uint get_process_id () throws GLib.Error;
		public GLib.Array<Atspi.Relation> get_relation_set () throws GLib.Error;
		public Atspi.Role get_role () throws GLib.Error;
		public string get_role_name () throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Selection get_selection ();
		public Atspi.Selection get_selection_iface ();
		public Atspi.StateSet get_state_set ();
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Table get_table ();
		public Atspi.TableCell get_table_cell ();
		public Atspi.Table get_table_iface ();
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Text get_text ();
		public Atspi.Text get_text_iface ();
		public string get_toolkit_name () throws GLib.Error;
		public string get_toolkit_version () throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.Value get_value ();
		public Atspi.Value get_value_iface ();
		public void set_cache_mask (Atspi.Cache mask);
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_device_listener_get_type ()")]
	public class DeviceListener : GLib.Object {
		public weak GLib.List<void*> callbacks;
		public uint id;
		[CCode (has_construct_function = false)]
		public DeviceListener (owned Atspi.DeviceListenerCB callback);
		public void add_callback ([CCode (delegate_target_pos = 1.2, destroy_notify_pos = 1.1)] owned Atspi.DeviceListenerCB callback);
		[NoWrapper]
		public virtual bool device_event (Atspi.DeviceEvent event);
		public void remove_callback (Atspi.DeviceListenerCB callback);
		[CCode (has_construct_function = false)]
		public DeviceListener.simple ([CCode (destroy_notify_pos = 1.1)] owned Atspi.DeviceListenerSimpleCB callback);
	}
	[CCode (cheader_filename = "atspi/atspi.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "atspi_event_get_type ()")]
	[Compact]
	public class Event {
		public GLib.Value any_data;
		public int detail1;
		public int detail2;
		public weak Atspi.Accessible source;
		public weak string type;
		public static void main ();
		public static void quit ();
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_event_listener_get_type ()")]
	public class EventListener : GLib.Object {
		public weak Atspi.EventListenerCB callback;
		public weak GLib.DestroyNotify cb_destroyed;
		public void* user_data;
		[CCode (has_construct_function = false)]
		public EventListener (owned Atspi.EventListenerCB callback);
		public bool deregister (string event_type) throws GLib.Error;
		public static bool deregister_from_callback ([CCode (delegate_target_pos = 1.5)] Atspi.EventListenerCB callback, string event_type) throws GLib.Error;
		public static bool deregister_no_data (Atspi.EventListenerSimpleCB callback, string event_type) throws GLib.Error;
		public bool register (string event_type) throws GLib.Error;
		public static bool register_from_callback ([CCode (delegate_target_pos = 1.33333, destroy_notify_pos = 1.66667)] owned Atspi.EventListenerCB callback, string event_type) throws GLib.Error;
		public bool register_full (string event_type, GLib.Array<string>? properties) throws GLib.Error;
		public static bool register_no_data ([CCode (destroy_notify_pos = 1.5)] owned Atspi.EventListenerSimpleCB callback, string event_type) throws GLib.Error;
		[CCode (has_construct_function = false)]
		public EventListener.simple ([CCode (destroy_notify_pos = 1.1)] owned Atspi.EventListenerSimpleCB callback);
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_hyperlink_get_type ()")]
	public class Hyperlink : Atspi.Object {
		[CCode (has_construct_function = false)]
		protected Hyperlink ();
		public int get_end_index () throws GLib.Error;
		public Atspi.Range get_index_range () throws GLib.Error;
		public int get_n_anchors () throws GLib.Error;
		public Atspi.Accessible get_object (int i) throws GLib.Error;
		public int get_start_index () throws GLib.Error;
		public string get_uri (int i) throws GLib.Error;
		public bool is_valid () throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "atspi_key_definition_get_type ()")]
	[Compact]
	public class KeyDefinition {
		public int keycode;
		public weak string keystring;
		public int keysym;
		public int unused;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_match_rule_get_type ()")]
	public class MatchRule : GLib.Object {
		public Atspi.CollectionMatchType attributematchtype;
		public weak GLib.HashTable<void*,void*> attributes;
		public Atspi.CollectionMatchType interfacematchtype;
		public weak GLib.Array<void*> interfaces;
		public bool invert;
		public Atspi.CollectionMatchType rolematchtype;
		[CCode (array_length = false)]
		public weak int roles[4];
		public Atspi.CollectionMatchType statematchtype;
		public weak Atspi.StateSet states;
		[CCode (has_construct_function = false)]
		public MatchRule (Atspi.StateSet states, Atspi.CollectionMatchType statematchtype, GLib.HashTable<string,string> attributes, Atspi.CollectionMatchType attributematchtype, GLib.Array<Atspi.Role> roles, Atspi.CollectionMatchType rolematchtype, GLib.Array<string> interfaces, Atspi.CollectionMatchType interfacematchtype, bool invert);
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_object_get_type ()")]
	public class Object : GLib.Object {
		public Atspi.Application app;
		public weak string path;
		[CCode (has_construct_function = false)]
		protected Object ();
	}
	[CCode (cheader_filename = "atspi/atspi.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "atspi_point_get_type ()")]
	[Compact]
	public class Point {
		public int x;
		public int y;
		public Atspi.Point copy ();
	}
	[CCode (cheader_filename = "atspi/atspi.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "atspi_range_get_type ()")]
	[Compact]
	public class Range {
		public int end_offset;
		public int start_offset;
		public Atspi.Range copy ();
	}
	[CCode (cheader_filename = "atspi/atspi.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "atspi_rect_get_type ()")]
	[Compact]
	public class Rect {
		public int height;
		public int width;
		public int x;
		public int y;
		public Atspi.Rect copy ();
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_relation_get_type ()")]
	public class Relation : GLib.Object {
		public Atspi.RelationType relation_type;
		public weak GLib.Array<void*> targets;
		[CCode (has_construct_function = false)]
		protected Relation ();
		public int get_n_targets ();
		public Atspi.RelationType get_relation_type ();
		public Atspi.Accessible get_target (int i);
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_state_set_get_type ()")]
	public class StateSet : GLib.Object {
		public void* accessible;
		public int64 states;
		[CCode (has_construct_function = false)]
		public StateSet (GLib.Array<Atspi.StateType> states);
		public void add (Atspi.StateType state);
		public Atspi.StateSet compare (Atspi.StateSet set2);
		public bool contains (Atspi.StateType state);
		public bool equals (Atspi.StateSet set2);
		public GLib.Array<Atspi.StateType> get_states ();
		public bool is_empty ();
		public void remove (Atspi.StateType state);
		public void set_by_name (string name, bool enabled);
	}
	[CCode (cheader_filename = "atspi/atspi.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "atspi_text_range_get_type ()")]
	[Compact]
	public class TextRange {
		public weak string content;
		public int end_offset;
		public int start_offset;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_action_get_type ()")]
	public interface Action : GLib.Object {
		public bool do_action (int i) throws GLib.Error;
		public string get_action_description (int i) throws GLib.Error;
		public string get_action_name (int i) throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public string get_description (int i) throws GLib.Error;
		public string get_key_binding (int i) throws GLib.Error;
		public string get_localized_name (int i) throws GLib.Error;
		public int get_n_actions () throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public string get_name (int i) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_collection_get_type ()")]
	public interface Collection : GLib.Object {
		public Atspi.Accessible get_active_descendant () throws GLib.Error;
		public GLib.Array<Atspi.Accessible> get_matches (Atspi.MatchRule rule, Atspi.CollectionSortOrder sortby, int count, bool traverse) throws GLib.Error;
		public GLib.Array<Atspi.Accessible> get_matches_from (Atspi.Accessible current_object, Atspi.MatchRule rule, Atspi.CollectionSortOrder sortby, Atspi.CollectionTreeTraversalType tree, int count, bool traverse) throws GLib.Error;
		public GLib.Array<Atspi.Accessible> get_matches_to (Atspi.Accessible current_object, Atspi.MatchRule rule, Atspi.CollectionSortOrder sortby, Atspi.CollectionTreeTraversalType tree, bool limit_scope, int count, bool traverse) throws GLib.Error;
		public bool is_ancestor_of (Atspi.Accessible test) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_component_get_type ()")]
	public interface Component : GLib.Object {
		public bool contains (int x, int y, Atspi.CoordType ctype) throws GLib.Error;
		public Atspi.Accessible? get_accessible_at_point (int x, int y, Atspi.CoordType ctype) throws GLib.Error;
		public double get_alpha () throws GLib.Error;
		public Atspi.Rect get_extents (Atspi.CoordType ctype) throws GLib.Error;
		public Atspi.ComponentLayer get_layer () throws GLib.Error;
		public short get_mdi_z_order () throws GLib.Error;
		public Atspi.Point get_position (Atspi.CoordType ctype) throws GLib.Error;
		public Atspi.Point get_size () throws GLib.Error;
		public bool grab_focus () throws GLib.Error;
		public bool set_extents (int x, int y, int width, int height, Atspi.CoordType ctype) throws GLib.Error;
		public bool set_position (int x, int y, Atspi.CoordType ctype) throws GLib.Error;
		public bool set_size (int width, int height) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_document_get_type ()")]
	public interface Document : GLib.Object {
		[Version (deprecated = true, deprecated_since = "2.10")]
		public string get_attribute_value (string attribute) throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public GLib.HashTable<string,string> get_attributes () throws GLib.Error;
		public int get_current_page_number () throws GLib.Error;
		public string get_document_attribute_value (string attribute) throws GLib.Error;
		public GLib.HashTable<string,string> get_document_attributes () throws GLib.Error;
		public string get_locale () throws GLib.Error;
		public int get_page_count () throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_editable_text_get_type ()")]
	public interface EditableText : GLib.Object {
		public bool copy_text (int start_pos, int end_pos) throws GLib.Error;
		public bool cut_text (int start_pos, int end_pos) throws GLib.Error;
		public bool delete_text (int start_pos, int end_pos) throws GLib.Error;
		public bool insert_text (int position, string text, int length) throws GLib.Error;
		public bool paste_text (int position) throws GLib.Error;
		public bool set_text_contents (string new_contents) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_hypertext_get_type ()")]
	public interface Hypertext : GLib.Object {
		public Atspi.Hyperlink? get_link (int link_index) throws GLib.Error;
		public int get_link_index (int character_offset) throws GLib.Error;
		public int get_n_links () throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_image_get_type ()")]
	public interface Image : GLib.Object {
		public string get_image_description () throws GLib.Error;
		public Atspi.Rect get_image_extents (Atspi.CoordType ctype) throws GLib.Error;
		public string get_image_locale () throws GLib.Error;
		public Atspi.Point get_image_position (Atspi.CoordType ctype) throws GLib.Error;
		public Atspi.Point get_image_size () throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_selection_get_type ()")]
	public interface Selection : GLib.Object {
		public bool clear_selection () throws GLib.Error;
		public bool deselect_child (int child_index) throws GLib.Error;
		public bool deselect_selected_child (int selected_child_index) throws GLib.Error;
		public int get_n_selected_children () throws GLib.Error;
		public Atspi.Accessible get_selected_child (int selected_child_index) throws GLib.Error;
		public bool is_child_selected (int child_index) throws GLib.Error;
		public bool select_all () throws GLib.Error;
		public bool select_child (int child_index) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_table_get_type ()")]
	public interface Table : GLib.Object {
		public bool add_column_selection (int column) throws GLib.Error;
		public bool add_row_selection (int row) throws GLib.Error;
		public Atspi.Accessible get_accessible_at (int row, int column) throws GLib.Error;
		public Atspi.Accessible get_caption () throws GLib.Error;
		public int get_column_at_index (int index) throws GLib.Error;
		public string get_column_description (int column) throws GLib.Error;
		public int get_column_extent_at (int row, int column) throws GLib.Error;
		public Atspi.Accessible get_column_header (int column) throws GLib.Error;
		public int get_index_at (int row, int column) throws GLib.Error;
		public int get_n_columns () throws GLib.Error;
		public int get_n_rows () throws GLib.Error;
		public int get_n_selected_columns () throws GLib.Error;
		public int get_n_selected_rows () throws GLib.Error;
		public int get_row_at_index (int index) throws GLib.Error;
		public bool get_row_column_extents_at_index (int index, out int row, out int col, out int row_extents, out int col_extents, out bool is_selected) throws GLib.Error;
		public string get_row_description (int row) throws GLib.Error;
		public int get_row_extent_at (int row, int column) throws GLib.Error;
		public Atspi.Accessible get_row_header (int row) throws GLib.Error;
		public GLib.Array<int> get_selected_columns () throws GLib.Error;
		public GLib.Array<int> get_selected_rows () throws GLib.Error;
		public Atspi.Accessible get_summary () throws GLib.Error;
		public bool is_column_selected (int column) throws GLib.Error;
		public bool is_row_selected (int row) throws GLib.Error;
		public bool is_selected (int row, int column) throws GLib.Error;
		public bool remove_column_selection (int column) throws GLib.Error;
		public bool remove_row_selection (int row) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_table_cell_get_type ()")]
	public interface TableCell : GLib.Object {
		public GLib.GenericArray<Atspi.Accessible> get_column_header_cells () throws GLib.Error;
		public int get_column_index () throws GLib.Error;
		public int get_column_span () throws GLib.Error;
		public void get_row_column_span (out int row, out int column, out int row_span, out int column_span) throws GLib.Error;
		public GLib.GenericArray<Atspi.Accessible> get_row_header_cells () throws GLib.Error;
		public int get_row_index () throws GLib.Error;
		public int get_row_span () throws GLib.Error;
		public Atspi.Accessible get_table () throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_text_get_type ()")]
	public interface Text : GLib.Object {
		public bool add_selection (int start_offset, int end_offset) throws GLib.Error;
		public GLib.HashTable<string,string> get_attribute_run (int offset, bool include_defaults, out int start_offset, out int end_offset) throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public string? get_attribute_value (int offset, string attribute_name) throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public GLib.HashTable<string,string> get_attributes (int offset, out int start_offset, out int end_offset) throws GLib.Error;
		public GLib.Array<Atspi.TextRange> get_bounded_ranges (int x, int y, int width, int height, Atspi.CoordType type, Atspi.TextClipType clipTypeX, Atspi.TextClipType clipTypeY) throws GLib.Error;
		public int get_caret_offset () throws GLib.Error;
		public uint get_character_at_offset (int offset) throws GLib.Error;
		public int get_character_count () throws GLib.Error;
		public Atspi.Rect get_character_extents (int offset, Atspi.CoordType type) throws GLib.Error;
		public GLib.HashTable<string,string> get_default_attributes () throws GLib.Error;
		public int get_n_selections () throws GLib.Error;
		public int get_offset_at_point (int x, int y, Atspi.CoordType type) throws GLib.Error;
		public Atspi.Rect get_range_extents (int start_offset, int end_offset, Atspi.CoordType type) throws GLib.Error;
		public Atspi.Range get_selection (int selection_num) throws GLib.Error;
		[Version (since = "2.9.90")]
		public Atspi.TextRange get_string_at_offset (int offset, Atspi.TextGranularity granularity) throws GLib.Error;
		public string get_text (int start_offset, int end_offset) throws GLib.Error;
		public Atspi.TextRange get_text_after_offset (int offset, Atspi.TextBoundaryType type) throws GLib.Error;
		[Version (deprecated = true, deprecated_since = "2.10")]
		public Atspi.TextRange get_text_at_offset (int offset, Atspi.TextBoundaryType type) throws GLib.Error;
		public string? get_text_attribute_value (int offset, string attribute_name) throws GLib.Error;
		public GLib.HashTable<string,string> get_text_attributes (int offset, out int start_offset, out int end_offset) throws GLib.Error;
		public Atspi.TextRange get_text_before_offset (int offset, Atspi.TextBoundaryType type) throws GLib.Error;
		public bool remove_selection (int selection_num) throws GLib.Error;
		public bool set_caret_offset (int new_offset) throws GLib.Error;
		public bool set_selection (int selection_num, int start_offset, int end_offset) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_value_get_type ()")]
	public interface Value : GLib.Object {
		public double get_current_value () throws GLib.Error;
		public double get_maximum_value () throws GLib.Error;
		public double get_minimum_increment () throws GLib.Error;
		public double get_minimum_value () throws GLib.Error;
		public bool set_current_value (double new_value) throws GLib.Error;
	}
	[CCode (cheader_filename = "atspi/atspi.h", has_type_id = false)]
	public struct Application {
		public weak GLib.Object parent;
		public weak GLib.HashTable<void*,void*> hash;
		public weak string bus_name;
		public void* root;
		public Atspi.Cache cache;
		public weak string toolkit_name;
		public weak string toolkit_version;
		public weak string atspi_version;
		public void* time_added;
	}
	[CCode (cheader_filename = "atspi/atspi.h", has_type_id = false)]
	public struct ApplicationClass {
		public weak GLib.ObjectClass parent_class;
	}
	[CCode (cheader_filename = "atspi/atspi.h")]
	[SimpleType]
	public struct ControllerEventMask : uint {
	}
	[CCode (cheader_filename = "atspi/atspi.h", type_id = "atspi_device_event_get_type ()")]
	public struct DeviceEvent {
		public Atspi.EventType type;
		public uint id;
		public ushort hw_code;
		public ushort modifiers;
		public uint timestamp;
		public weak string event_string;
		public bool is_text;
	}
	[CCode (cheader_filename = "atspi/atspi.h")]
	[SimpleType]
	public struct DeviceEventMask : uint {
	}
	[CCode (cheader_filename = "atspi/atspi.h", has_type_id = false)]
	public struct EventListenerMode {
		public bool synchronous;
		public bool preemptive;
		public bool global;
	}
	[CCode (cheader_filename = "atspi/atspi.h")]
	[SimpleType]
	public struct KeyEventMask : uint {
	}
	[CCode (cheader_filename = "atspi/atspi.h")]
	[SimpleType]
	public struct KeyMaskType : uint {
	}
	[CCode (cheader_filename = "atspi/atspi.h", has_type_id = false)]
	public struct KeySet {
		public uint keysyms;
		public ushort keycodes;
		public weak string keystrings;
		public short len;
	}
	[CCode (cheader_filename = "atspi/atspi.h")]
	[SimpleType]
	public struct KeystrokeListener {
	}
	[CCode (cheader_filename = "atspi/atspi.h", has_type_id = false)]
	public struct Reference {
		public weak string name;
		public weak string path;
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_CACHE_", type_id = "atspi_cache_get_type ()")]
	[Flags]
	public enum Cache {
		INTERFACES,
		NONE,
		PARENT,
		CHILDREN,
		NAME,
		DESCRIPTION,
		STATES,
		ROLE,
		ATTRIBUTES,
		ALL,
		DEFAULT,
		UNDEFINED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_Collection_MATCH_", type_id = "atspi_collection_match_type_get_type ()")]
	public enum CollectionMatchType {
		INVALID,
		ALL,
		ANY,
		NONE,
		EMPTY,
		LAST_DEFINED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_Collection_SORT_ORDER_", type_id = "atspi_collection_sort_order_get_type ()")]
	public enum CollectionSortOrder {
		INVALID,
		CANONICAL,
		FLOW,
		TAB,
		REVERSE_CANONICAL,
		REVERSE_FLOW,
		REVERSE_TAB,
		LAST_DEFINED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_Collection_TREE_", type_id = "atspi_collection_tree_traversal_type_get_type ()")]
	public enum CollectionTreeTraversalType {
		RESTRICT_CHILDREN,
		RESTRICT_SIBLING,
		INORDER,
		LAST_DEFINED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_LAYER_", type_id = "atspi_component_layer_get_type ()")]
	public enum ComponentLayer {
		INVALID,
		BACKGROUND,
		CANVAS,
		WIDGET,
		MDI,
		POPUP,
		OVERLAY,
		WINDOW,
		LAST_DEFINED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_COORD_TYPE_", type_id = "atspi_coord_type_get_type ()")]
	public enum CoordType {
		SCREEN,
		WINDOW
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_ERROR_", has_type_id = false)]
	public enum Error {
		APPLICATION_GONE,
		IPC,
		SYNC_NOT_ALLOWED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_", type_id = "atspi_event_type_get_type ()")]
	public enum EventType {
		KEY_PRESSED_EVENT,
		KEY_RELEASED_EVENT,
		BUTTON_PRESSED_EVENT,
		BUTTON_RELEASED_EVENT
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_KEY_", type_id = "atspi_key_event_type_get_type ()")]
	public enum KeyEventType {
		PRESSED,
		RELEASED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_KEYLISTENER_", type_id = "atspi_key_listener_sync_type_get_type ()")]
	[Flags]
	public enum KeyListenerSyncType {
		NOSYNC,
		SYNCHRONOUS,
		CANCONSUME,
		ALL_WINDOWS
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_KEY_", type_id = "atspi_key_synth_type_get_type ()")]
	public enum KeySynthType {
		PRESS,
		RELEASE,
		PRESSRELEASE,
		SYM,
		STRING
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_LOCALE_TYPE_", type_id = "atspi_locale_type_get_type ()")]
	public enum LocaleType {
		MESSAGES,
		COLLATE,
		CTYPE,
		MONETARY,
		NUMERIC,
		TIME
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_MODIFIER_", type_id = "atspi_modifier_type_get_type ()")]
	public enum ModifierType {
		SHIFT,
		SHIFTLOCK,
		CONTROL,
		ALT,
		META,
		META2,
		META3,
		NUMLOCK
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_RELATION_", type_id = "atspi_relation_type_get_type ()")]
	public enum RelationType {
		NULL,
		LABEL_FOR,
		LABELLED_BY,
		CONTROLLER_FOR,
		CONTROLLED_BY,
		MEMBER_OF,
		TOOLTIP_FOR,
		NODE_CHILD_OF,
		NODE_PARENT_OF,
		EXTENDED,
		FLOWS_TO,
		FLOWS_FROM,
		SUBWINDOW_OF,
		EMBEDS,
		EMBEDDED_BY,
		POPUP_FOR,
		PARENT_WINDOW_OF,
		DESCRIPTION_FOR,
		DESCRIBED_BY,
		LAST_DEFINED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_ROLE_", type_id = "atspi_role_get_type ()")]
	public enum Role {
		INVALID,
		ACCELERATOR_LABEL,
		ALERT,
		ANIMATION,
		ARROW,
		CALENDAR,
		CANVAS,
		CHECK_BOX,
		CHECK_MENU_ITEM,
		COLOR_CHOOSER,
		COLUMN_HEADER,
		COMBO_BOX,
		DATE_EDITOR,
		DESKTOP_ICON,
		DESKTOP_FRAME,
		DIAL,
		DIALOG,
		DIRECTORY_PANE,
		DRAWING_AREA,
		FILE_CHOOSER,
		FILLER,
		FOCUS_TRAVERSABLE,
		FONT_CHOOSER,
		FRAME,
		GLASS_PANE,
		HTML_CONTAINER,
		ICON,
		IMAGE,
		INTERNAL_FRAME,
		LABEL,
		LAYERED_PANE,
		LIST,
		LIST_ITEM,
		MENU,
		MENU_BAR,
		MENU_ITEM,
		OPTION_PANE,
		PAGE_TAB,
		PAGE_TAB_LIST,
		PANEL,
		PASSWORD_TEXT,
		POPUP_MENU,
		PROGRESS_BAR,
		PUSH_BUTTON,
		RADIO_BUTTON,
		RADIO_MENU_ITEM,
		ROOT_PANE,
		ROW_HEADER,
		SCROLL_BAR,
		SCROLL_PANE,
		SEPARATOR,
		SLIDER,
		SPIN_BUTTON,
		SPLIT_PANE,
		STATUS_BAR,
		TABLE,
		TABLE_CELL,
		TABLE_COLUMN_HEADER,
		TABLE_ROW_HEADER,
		TEAROFF_MENU_ITEM,
		TERMINAL,
		TEXT,
		TOGGLE_BUTTON,
		TOOL_BAR,
		TOOL_TIP,
		TREE,
		TREE_TABLE,
		UNKNOWN,
		VIEWPORT,
		WINDOW,
		EXTENDED,
		HEADER,
		FOOTER,
		PARAGRAPH,
		RULER,
		APPLICATION,
		AUTOCOMPLETE,
		EDITBAR,
		EMBEDDED,
		ENTRY,
		CHART,
		CAPTION,
		DOCUMENT_FRAME,
		HEADING,
		PAGE,
		SECTION,
		REDUNDANT_OBJECT,
		FORM,
		LINK,
		INPUT_METHOD_WINDOW,
		TABLE_ROW,
		TREE_ITEM,
		DOCUMENT_SPREADSHEET,
		DOCUMENT_PRESENTATION,
		DOCUMENT_TEXT,
		DOCUMENT_WEB,
		DOCUMENT_EMAIL,
		COMMENT,
		LIST_BOX,
		GROUPING,
		IMAGE_MAP,
		NOTIFICATION,
		INFO_BAR,
		LEVEL_BAR,
		TITLE_BAR,
		BLOCK_QUOTE,
		AUDIO,
		VIDEO,
		DEFINITION,
		ARTICLE,
		LANDMARK,
		LOG,
		MARQUEE,
		MATH,
		RATING,
		TIMER,
		STATIC,
		MATH_FRACTION,
		MATH_ROOT,
		SUBSCRIPT,
		SUPERSCRIPT,
		LAST_DEFINED;
		public string get_name ();
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_STATE_", type_id = "atspi_state_type_get_type ()")]
	public enum StateType {
		INVALID,
		ACTIVE,
		ARMED,
		BUSY,
		CHECKED,
		COLLAPSED,
		DEFUNCT,
		EDITABLE,
		ENABLED,
		EXPANDABLE,
		EXPANDED,
		FOCUSABLE,
		FOCUSED,
		HAS_TOOLTIP,
		HORIZONTAL,
		ICONIFIED,
		MODAL,
		MULTI_LINE,
		MULTISELECTABLE,
		OPAQUE,
		PRESSED,
		RESIZABLE,
		SELECTABLE,
		SELECTED,
		SENSITIVE,
		SHOWING,
		SINGLE_LINE,
		STALE,
		TRANSIENT,
		VERTICAL,
		VISIBLE,
		MANAGES_DESCENDANTS,
		INDETERMINATE,
		REQUIRED,
		TRUNCATED,
		ANIMATED,
		INVALID_ENTRY,
		SUPPORTS_AUTOCOMPLETION,
		SELECTABLE_TEXT,
		IS_DEFAULT,
		VISITED,
		CHECKABLE,
		HAS_POPUP,
		READ_ONLY,
		LAST_DEFINED
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_TEXT_BOUNDARY_", type_id = "atspi_text_boundary_type_get_type ()")]
	public enum TextBoundaryType {
		CHAR,
		WORD_START,
		WORD_END,
		SENTENCE_START,
		SENTENCE_END,
		LINE_START,
		LINE_END
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_TEXT_CLIP_", type_id = "atspi_text_clip_type_get_type ()")]
	public enum TextClipType {
		NONE,
		MIN,
		MAX,
		BOTH
	}
	[CCode (cheader_filename = "atspi/atspi.h", cprefix = "ATSPI_TEXT_GRANULARITY_", type_id = "atspi_text_granularity_get_type ()")]
	public enum TextGranularity {
		CHAR,
		WORD,
		SENTENCE,
		LINE,
		PARAGRAPH
	}
	[CCode (cheader_filename = "atspi/atspi.h", instance_pos = 1.9)]
	public delegate bool DeviceListenerCB (owned Atspi.DeviceEvent stroke);
	[CCode (cheader_filename = "atspi/atspi.h", has_target = false)]
	public delegate bool DeviceListenerSimpleCB (owned Atspi.DeviceEvent stroke);
	[CCode (cheader_filename = "atspi/atspi.h", instance_pos = 1.9)]
	public delegate void EventListenerCB (owned Atspi.Event event);
	[CCode (cheader_filename = "atspi/atspi.h", has_target = false)]
	public delegate void EventListenerSimpleCB (owned Atspi.Event event);
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_COMPONENTLAYER_COUNT")]
	public const int COMPONENTLAYER_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_COORD_TYPE_COUNT")]
	public const int COORD_TYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_ACCESSIBLE")]
	public const string DBUS_INTERFACE_ACCESSIBLE;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_ACTION")]
	public const string DBUS_INTERFACE_ACTION;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_APPLICATION")]
	public const string DBUS_INTERFACE_APPLICATION;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_CACHE")]
	public const string DBUS_INTERFACE_CACHE;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_COLLECTION")]
	public const string DBUS_INTERFACE_COLLECTION;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_COMPONENT")]
	public const string DBUS_INTERFACE_COMPONENT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_DEC")]
	public const string DBUS_INTERFACE_DEC;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_DEVICE_EVENT_LISTENER")]
	public const string DBUS_INTERFACE_DEVICE_EVENT_LISTENER;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_DOCUMENT")]
	public const string DBUS_INTERFACE_DOCUMENT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_EDITABLE_TEXT")]
	public const string DBUS_INTERFACE_EDITABLE_TEXT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_EVENT_KEYBOARD")]
	public const string DBUS_INTERFACE_EVENT_KEYBOARD;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_EVENT_MOUSE")]
	public const string DBUS_INTERFACE_EVENT_MOUSE;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_EVENT_OBJECT")]
	public const string DBUS_INTERFACE_EVENT_OBJECT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_HYPERLINK")]
	public const string DBUS_INTERFACE_HYPERLINK;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_HYPERTEXT")]
	public const string DBUS_INTERFACE_HYPERTEXT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_IMAGE")]
	public const string DBUS_INTERFACE_IMAGE;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_REGISTRY")]
	public const string DBUS_INTERFACE_REGISTRY;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_SELECTION")]
	public const string DBUS_INTERFACE_SELECTION;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_SOCKET")]
	public const string DBUS_INTERFACE_SOCKET;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_TABLE")]
	public const string DBUS_INTERFACE_TABLE;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_TABLE_CELL")]
	public const string DBUS_INTERFACE_TABLE_CELL;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_TEXT")]
	public const string DBUS_INTERFACE_TEXT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_INTERFACE_VALUE")]
	public const string DBUS_INTERFACE_VALUE;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_NAME_REGISTRY")]
	public const string DBUS_NAME_REGISTRY;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_PATH_DEC")]
	public const string DBUS_PATH_DEC;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_PATH_NULL")]
	public const string DBUS_PATH_NULL;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_PATH_REGISTRY")]
	public const string DBUS_PATH_REGISTRY;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_DBUS_PATH_ROOT")]
	public const string DBUS_PATH_ROOT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_EVENTTYPE_COUNT")]
	public const int EVENTTYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_KEYEVENTTYPE_COUNT")]
	public const int KEYEVENTTYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_KEYSYNTHTYPE_COUNT")]
	public const int KEYSYNTHTYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_MATCHTYPES_COUNT")]
	public const int MATCHTYPES_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_MODIFIERTYPE_COUNT")]
	public const int MODIFIERTYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_RELATIONTYPE_COUNT")]
	public const int RELATIONTYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_ROLE_COUNT")]
	public const int ROLE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_SORTORDER_COUNT")]
	public const int SORTORDER_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_STATETYPE_COUNT")]
	public const int STATETYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_TEXT_BOUNDARY_TYPE_COUNT")]
	public const int TEXT_BOUNDARY_TYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h", cname = "ATSPI_TEXT_CLIP_TYPE_COUNT")]
	public const int TEXT_CLIP_TYPE_COUNT;
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static bool deregister_device_event_listener (Atspi.DeviceListener listener, void* filter) throws GLib.Error;
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static bool deregister_keystroke_listener (Atspi.DeviceListener listener, GLib.Array<Atspi.KeyDefinition>? key_set, Atspi.KeyMaskType modmask, Atspi.KeyEventMask event_types) throws GLib.Error;
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static int exit ();
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static bool generate_keyboard_event (long keyval, string? keystring, Atspi.KeySynthType synth_type) throws GLib.Error;
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static bool generate_mouse_event (long x, long y, string name) throws GLib.Error;
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static Atspi.Accessible get_desktop (int i);
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static int get_desktop_count ();
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static GLib.Array<Atspi.Accessible> get_desktop_list ();
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static int init ();
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static bool is_initialized ();
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static bool register_device_event_listener (Atspi.DeviceListener listener, Atspi.DeviceEventMask event_types, void* filter) throws GLib.Error;
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static bool register_keystroke_listener (Atspi.DeviceListener listener, GLib.Array<Atspi.KeyDefinition>? key_set, Atspi.KeyMaskType modmask, Atspi.KeyEventMask event_types, Atspi.KeyListenerSyncType sync_type) throws GLib.Error;
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static void set_main_context (GLib.MainContext cnx);
	[CCode (cheader_filename = "atspi/atspi.h")]
	public static void set_timeout (int val, int startup_time);
}
