# Copyright (C) 2010 The Android Open Source Project
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

# This is the list of device provided keylayouts and key character maps to include.
# Used by Android.mk and keyboards.mk.

keylayouts := \
	keylayout/7k_handset.kl \
	keylayout/7x27a_kp.kl \
	keylayout/AVRCP.kl \
	keylayout/Generic.kl \
	keylayout/qwerty.kl \
	keylayout/surf_keypad.kl \
	keylayout/Vendor_045e_Product_028e.kl \
	keylayout/Vendor_046d_Product_c216.kl \
	keylayout/Vendor_046d_Product_c294.kl \
	keylayout/Vendor_046d_Product_c299.kl \
	keylayout/Vendor_046d_Product_c532.kl \
	keylayout/Vendor_054c_Product_0268.kl \
	keylayout/Vendor_05ac_Product_0239.kl \
	keylayout/Vendor_22b8_Product_093d.kl 
keycharmaps :=  \
	keychars/7x27a_kp.kcm \
	keychars/Generic.kcm \
	keychars/qwerty2.kcm \
	keychars/qwerty.kcm \
	keychars/Virtual.kcm \
	
keyconfigs := \
	idc/qwerty2.idc \
	idc/qwerty.idc
