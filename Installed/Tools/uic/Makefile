##############################################################################
#
# 	Copyright (c) GeoWorks 1992 -- All Rights Reserved
#
# PROJECT:	PC GEOS
# MODULE:	uic -- Makefile
# FILE: 	Makefile
# AUTHOR: 	Jacob A. Gabrielson, Wed Sep 25 13:22:26 PDT 1996
#
# TARGETS:
# 	Name			Description
#	----			-----------
#	all			create the tool for all possible architectures
#	install			create and install for all architectures
#	depend			generate dependencies for all architectures
#	sparc                   create tool for sparc 
#	installsparc            create and install tool for sparc 
#	dependsparc             generate dependencies for sparc 
#	win32                   create tool for win32 
#	installwin32            create and install tool for win32 
#	dependwin32             generate dependencies for win32 
#
# DESCRIPTION:
#	This makefile was automatically generated from:
#	    /staff/pcgeos/Tools/mkmf/Makefile.tool
#
#	DO NOT EDIT IT, AS YOU MAY LOSE YOUR CHANGES WHEN IT IS REGENERATED
#
#	$Id: Makefile.tool,v 1.5 96/09/05 15:58:56 jacob Exp $
#
###############################################################################


#include	<geos.mk>
#include	<gpath.mk>

MACHINES	= linux win32
MAKEFILE	= Makefile
NAME		= uic
SYSMAKEFILE	= tool.mk
TYPE		= tool

#if	defined(linux)
DEFTARGET	= linux
#else
DEFTARGET	= win32
#endif

MISRCS          = map.c map.h output.c parse.c parse.h parse.y scan.c\
                  semantic.c strwid.c strwid.h symbol.c symbol.h uic.c\
                  uic.h

linuxSRCS       = $(MISRCS) linux.md/
linuxOBJS       = linux.md/map.o linux.md/output.o linux.md/parse.o\
                  linux.md/scan.o linux.md/semantic.o linux.md/strwid.o\
                  linux.md/symbol.o linux.md/uic.o
linuxLIBS       =

win32SRCS       = $(MISRCS) win32.md/
win32OBJS       = win32.md/map.obj win32.md/output.obj win32.md/parse.obj\
                  win32.md/scan.obj win32.md/semantic.obj\
                  win32.md/strwid.obj win32.md/symbol.obj win32.md/uic.obj
win32LIBS       =


SUBDIRS         = 

#if exists(local.mk)
#include	"local.mk"
#else
#include	<$(SYSMAKEFILE)>
#endif

#if	exists(sparc.md/dependencies.mk)
#include	"linux.md/dependencies.mk"
#endif

#if	exists(win32.md/dependencies.mk)
#include	"win32.md/dependencies.mk"
#endif


# Allow mkmf
