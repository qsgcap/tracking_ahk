

ActivateLauncher()
{
  If WinExist("Primu$ 7")
    and !WinActive("Primu$ 7")
    and !WinExist("PRIMU$ - Black Box Design")
    {
      WinActivate, Primu$ 7
    }
  else
    MsgBox, Cannot Activate Launcher
}

ClickWrench()
{
  Click 515, 49
  WinWait PRIMU$ -- Configuration
}

/*
a function that takes a date string in the format of yyyy-dd-mm
*/
set_date(the_date) {

  tokens := StrSplit(the_date, "-")

  ; open the date picker
  ; precondition: primus is open
  ActivateLauncher()
  WinWait, Primu$ 7
  ClickWrench()

  MsgBox, script completed
}

set_date("1995-12-01")
