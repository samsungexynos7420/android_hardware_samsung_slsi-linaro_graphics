
# Copyright (C) 2008 The Android Open Source Project
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

ifndef TARGET_SOC_BASE
        TARGET_SOC_BASE := $(TARGET_SOC)
endif

ifeq ($(BOARD_USES_VDS_BGRA8888), true)
LOCAL_C_INCLUDES += \
	$(TOP)/hardware/samsung_slsi-linaro/graphics/$(TARGET_SOC)/libhwcutilsmodule \
	$(TOP)/hardware/samsung_slsi-linaro/graphics/base/libmpp
endif

LOCAL_SRC_FILES += \
        ../../$(TARGET_SOC_BASE)/libvirtualdisplaymodule/ExynosVirtualDisplayModule.cpp

