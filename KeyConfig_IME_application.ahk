#include IME.ahk

;;; Launch sakura editer
#h::Run, C:\Program Files (x86)\sakura\sakura.exe

;;; change right ctrl key to applicationkey
RCtrl::AppsKey

;;; change right alt key to 全角/半角 key
RAlt::
getIMEMode := IME_Get()
if (%getIMEMode% = 0)
{
    IME_SET(1)
    return
}
else
{
    IME_SET(0)
    return
}


