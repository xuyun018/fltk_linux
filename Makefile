#
# Library Makefile for the Fast Light Tool Kit (FLTK).
#
# Copyright 1998-2024 by Bill Spitzak and others.
#
# This library is free software. Distribution and use rights are outlined in
# the file "COPYING" which should have been included with this file.  If this
# file is missing or damaged, see the license at:
#
#      https://www.fltk.org/COPYING.php
#
# Please see the following page on how to report bugs and issues:
#
#      https://www.fltk.org/bugs.php
#

# Note:	see ../configure.ac and/or ../makeinclude for definition of
#	FL_VERSION (x.y.z), FL_ABI_VERSION (x.y.0), and FL_DSO_VERSION (x.y)
CXX		= g++
CC		= gcc

TARGET = chief

DIR_OBJ = ./obj
DIR_BIN = ./bin

CPPFILES = \
	fltk/src/Fl.cpp \
	fltk/src/Fl_Adjuster.cpp \
	fltk/src/Fl_Bitmap.cpp \
	fltk/src/Fl_Browser.cpp \
	fltk/src/Fl_Browser_.cpp \
	fltk/src/Fl_Browser_load.cpp \
	fltk/src/Fl_Box.cpp \
	fltk/src/Fl_Button.cpp \
	fltk/src/Fl_Cairo.cpp \
	fltk/src/Fl_Chart.cpp \
	fltk/src/Fl_Check_Browser.cpp \
	fltk/src/Fl_Check_Button.cpp \
	fltk/src/Fl_Choice.cpp \
	fltk/src/Fl_Clock.cpp \
	fltk/src/Fl_Color_Chooser.cpp \
	fltk/src/Fl_Copy_Surface.cpp \
	fltk/src/Fl_Counter.cpp \
	fltk/src/Fl_Dial.cpp \
	fltk/src/Fl_Device.cpp \
	fltk/src/Fl_Double_Window.cpp \
	fltk/src/Fl_File_Browser.cpp \
	fltk/src/Fl_File_Chooser.cpp \
	fltk/src/Fl_File_Chooser2.cpp \
	fltk/src/Fl_File_Icon.cpp \
	fltk/src/Fl_File_Input.cpp \
	fltk/src/Fl_Flex.cpp \
	fltk/src/Fl_Graphics_Driver.cpp \
	fltk/src/Fl_Grid.cpp \
	fltk/src/Fl_Group.cpp \
	fltk/src/Fl_Help_View.cpp \
	fltk/src/Fl_Image.cpp \
	fltk/src/Fl_Image_Surface.cpp \
	fltk/src/Fl_Input.cpp \
	fltk/src/Fl_Input_.cpp \
	fltk/src/Fl_Input_Choice.cpp \
	fltk/src/Fl_Int_Vector.cpp \
	fltk/src/Fl_Light_Button.cpp \
	fltk/src/Fl_Menu.cpp \
	fltk/src/Fl_Menu_.cpp \
	fltk/src/Fl_Menu_Bar.cpp \
	fltk/src/Fl_Menu_Button.cpp \
	fltk/src/Fl_Menu_Window.cpp \
	fltk/src/Fl_Menu_add.cpp \
	fltk/src/Fl_Menu_global.cpp \
	fltk/src/Fl_Message.cpp \
	fltk/src/Fl_Multi_Label.cpp \
	fltk/src/Fl_Native_File_Chooser.cpp \
	fltk/src/Fl_Overlay_Window.cpp \
	fltk/src/Fl_Pack.cpp \
	fltk/src/Fl_Paged_Device.cpp \
	fltk/src/Fl_Pixmap.cpp \
	fltk/src/Fl_Positioner.cpp \
	fltk/src/Fl_Preferences.cpp \
	fltk/src/Fl_Progress.cpp \
	fltk/src/Fl_Repeat_Button.cpp \
	fltk/src/Fl_Return_Button.cpp \
	fltk/src/Fl_Roller.cpp \
	fltk/src/Fl_Round_Button.cpp \
	fltk/src/Fl_Screen_Driver.cpp \
	fltk/src/Fl_Scheme.cpp \
	fltk/src/Fl_Scheme_Choice.cpp \
	fltk/src/Fl_Scroll.cpp \
	fltk/src/Fl_Scrollbar.cpp \
	fltk/src/Fl_Shared_Image.cpp \
	fltk/src/Fl_Shortcut_Button.cpp \
	fltk/src/Fl_Single_Window.cpp \
	fltk/src/Fl_Slider.cpp \
	fltk/src/Fl_Spinner.cpp \
	fltk/src/Fl_String.cpp \
	fltk/src/Fl_Sys_Menu_Bar.cpp \
	fltk/src/Fl_System_Driver.cpp \
	fltk/src/Fl_Table.cpp \
	fltk/src/Fl_Table_Row.cpp \
	fltk/src/Fl_Tabs.cpp \
	fltk/src/Fl_Terminal.cpp \
	fltk/src/Fl_Text_Buffer.cpp \
	fltk/src/Fl_Text_Display.cpp \
	fltk/src/Fl_Text_Editor.cpp \
	fltk/src/Fl_Tile.cpp \
	fltk/src/Fl_Tiled_Image.cpp \
	fltk/src/Fl_Timeout.cpp \
	fltk/src/Fl_Tree.cpp \
	fltk/src/Fl_Tree_Item.cpp \
	fltk/src/Fl_Tree_Item_Array.cpp \
	fltk/src/Fl_Tree_Prefs.cpp \
	fltk/src/Fl_Tooltip.cpp \
	fltk/src/Fl_Valuator.cpp \
	fltk/src/Fl_Value_Input.cpp \
	fltk/src/Fl_Value_Output.cpp \
	fltk/src/Fl_Value_Slider.cpp \
	fltk/src/Fl_Widget.cpp \
	fltk/src/Fl_Widget_Surface.cpp \
	fltk/src/Fl_Window.cpp \
	fltk/src/Fl_Window_Driver.cpp \
	fltk/src/Fl_Window_fullscreen.cpp \
	fltk/src/Fl_Window_hotspot.cpp \
	fltk/src/Fl_Window_iconize.cpp \
	fltk/src/Fl_Wizard.cpp \
	fltk/src/Fl_XBM_Image.cpp \
	fltk/src/Fl_XPM_Image.cpp \
	fltk/src/Fl_abort.cpp \
	fltk/src/Fl_add_idle.cpp \
	fltk/src/Fl_arg.cpp \
	fltk/src/Fl_compose.cpp \
	fltk/src/Fl_display.cpp \
	fltk/src/Fl_get_system_colors.cpp \
	fltk/src/Fl_grab.cpp \
	fltk/src/Fl_lock.cpp \
	fltk/src/Fl_own_colormap.cpp \
	fltk/src/Fl_visual.cpp \
	fltk/src/filename_absolute.cpp \
	fltk/src/filename_expand.cpp \
	fltk/src/filename_ext.cpp \
	fltk/src/filename_isdir.cpp \
	fltk/src/filename_list.cpp \
	fltk/src/filename_match.cpp \
	fltk/src/filename_setext.cpp \
	fltk/src/fl_arc.cpp \
	fltk/src/fl_ask.cpp \
	fltk/src/fl_boxtype.cpp \
	fltk/src/fl_color.cpp \
	fltk/src/fl_contrast.cpp \
	fltk/src/fl_cursor.cpp \
	fltk/src/fl_curve.cpp \
	fltk/src/fl_diamond_box.cpp \
	fltk/src/fl_draw.cpp \
	fltk/src/fl_draw_arrow.cpp \
	fltk/src/fl_draw_pixmap.cpp \
	fltk/src/fl_encoding_latin1.cpp \
	fltk/src/fl_encoding_mac_roman.cpp \
	fltk/src/fl_engraved_label.cpp \
	fltk/src/fl_file_dir.cpp \
	fltk/src/fl_font.cpp \
	fltk/src/fl_gleam.cpp \
	fltk/src/fl_gtk.cpp \
	fltk/src/fl_labeltype.cpp \
	fltk/src/fl_open_uri.cpp \
	fltk/src/fl_oval_box.cpp \
	fltk/src/fl_overlay.cpp \
	fltk/src/fl_oxy.cpp \
	fltk/src/fl_plastic.cpp \
	fltk/src/fl_read_image.cpp \
	fltk/src/fl_rect.cpp \
	fltk/src/fl_round_box.cpp \
	fltk/src/fl_rounded_box.cpp \
	fltk/src/fl_set_font.cpp \
	fltk/src/fl_scroll_area.cpp \
	fltk/src/fl_shadow_box.cpp \
	fltk/src/fl_shortcut.cpp \
	fltk/src/fl_show_colormap.cpp \
	fltk/src/fl_string_functions.cpp \
	fltk/src/fl_symbols.cpp \
	fltk/src/fl_utf8.cpp \
	fltk/src/fl_vertex.cpp \
	fltk/src/screen_xywh.cpp


