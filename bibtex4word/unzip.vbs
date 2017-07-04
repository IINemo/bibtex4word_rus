Set fso = CreateObject("Scripting.FileSystemObject")

Set Ag = Wscript.Arguments
ZipFilePath = fso.GetAbsolutePathName(Ag(0))
OutputFolderPath = fso.GetAbsolutePathName(Ag(1))

If NOT fso.FolderExists(OutputFolderPath) Then
   fso.CreateFolder(OutputFolderPath)
End If

Set objShell = CreateObject("Shell.Application")

Set SrcFldr=objShell.NameSpace(ZipFilePath)
Set DestFldr=objShell.NameSpace(OutputFolderPath)
Set FldrItems=SrcFldr.Items
DestFldr.CopyHere FldrItems, &H214
