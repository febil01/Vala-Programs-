public class SampleWindow : Gtk.Application {
    public SampleWindow() {
        Object (
            application_id: "Basic Window",
            flags: GLib.ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate() {
       new_window();
    }   

    private void new_window() {
        var window = new Gtk.ApplicationWindow(this);
        window.title = "Sample Window";
        window.window_position = Gtk.WindowPosition.CENTER_ALWAYS;
        window.set_default_size(400,200);
        window.show_all();
    }

    public static int main(string[] args) {
        var sampleWindow = new SampleWindow();
        return sampleWindow.run(args);
    }
 }