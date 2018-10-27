#
# Copyright (C) 2018 The LineageOS Project
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

# Symbols linker
ifeq ($(LIBSHIM_CAM_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libcam.camadapter.so|libshim_cam.so
endif

ifeq ($(LIBSHIM_GUI_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libgui.so|libshim_gui.so
endif

ifeq ($(LIBSHIM_IFC_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libnetutils.so|libshim_ifc.so
endif

ifeq ($(LIBSHIM_PBB_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/bin/program_binary_builder|libshim_pbb.so
endif

ifeq ($(LIBSHIM_UI_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/lib/libui.so|libshim_ui.so
endif

ifeq ($(LIBSHIM_VTMAL_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libvtmal.so|libshim_vtmal.so
endif

ifeq ($(LIBSHIM_WVM_SYMBOLS),true)
LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libwvm.so|libshim_wvm.so
endif
