# Copyright 2019 Fairphone B.V.
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

exp_gles3_settings_file="/data/misc/fairphone/experimental_gles3"

# Initialize the settings file. System apps (including system settings) can
# read/write, but not create files in /data/misc/fairphone themselves.
# Turn experimental OpenGL ES 3.0 off by default.
if [ ! -f "${exp_gles3_settings_file}" ]; then
    echo 0 > "${exp_gles3_settings_file}"
    chmod 0660 "${exp_gles3_settings_file}"
fi
