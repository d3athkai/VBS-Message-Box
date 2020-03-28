' --------------------------
' Version: 1.0, 20 Jan 2016
' --------------------------

Const HKEY_LOCAL_MACHINE = &H80000002

Set WshShell = CreateObject("WScript.Shell")
WshShell.Environment("PROCESS")("SEE_MASK_NOZONECHECKS") = 1

Set objFSO = CreateObject("Scripting.FileSystemObject")
strPath = objFSO.GetParentFolderName(WScript.ScriptFullName)
strTitle ="Health Status Declaration"

' --------------------------
' Main Function
' --------------------------

WshShell.Popup "Reminder to submit your temperature. Thank you." ,,strTitle,64