############################################################################
# postinstall.cmake
# Copyright (C) 2014  Belledonne Communications, Grenoble France
#
############################################################################
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
#
############################################################################

if(EXISTS ${INSTALL_PREFIX}/lib/avcodec-53.def)
	execute_process(COMMAND "lib" "/def:${INSTALL_PREFIX}/lib/avcodec-53.def" "/out:${INSTALL_PREFIX}/lib/avcodec.lib" "/machine:X86")
endif()
if(EXISTS ${INSTALL_PREFIX}/lib/avutil-51.def)
	execute_process(COMMAND "lib" "/def:${INSTALL_PREFIX}/lib/avutil-51.def" "/out:${INSTALL_PREFIX}/lib/avutil.lib" "/machine:X86")
endif()
if(EXISTS ${INSTALL_PREFIX}/lib/swresample-0.def)
	execute_process(COMMAND "lib" "/def:${INSTALL_PREFIX}/lib/swresample-0.def" "/out:${INSTALL_PREFIX}/lib/swresample.lib" "/machine:X86")
endif()
if(EXISTS ${INSTALL_PREFIX}/lib/swscale-2.def)
	execute_process(COMMAND "lib" "/def:${INSTALL_PREFIX}/lib/swscale-2.def" "/out:${INSTALL_PREFIX}/lib/swscale.lib" "/machine:X86")
endif()
