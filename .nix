# Example for a NixOS configuration
environment.systemPackages = [
  (pkgs.writeShellApplication {
    name = "hello-nix";
    runtimeInputs = [ pkgs.hello ];
    text = ''
      hello --greeting "Hi from Nix!"
    '';
  })
];