OBJCPPFILES = \
	fltk/src/Fl_cocoa.mm \
	fltk/src/Fl_Native_File_Chooser_MAC.mm \
	fltk/src/Fl_MacOS_Sys_Menu_Bar.mm

FLCPPFILES = \
	fltk/src/forms_compatibility.cpp \
	fltk/src/forms_bitmap.cpp \
	fltk/src/forms_free.cpp \
	fltk/src/forms_fselect.cpp \
	fltk/src/forms_pixmap.cpp \
	fltk/src/forms_timer.cpp

GLMMFILES_OSX = $(GLOBJCPPFILES)
GLMMFILES = $(GLMMFILES_$(BUILD))

IMGCPPFILES = \
	fltk/src/fl_images_core.cpp \
	fltk/src/fl_write_png.cpp \
	fltk/src/Fl_BMP_Image.cpp \
	fltk/src/Fl_File_Icon2.cpp \
	fltk/src/Fl_GIF_Image.cpp \
	fltk/src/Fl_Anim_GIF_Image.cpp \
	fltk/src/Fl_Help_Dialog.cpp \
	fltk/src/Fl_ICO_Image.cpp \
	fltk/src/Fl_JPEG_Image.cpp \
	fltk/src/Fl_PNG_Image.cpp \
	fltk/src/Fl_PNM_Image.cpp \
	fltk/src/Fl_Image_Reader.cpp \
	fltk/src/Fl_SVG_Image.cpp \
	fltk/src/nanosvg.cpp \
	fltk/src/drivers/SVG/Fl_SVG_File_Surface.cpp

