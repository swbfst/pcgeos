
.PATH.h		:
.PATH.h		: . $(INSTALL_DIR) \
		  ../include $(INSTALL_DIR:H)/include \
		  ../pmake/src/lib/lst $(INSTALL_DIR:H)/pmake/lib/lst \
		  ../pmake/src/lib/include $(INSTALL_DIR:H)/pmake/src/lib/include

#ifndef unix
.SUFFIXES	: .lib
LIBS		= $(.TARGET:H)/compat.lib $(.TARGET:H)/lst.lib \
	 	  $(.TARGET:H)/winutil.lib
.PATH.lib	: ../compat $(INSTALL_DIR:H)/compat \
		  ../pmake/lib/lst $(INSTALL_DIR:H)/pmake/lib/lst \
		  ../winutil $(INSTALL_DIR:H)/winutil
#endif


#include    <$(SYSMAKEFILE)>

#
# Nuke the .asm.obj rule.
#
# I don't know why, but somehow the .asm.obj rule from geos.mk
# (which is not applicable to tools) overrides the .c.obj rule
# in tool.mk.  I have no idea why this is happening, because it
# doesn't happen for any of the other tools, just mkmf.
# I love makefile problems.
#
.asm.obj:

