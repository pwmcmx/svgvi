svgvi_sources = [
  'app.vala',
  'editor.vala',
  'main.vala',
  'source-view.vala',
  'svg-view.vala',
  'window.vala',
]

svgvi_deps = [
  dependency('gsvgtk-0.6', version: '>= 0.5.1'),
  dependency ('gtksourceview-3.0'),
  libmath
]

gnome = import('gnome')

svgvi_sources += gnome.compile_resources('svgvi-resources',
  'svgvi.gresource.xml',
  c_name: 'svgvi'
)

executable('mx.pwmc.Svgvi', svgvi_sources,
  vala_args: '--target-glib=2.50',  dependencies: svgvi_deps,
  install: true,
)

install_data([
		'mx.pwmc.Svgvi.svg',
	],
	install_dir:
		join_paths(get_option('datadir'),'icons', 'hicolor','scalable','apps')
	)
install_data([
		'mx.pwmc.Svgvi.png',
	],
	install_dir:
		join_paths(get_option('datadir'),'icons', 'hicolor','512x512','apps')
	)