CFILES = fltk/src/flstring.cpp \
	fltk/src/numericsort.cpp \
	fltk/src/vsnprintf.cpp

CFILES_MAIN = main.cpp

UTF8CFILES = \
	fltk/src/xutf8/case.cpp \
	fltk/src/xutf8/imKStoUCS.cpp \
	fltk/src/xutf8/is_right2left.cpp \
	fltk/src/xutf8/is_spacing.cpp \
	fltk/src/xutf8/mk_wcwidth.cpp \
	fltk/src/xutf8/ucs2fontmap.cpp \
	fltk/src/xutf8/utf8Input.cpp \
	fltk/src/xutf8/utf8Utils.cpp \
	fltk/src/xutf8/utf8Wrap.cpp

# These C++ files are used under condition: BUILD_X11
XLIBCPPFILES = \
	fltk/src/drivers/Xlib/Fl_Xlib_Copy_Surface_Driver.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Image_Surface_Driver.cpp \
	fltk/src/drivers/X11/Fl_X11_Window_Driver.cpp \
	fltk/src/drivers/X11/Fl_X11_Screen_Driver.cpp \
	fltk/src/drivers/Posix/Fl_Posix_System_Driver.cpp \
    fltk/src/drivers/Unix/Fl_Unix_System_Driver.cpp \
	fltk/src/drivers/Unix/Fl_Unix_Screen_Driver.cpp \
	fltk/src/drivers/X11/fl_X11_platform_init.cpp \
	fltk/src/Fl_x.cpp \
	fltk/src/fl_dnd_x.cpp \
    fltk/src/Fl_Native_File_Chooser_FLTK.cpp \
	fltk/src/Fl_Native_File_Chooser_GTK.cpp\
	fltk/src/Fl_Native_File_Chooser_Kdialog.cpp \
	fltk/src/Fl_Native_File_Chooser_Zenity.cpp \
    fltk/src/Fl_get_key.cpp

