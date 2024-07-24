//
// Fl_File_Chooser dialog for the Fast Light Tool Kit (FLTK).
//
// Copyright 1998-2024 by Bill Spitzak and others.
//
// This library is free software. Distribution and use rights are outlined in
// the file "COPYING" which should have been included with this file.  If this
// file is missing or damaged, see the license at:
//
//     https://www.fltk.org/COPYING.php
//
// Please see the following page on how to report bugs and issues:
//
//     https://www.fltk.org/bugs.php
//
// =======================================================================
//  DO NOT EDIT FL/Fl_File_Chooser.h and src/Fl_File_Chooser.cxx !!!
// =======================================================================
//  Please use fluid to change src/Fl_File_Chooser.fl interactively
//  and then use fluid to "write code" or edit and use fluid -c .
// =======================================================================
//

// generated by Fast Light User Interface Designer (fluid) version 1.0400

#ifndef Fl_File_Chooser_H
#define Fl_File_Chooser_H
#include "Fl.h"
#include "Fl_Double_Window.h"
#include "Fl_Group.h"
#include "Fl_Choice.h"
#include "Fl_Menu_Button.h"
#include "Fl_Button.h"
#include "Fl_Preferences.h"
#include "Fl_Tile.h"
#include "Fl_File_Browser.h"
#include "Fl_Box.h"
#include "Fl_Check_Button.h"
#include "Fl_File_Input.h"
#include "Fl_Return_Button.h"
#include "fl_ask.h"

