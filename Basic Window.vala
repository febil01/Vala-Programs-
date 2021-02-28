int main(string[] args) {
	Gtk.init(ref args);
	var window = new Gtk.Window();
	window.title = "New Window"; // or window.set_title("New Window");
	window.border_width = 5;
	window.window_position = Gtk.WindowPosition.CENTER_ALWAYS;
	window.set_default_size(300,200);
	window.destroy.connect(Gtk.main_quit);
	window.show_all();
	Gtk.main();
	return 0;
}