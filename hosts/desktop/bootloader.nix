{
  config,
  pkgs,
  ...
}: {
  boot = {
    tmp.cleanOnBoot = true;

    kernelParams = [
      "nvidia_drm.modeset=1"
      "rd.driver.blacklist=nouveau"
      "modprobe.blacklist=nouveau"
      "ibt=off"
    ];

    consoleLogLevel = 0;
    initrd.verbose = false;
    initrd.kernelModules = [
      "i915"
      "nvidia"
      "nvidia_modeset"
      "nvidia_uvm"
      "nvidia_drm"
    ];

    kernelPackages = pkgs.linuxPackages_latest;
    extraModprobeConfig = "options nvidia-drm modeset=1";

    loader = {
      timeout = 5;

      efi = {
        efiSysMountPoint = "/boot";
        canTouchEfiVariables = true;
      };

      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        useOSProber = true;
        extraEntries = ''
          menuentry "Reboot" {
          	reboot
          }
          menuentry "Poweroff" {
          	halt
          }
        '';
      };
    };
  };
}
