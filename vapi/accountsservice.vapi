/* accountsservice.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Act", gir_namespace = "AccountsService", gir_version = "1.0", lower_case_cprefix = "act_")]
namespace Act {
	[CCode (cheader_filename = "act/act.h", type_id = "act_user_get_type ()")]
	public class User : GLib.Object {
		[CCode (has_construct_function = false)]
		protected User ();
		public int collate (Act.User user2);
		public Act.UserAccountType get_account_type ();
		public bool get_automatic_login ();
		public unowned string get_email ();
		public unowned string get_formats_locale ();
		public unowned string get_home_dir ();
		public unowned string get_icon_file ();
		public unowned GLib.Variant get_input_sources ();
		public unowned string get_language ();
		public unowned string get_location ();
		public bool get_locked ();
		public int get_login_frequency ();
		public unowned GLib.Variant get_login_history ();
		public int64 get_login_time ();
		public uint get_num_sessions ();
		public uint get_num_sessions_anywhere ();
		public unowned string get_object_path ();
		public unowned string get_password_hint ();
		public Act.UserPasswordMode get_password_mode ();
		public unowned string get_primary_session_id ();
		public unowned string get_real_name ();
		public unowned string get_shell ();
		public uint get_uid ();
		public unowned string get_user_name ();
		public unowned string get_x_session ();
		public bool is_local_account ();
		public bool is_logged_in ();
		public bool is_logged_in_anywhere ();
		public bool is_nonexistent ();
		public bool is_system_account ();
		public void set_account_type (Act.UserAccountType account_type);
		public void set_automatic_login (bool enabled);
		public void set_email (string email);
		public void set_formats_locale (string formats_locale);
		public void set_icon_file (string icon_file);
		public void set_input_sources (GLib.Variant sources);
		public void set_language (string language);
		public void set_location (string location);
		public void set_locked (bool locked);
		public void set_password (string password, string hint);
		public void set_password_hint (string hint);
		public void set_password_mode (Act.UserPasswordMode password_mode);
		public void set_real_name (string real_name);
		public void set_user_name (string user_name);
		public void set_x_session (string x_session);
		public int account_type { get; }
		public bool automatic_login { get; }
		[NoAccessorMethod]
		public string background_file { owned get; }
		public string email { get; }
		public string formats_locale { get; }
		[NoAccessorMethod]
		public string home_directory { owned get; }
		public string icon_file { get; }
		public GLib.Variant input_sources { get; }
		[NoAccessorMethod]
		public bool is_loaded { get; }
		public string language { get; }
		[NoAccessorMethod]
		public bool local_account { get; }
		public string location { get; }
		public bool locked { get; }
		public int login_frequency { get; }
		public GLib.Variant login_history { get; }
		public int64 login_time { get; }
		[NoAccessorMethod]
		public bool nonexistent { get; }
		public string password_hint { get; }
		public int password_mode { get; }
		public string real_name { get; }
		public string shell { get; }
		[NoAccessorMethod]
		public bool system_account { get; }
		public int uid { get; }
		public string user_name { get; }
		public string x_session { get; }
		[NoAccessorMethod]
		public bool xhas_messages { get; }
		[CCode (array_length = false, array_null_terminated = true)]
		[NoAccessorMethod]
		public string[] xkeyboard_layouts { owned get; }
		public signal void changed ();
		public signal void sessions_changed ();
	}
	[CCode (cheader_filename = "act/act.h", type_id = "act_user_manager_get_type ()")]
	public class UserManager : GLib.Object {
		[CCode (has_construct_function = false)]
		protected UserManager ();
		public bool activate_user_session (Act.User user);
		public Act.User cache_user (string username) throws GLib.Error;
		[Version (since = "0.6.27")]
		public async Act.User cache_user_async (string username, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool can_switch ();
		public Act.User create_user (string username, string fullname, Act.UserAccountType accounttype) throws GLib.Error;
		[Version (since = "0.6.27")]
		public async Act.User create_user_async (string username, string fullname, Act.UserAccountType accounttype, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool delete_user (Act.User user, bool remove_files) throws GLib.Error;
		[Version (since = "0.6.27")]
		public async bool delete_user_async (Act.User user, bool remove_files, GLib.Cancellable? cancellable) throws GLib.Error;
		public static unowned Act.UserManager get_default ();
		public unowned Act.User get_user (string username);
		public unowned Act.User get_user_by_id (uint id);
		public bool goto_login_session ();
		public GLib.SList<weak Act.User> list_users ();
		public bool no_service ();
		public bool uncache_user (string username) throws GLib.Error;
		public async bool uncache_user_async (string username, GLib.Cancellable? cancellable) throws GLib.Error;
		[NoAccessorMethod]
		public void* exclude_usernames_list { get; set; }
		[NoAccessorMethod]
		public bool has_multiple_users { get; }
		[NoAccessorMethod]
		public void* include_usernames_list { get; set; }
		[NoAccessorMethod]
		public bool is_loaded { get; }
		public virtual signal void user_added (Act.User user);
		public virtual signal void user_changed (Act.User user);
		public virtual signal void user_is_logged_in_changed (Act.User user);
		public virtual signal void user_removed (Act.User user);
	}
	[CCode (cheader_filename = "act/act.h", cprefix = "ACT_USER_ACCOUNT_TYPE_", type_id = "act_user_account_type_get_type ()")]
	public enum UserAccountType {
		STANDARD,
		ADMINISTRATOR
	}
	[CCode (cheader_filename = "act/act.h", cprefix = "ACT_USER_PASSWORD_MODE_", type_id = "act_user_password_mode_get_type ()")]
	public enum UserPasswordMode {
		REGULAR,
		SET_AT_LOGIN,
		NONE
	}
	[CCode (cheader_filename = "act/act.h", cprefix = "ACT_USER_MANAGER_ERROR_")]
	public errordomain UserManagerError {
		FAILED,
		USER_EXISTS,
		USER_DOES_NOT_EXIST,
		PERMISSION_DENIED,
		NOT_SUPPORTED;
		public static GLib.Quark quark ();
	}
}

