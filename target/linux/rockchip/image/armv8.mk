# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2020 Sarah Maedel

# FIT will be loaded at 0x02080000. Leave 16M for that, align it to 2M and load the kernel after it.
KERNEL_LOADADDR := 0x03200000

define Device/friendlyarm_nanopi-r4s
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R4S
  DEVICE_VARIANT := 4GB LPDDR4
  SOC := rk3399
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyarm_nanopi-r4s

define Device/friendlyarm_nanopi-r4s-enterprise
  DEVICE_VENDOR := FriendlyARM
  DEVICE_MODEL := NanoPi R4S Enterprise Edition
  DEVICE_VARIANT := 4GB LPDDR4
  SOC := rk3399
  UBOOT_DEVICE_NAME := nanopi-r4s-rk3399
  DEVICE_PACKAGES := kmod-r8169
endef
TARGET_DEVICES += friendlyarm_nanopi-r4s-enterprise
