{ pkgs, lib, config, inputs, ... }:

{
	home.packages = with pkgs; [
		(lutris.override {
			extraLibraries = pkgs: [
				giflib
				libpng
				mpg123
				openal
				v4l-utils
				libpulseaudio
				alsa-plugins
				alsa-lib
				libjpeg
				xorg.libXcomposite
				xorg.libXinerama
				ncurses
				ocl-icd
				libxslt
				cups
				samba
				dosbox-staging
			];
		})
	];
}
