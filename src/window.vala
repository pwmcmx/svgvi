/* window.vala
 *
 * Copyright 2019 Daniel Espinosa Ortiz <esodan@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
using GSvg;

[GtkTemplate (ui = "/mx/pwmc/Svgvi/window.ui")]
public class Svgvi.Window : Gtk.ApplicationWindow {
  [GtkChild]
  private Gtk.Box bxmain;
  [GtkChild]
  private Gtk.Button bopen;
  [GtkChild]
  private Gtk.Button bsave;
  
  private File current;
  private Svgvi.Editor editor;

  construct {
    editor = new Svgvi.Editor ();
    bxmain.pack_start (editor, true, true, 12);
  }

  public Window (Gtk.Application app) {
    Object (application: app);
  }
}
