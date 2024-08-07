//
// system menu bar widget for the Fast Light Tool Kit (FLTK).
//
// Copyright 1998-2017 by Bill Spitzak and others.
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

#ifndef Fl_Sys_Menu_Bar_Driver_H
#define Fl_Sys_Menu_Bar_Driver_H

#if !defined(FL_DOXYGEN)

#include "../hdr/Fl_Sys_Menu_Bar.h"

class Fl_Sys_Menu_Bar_Driver {
  friend class Fl_Sys_Menu_Bar;
public:
  static Fl_Sys_Menu_Bar::window_menu_style_enum window_menu_style_;
  static Fl_Sys_Menu_Bar_Driver *driver_; // to be assigned with a unique object of this class or of a derived class
  Fl_Sys_Menu_Bar *bar;
  Fl_Sys_Menu_Bar_Driver();
  virtual ~Fl_Sys_Menu_Bar_Driver();
  virtual void update() {}
  virtual void draw() { bar->Fl_Menu_Bar::draw();}
  virtual void about(Fl_Callback *, void *) {}
  virtual int add(const char* label, int shortcut, Fl_Callback *cb, void *user_data, int flags) {
    return bar->Fl_Menu_Bar::add(label, shortcut, cb, user_data, flags);
  }
  virtual int add(const char* str) { return bar->Fl_Menu_Bar::add(str); }
  virtual int insert(int index, const char* label, int shortcut, Fl_Callback *cb, void *user_data, int flags) {
    return bar->Fl_Menu_Bar::insert(index, label, shortcut, cb, user_data, flags);
  }
  virtual void menu(const Fl_Menu_Item *m) { bar->Fl_Menu_Bar::menu(m); }
  virtual void shortcut(int i, int s) { bar->Fl_Menu_Bar::shortcut(i, s); }
  virtual void setonly(Fl_Menu_Item *item) { bar->Fl_Menu_Bar::setonly(item); }
  virtual void clear() { bar->Fl_Menu_Bar::clear(); }
  virtual int clear_submenu(int index) { return bar->Fl_Menu_Bar::clear_submenu(index);}
  virtual void remove(int index) { bar->Fl_Menu_Bar::remove(index); }
  virtual void replace(int index, const char *name) { bar->Fl_Menu_Bar::replace(index, name); }
  virtual void mode(int i, int fl) { bar->Fl_Menu_Bar::mode(i, fl); }
  virtual void create_window_menu() {}
  virtual void play_menu(const Fl_Menu_Item *) {}
  static Fl_Sys_Menu_Bar::window_menu_style_enum window_menu_style() { return window_menu_style_; }
  static void window_menu_style(Fl_Sys_Menu_Bar::window_menu_style_enum style) { window_menu_style_ = style; }
};

#endif // !defined(FL_DOXYGEN)

#endif // Fl_Sys_Menu_Bar_Driver_H