# These graphics driver files are used under condition: BUILD_X11 AND BUILD_XFT
XLIBGDFILES = fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver_arci.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver_color.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver_font_x.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver_image.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver_line_style.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver_rect.cpp \
	fltk/src/drivers/Xlib/Fl_Xlib_Graphics_Driver_vertex.cpp

#   fl_dnd_x.cpp  Fl_Native_File_Chooser_GTK.cpp

# This C file is used under condition: BUILD_X11
XLIBCFILES = \
    fltk/src/xutf8/keysym2Ucs.cpp \
    fltk/src/scandir_posix.cpp

PSCPPFILES = \
	fltk/src/drivers/PostScript/Fl_PostScript.cpp \
	fltk/src/drivers/PostScript/Fl_PostScript_image.cpp


# makeinclude has set this variable:
# BUILD = {WIN|X11|XFT|CAIRO|OSX|WAYLAND|WAYLANDX11}

MMFILES_OSX = $(OBJCPPFILES)
MMFILES = $(MMFILES_$(BUILD))

CPPFILES += $(PSCPPFILES)

CPPFILES_X11 = $(XLIBCPPFILES) $(XLIBGDFILES) $(XLIBFONTFILES)


CFILES_X11 = $(XLIBCFILES) $(XLIBXCFILES)

# $(MMFILES:.mm=.o)
OBJECTS = $(CPPFILES:.cpp=.o) \
	$(CPPFILES_X11:.cpp=.o) \
	$(CFILES:.cpp=.o) \
	$(CFILES_X11:.cpp=.o) \
	$(UTF8CFILES:.cpp=.o) \
	$(FLCPPFILES:.cpp=.o) \
	$(CFILES_MAIN:.cpp=.o)

OBJECTS += $(EXTRA_OBJECTS_$(BUILD))
FLOBJECTS = $(FLCPPFILES:.cpp=.o)
IMGOBJECTS = $(IMGCPPFILES:.cpp=.o)

$(TARGET): $(OBJECTS)
	$(CXX) -O2 $(CPPFILES) $(CPPFILES_X11) $(CFILES) $(CFILES_X11) $(UTF8CFILES) $(FLCPPFILES) $(CFILES_MAIN) -o $@ -lX11

#-----------------------------------------------------------------
# - the import libraries libfltk*.dll.a and the .dll files
#   are created from the libfltk*.a files. They are built
#   into the src dir.
# - The _images, _gl, _forms and dlls must be linked
#   against the import libraries in the src dir.
#-----------------------------------------------------------------

clean:
	-$(RM)	*.o xutf8/*.o *.dll.a core.* *~ *.bak *.bck
	-$(RM)	fltk/src/drivers/Cairo/*.o
	-$(RM)	fltk/src/drivers/Cocoa/*.o
	-$(RM)	fltk/src/drivers/Darwin/*.o
	-$(RM)	fltk/src/drivers/GDI/*.o
	-$(RM)	fltk/src/drivers/OpenGL/*.o
	-$(RM)	fltk/src/drivers/Posix/*.o
	-$(RM)	fltk/src/drivers/PostScript/*.o
	-$(RM)	fltk/src/drivers/Quartz/*.o
	-$(RM)	fltk/src/drivers/SVG/*.o
	-$(RM)	fltk/src/drivers/Unix/*.o
	-$(RM)	fltk/src/drivers/WinAPI/*.o
	-$(RM)	fltk/src/drivers/X11/*.o
	-$(RM)	fltk/src/drivers/Xlib/*.o
	-$(RM)	fltk/src/drivers/Wayland/*.o
	-$(RM)	$(DSONAME) $(FLDSONAME) $(GLDSONAME) $(IMGDSONAME) \
		$(LIBNAME) $(FLLIBNAME) $(GLLIBNAME) \
		$(IMGLIBNAME) \
		libfltk.so libfltk_forms.so libfltk_gl.so libfltk_images.so \
		libfltk.sl libfltk_forms.sl libfltk_gl.sl libfltk_images.sl \
		libfltk.dylib libfltk_forms.dylib \
		libfltk_gl.dylib libfltk_images.dylib \
		cmap core

