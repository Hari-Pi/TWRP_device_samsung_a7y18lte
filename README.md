# PBRP device tree for Samsung Galaxy A7 (2018) — SM-A750F / `a7y18lte`

PitchBlack Recovery (android-12.1) device tree for the Exynos 7885 variant of the
Galaxy A7 (2018). Converted from the Omni/TWRP tree at
`Hari-Pi/TWRP_device_samsung_a7y18lte` (branch `wip`) to PBRP conventions:
product makefile renamed `omni_a7y18lte.mk` → `pb_a7y18lte.mk`,
`vendor/omni/config/common.mk` → `vendor/pb/config/common.mk`, lunch target
`pb_a7y18lte-eng`.

## Build

See [`BUILD.md`](../BUILD.md) in the parent recovery folder for full steps.
Short version, on a Linux box with ~150 GB free:

```bash
repo init -u https://github.com/PitchBlackRecoveryProject/manifest_pb -b android-12.1
# drop the local manifest from .github/workflows/pbrp-build.yml into
# .repo/local_manifests/pb_a7y18lte.xml
repo sync -c -j8
. build/envsetup.sh
lunch pb_a7y18lte-eng
mka pbrp
```

Output: `out/target/product/a7y18lte/recovery.img`.

## Device (brief)

| | |
|---|---|
| SoC | Samsung Exynos 7885 |
| Arch | arm64, Cortex-A53/big.LITTLE, Mali-G71 |
| Screen | 1080x2220, density 420, `ABGR_8888` |
| Kernel | prebuilt `Image` + `dt.img` (see `prebuilt/`) |
| Theme | `portrait_hdpi` |
| Build fingerprint | `samsung/a7y18ltejt/a7y18lte:10/QP1A.190711.020/A750FXXU5CVI1:user/release-keys` |