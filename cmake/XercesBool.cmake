# CMake build for xerces-c
#
# Written by Roger Leigh <rleigh@codelibre.net>
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# bool type

include(CheckCXXSourceCompiles)

check_cxx_source_compiles("
int f(int  x){return 1;}
int f(char x){return 1;}
int f(bool x){return 1;}

int main() {
  bool b = true;
  return f(b);
}"
  HAVE_BOOL)

set(XERCES_NO_NATIVE_BOOL 0)
if(NOT HAVE_BOOL)
  set(XERCES_NO_NATIVE_BOOL 1)
endif()