class Fl_File_Chooser {
public:
  /**
   \enum Type
   Determines the type of file chooser presented to the user.
  */
  enum Type {
    SINGLE    = 0, ///< Select a single, existing file.
    MULTI     = 1, ///< Select one or more existing files.
    CREATE    = 2, ///< When used alone, select a single, existing file or specify a new filename.
                   ///< Can be combined with DIRECTORY (e.g. CREATE|DIRECTORY) to have the same
                   ///< effect for directories.
    DIRECTORY = 4  ///< Select a single, existing directory. Can be combined with CREATE.
  };
private:
  static Fl_Preferences *prefs_;
  void (*callback_)(Fl_File_Chooser*, void *);
  void *data_;
  char directory_[FL_PATH_MAX];
  char pattern_[FL_PATH_MAX];
  char preview_text_[2048];
  int type_;
  void favoritesButtonCB();
  void favoritesCB(Fl_Widget *w);
  void fileListCB();
  void fileNameCB();
  void newdir();
  static void previewCB(Fl_File_Chooser *fc);
  void showChoiceCB();
  void update_favorites();
  void update_preview();
public:
  Fl_File_Chooser(const char *pathname, const char *pattern, int type_val, const char *title);
private:
  Fl_Double_Window *window;
  inline void cb_window_i(Fl_Double_Window*, void*);
  static void cb_window(Fl_Double_Window*, void*);
  Fl_Choice *showChoice;
  inline void cb_showChoice_i(Fl_Choice*, void*);
  static void cb_showChoice(Fl_Choice*, void*);
  Fl_Menu_Button *favoritesButton;
  inline void cb_favoritesButton_i(Fl_Menu_Button*, void*);
  static void cb_favoritesButton(Fl_Menu_Button*, void*);
public:
  Fl_Button *newButton;
private:
  inline void cb_newButton_i(Fl_Button*, void*);
  static void cb_newButton(Fl_Button*, void*);
  inline void cb__i(Fl_Tile*, void*);
  static void cb_(Fl_Tile*, void*);
  Fl_File_Browser *fileList;
  inline void cb_fileList_i(Fl_File_Browser*, void*);
  static void cb_fileList(Fl_File_Browser*, void*);
  Fl_Box *errorBox;
  Fl_Box *previewBox;
public:
  Fl_Check_Button *previewButton;
private:
  inline void cb_previewButton_i(Fl_Check_Button*, void*);
  static void cb_previewButton(Fl_Check_Button*, void*);
public:
  Fl_Check_Button *showHiddenButton;
private:
  inline void cb_showHiddenButton_i(Fl_Check_Button*, void*);
  static void cb_showHiddenButton(Fl_Check_Button*, void*);
  Fl_File_Input *fileName;
  inline void cb_fileName_i(Fl_File_Input*, void*);
  static void cb_fileName(Fl_File_Input*, void*);
  Fl_Return_Button *okButton;
  inline void cb_okButton_i(Fl_Return_Button*, void*);
  static void cb_okButton(Fl_Return_Button*, void*);
  Fl_Button *cancelButton;
  inline void cb_cancelButton_i(Fl_Button*, void*);
  static void cb_cancelButton(Fl_Button*, void*);
  Fl_Double_Window *favWindow;
  Fl_File_Browser *favList;
  inline void cb_favList_i(Fl_File_Browser*, void*);
  static void cb_favList(Fl_File_Browser*, void*);
  Fl_Button *favUpButton;
  inline void cb_favUpButton_i(Fl_Button*, void*);
  static void cb_favUpButton(Fl_Button*, void*);
  Fl_Button *favDeleteButton;
  inline void cb_favDeleteButton_i(Fl_Button*, void*);
  static void cb_favDeleteButton(Fl_Button*, void*);
  Fl_Button *favDownButton;
  inline void cb_favDownButton_i(Fl_Button*, void*);
  static void cb_favDownButton(Fl_Button*, void*);
  Fl_Button *favCancelButton;
  inline void cb_favCancelButton_i(Fl_Button*, void*);
  static void cb_favCancelButton(Fl_Button*, void*);
  Fl_Return_Button *favOkButton;
  inline void cb_favOkButton_i(Fl_Return_Button*, void*);
  static void cb_favOkButton(Fl_Return_Button*, void*);
public:
  ~Fl_File_Chooser();
  void callback(void (*cb)(Fl_File_Chooser *, void *), void *d = 0);
  void color(Fl_Color c);
  Fl_Color color();
  int count();
  void directory(const char *d);
  char * directory();
  void filter(const char *p);
  const char * filter();
  int filter_value();
  void filter_value(int f);
  void iconsize(uchar s);
  uchar iconsize();
  void label(const char *l);
  const char * label();
  void ok_label(const char *l);
  const char * ok_label();
  void preview(int e);
  int preview() const { return previewButton->value(); }
private:
  void showHidden(int e);
  void remove_hidden_files();
public:
  void rescan();
  void rescan_keep_filename();
  void show();
  void hide();
  int shown();
  void textcolor(Fl_Color c);
  Fl_Color textcolor();
  void textfont(Fl_Font f);
  Fl_Font textfont();
  void textsize(Fl_Fontsize s);
  Fl_Fontsize textsize();
  void type(int t);
  int type();
  void * user_data() const;
  void user_data(void *d);
  const char *value(int f = 1);
  void value(const char *filename);
  int visible();
  void position(int x, int y);
  int x() const;
  int y() const;
  int w() const;
  int h() const;
  void size(int w, int h);
  void resize(int x, int y, int w, int h);
  /**
   [standard text may be customized at run-time]
  */
  static const char *add_favorites_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *all_files_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *custom_filter_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *existing_file_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *favorites_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *filename_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *filesystems_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *manage_favorites_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *new_directory_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *new_directory_tooltip;
  /**
   [standard text may be customized at run-time]
  */
  static const char *preview_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *save_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *show_label;
  /**
   [standard text may be customized at run-time]
  */
  static const char *hidden_label;
  /**
   the sort function that is used when loading
   the contents of a directory.
  */
  static Fl_File_Sort_F *sort;
private:
  Fl_Widget* ext_group;
public:
  Fl_Widget* add_extra(Fl_Widget* gr);
protected:
  void show_error_box(int val);
};
char *fl_dir_chooser(const char *message,const char *fname,int relative=0);
char *fl_file_chooser(const char *message,const char *pat,const char *fname,int relative=0);
void fl_file_chooser_callback(void (*cb)(const char*));
void fl_file_chooser_ok_label(const char*l);
#endif
