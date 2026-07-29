import Lake
open Lake

package «'''$PACKAGE_NAME'''» where
  precompileModules := true

require canonical_lane_mathlib_core from git
  "https://github.com/HautevilleHouse/canonical-lane-mathlib"
  @ "ac2caf2b7698cd96d2cd0bf5a4cdbbe88c7f620f"

@[default_target]
lean_lib «'''$PACKAGE_NAME'''» where
  roots := #[«'''$PACKAGE_NAME'''»]
