#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:16044032:c4f3c8c967b74c2eae588174323749f1f30dffdb; then
  applypatch --bonus /system/etc/recovery-resource.dat \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7127040:01e2c867d4e039aa6d6fd1abbcffe761b6b3076a \
          --target EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:16044032:c4f3c8c967b74c2eae588174323749f1f30dffdb && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
