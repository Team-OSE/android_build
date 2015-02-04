# Copyright (C) 2014 The SaberMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_DISABLE_STRICT := \
	camera.omap4 \
	audio.primary.piranha \
	libtee_client_api_driver \
	mm-vdec-omx-test \
	libOmxVenc \
	libqsap_sdk \
	lsof \
	tinyxml \
	camera.msm8084 \
	hwcomposer.msm8084 \
	bionic \
	libavutil \
	libavcodec \
	gatt_testtool \
	libwnndict \
	libxml2 \
	busybox \
	libbusybox \
	libfuse \
	libmtdutils \
	libstlport_static \
	libdl \
	libc_common \
	stlport \
	libcrypto_static \
	libc_bionic \
	libc_dns \
	libc_tzcode \
	libziparchive \
	libtwrpmtp \
	libfusetwrp \
	libguitwrp \
	busybox \
	libuclibcrpc \
	libziparchive-host \
	libpdfiumcore \
	libandroid_runtime \
	libmedia \
	libpdfiumcore \
	libpdfium \
	bluetooth.default \
	logd \
	mdnsd \
	net_net_gyp \
	libstagefright_webm \
	libaudioflinger \
	libmediaplayerservice \
	libstagefright \
	ping \
	ping6 \
	libdiskconfig \
	libjavacore \
	libfdlibm \
	libvariablespeed \
	librtp_jni \
	libwilhelm \
	libdownmix \
	libldnhncr \
	libqcomvisualizer \
	libvisualizer \
	libstlport \
	libutils \
	libandroidfw \
	dnsmasq \
	static_busybox \
	content_content_renderer_gyp \
	third_party_WebKit_Source_modules_modules_gyp \
	third_party_WebKit_Source_platform_blink_platform_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gyp \
	third_party_angle_src_translator_lib_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	libc_gdtoa \
	libc_openbsd \
	libc \
	libc_nomalloc \
	libcurl \
	libc_malloc \
	libjemalloc \
	libfs_mgr \
	init \
	libcutils \
	liblog \
	libselinux \
	libext2_blkid \
	libext4_utils_static \
	adbd \
	libminivold \
	recovery_tune2fs\
	libvold \
	recovery_e2fsck \
	libext2fs \
	libminzip \
	bu_recovery \
	libsdcard \
	libfusesideload \
	libaapt \
	libunwind \
	libbluetooth_jni \
	libEGL \
	libGLES_trace \
	libsync \
	libnetutils \
	libhardware_legacy \
	libwpa_client \
	libicui18n \
	libft2 \
	libicuuc \
	libcommon_time_client \
	libskia \
	libsonivox \
	libstagefright_foundation \
	libusbhost \
	libsqlite \
	libbt-brcm_bta \
	libbt-brcm_stack \
	libbt-hci \
	libbt-qcom_sbc_decoder \
	libjni_jpegutil \
	libjni_jpegstream \
	libnfc-nci \
	v8_tools_gyp_v8_base_arm_host_gyp \
	third_party_icu_icuuc_arm_host_gyp \
	v8_tools_gyp_v8_base_gyp \
	libsvoxpico \
	libbt-vendor \
	third_party_libxml_libxml_gyp \
	skia_skia_library_gyp \
	third_party_sqlite_sqlite_gyp \
	third_party_libevent_libevent_gyp \
	third_party_freetype_ft2_gyp \
	third_party_opus_opus_gyp \
	third_party_WebKit_Source_platform_blink_common_gyp \
	base_base_gyp

ifneq (1,$(words $(filter $(LOCAL_DISABLE_STRICT), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif
ifdef LOCAL_CLANG
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=3
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=3
else
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=2
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=2
endif
endif
#####
