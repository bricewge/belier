self: super: {
  belier = self.callPackage ./derivation.nix{};
  cobra = self.callPackage ./cobra{};
}
