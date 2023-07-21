{
  description = "uvc crate's test";

  outputs = { self, nixpkgs }: {

    #packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    #packages.x86_64-linux.default = self.packages.x86_64-linux.hello;
    packages = {
      x86_64-linux = {
        default = 
          with import nixpkgs { system = "x86_64-linux"; };
          stdenv.mkDerivation {
            name = "test-uvc-rs";
            src = self;
            builder = ./builder.sh;
          };
      };
    };
  };
}
