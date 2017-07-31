'This script prettifies the output of bibtex8 and makes it more suitable for gost bst formats.

Set fso = CreateObject("Scripting.FileSystemObject")

set Ag = Wscript.Arguments
inputFilePath = fso.GetAbsolutePathName(Ag(0))
outputFilePath = fso.GetAbsolutePathName(Ag(1))

Set inputFile = fso.OpenTextFile(inputFilePath, 1)
strText = inputFile.ReadAll
inputFile.Close

Set subs = CreateObject("Scripting.Dictionary")
subs.Add "\selectlanguageifdefined{english}", "\selectlanguageifdefined{}"
subs.Add "\selectlanguageifdefined{russian}", "\selectlanguageifdefined{}"
subs.Add "\cyr\textnumero", "�"
subs.Add "\BibDash", "�"
subs.Add "\CYRSH", "�"
subs.Add "\cyrsh", "�"
subs.Add "\CYRSHCH", "�"
subs.Add "\cyrshch", "�"
subs.Add "\CYRHRDSN", "�"
subs.Add "\cyrhrdsn", "�"
subs.Add "\CYRERY", "�"
subs.Add "\cyrery", "�"
subs.Add "\CYRSFTSN", "�"
subs.Add "\cyrsftsn", "�"
subs.Add "\CYRISHRT", "�"
subs.Add "\cyrishrt", "�"
subs.Add "\CYREREV", "�"
subs.Add "\cyrerev", "�"
subs.Add "\CYRYU", "�"
subs.Add "\cyryu", "�"
subs.Add "\CYRYA", "�"
subs.Add "\cyrya", "�"
subs.Add "\CYRCH", "�"
subs.Add "\cyrch", "�"
subs.Add "\CYRA", "�"
subs.Add "\cyra", "�"
subs.Add "\CYRB", "�"
subs.Add "\cyrb", "�"
subs.Add "\CYRV", "�"
subs.Add "\cyrv", "�"
subs.Add "\CYRG", "�"
subs.Add "\cyrg", "�"
subs.Add "\CYRD", "�"
subs.Add "\cyrd", "�"
subs.Add "\CYRE", "�"
subs.Add "\cyre", "�"
subs.Add "\CYRYO", "�"
subs.Add "\cyryo", "�"
subs.Add "\CYRZH", "�"
subs.Add "\cyrzh", "�"
subs.Add "\CYRZ", "�"
subs.Add "\cyrz", "�"
subs.Add "\CYRI", "�"
subs.Add "\cyri", "�"
subs.Add "\CYRK", "�"
subs.Add "\cyrk", "�"
subs.Add "\CYRL", "�"
subs.Add "\cyrl", "�"
subs.Add "\CYRM", "�"
subs.Add "\cyrm", "�"
subs.Add "\CYRN", "�"
subs.Add "\cyrn", "�"
subs.Add "\CYRO", "�"
subs.Add "\cyro", "�"
subs.Add "\CYRP", "�"
subs.Add "\cyrp", "�"
subs.Add "\CYRR", "�"
subs.Add "\cyrr", "�"
subs.Add "\CYRS", "�"
subs.Add "\cyrs", "�"
subs.Add "\CYRT", "�"
subs.Add "\cyrt", "�"
subs.Add "\CYRU", "�"
subs.Add "\cyru", "�"
subs.Add "\CYRF", "�"
subs.Add "\cyrf", "�"
subs.Add "\CYRH", "�"
subs.Add "\cyrh", "�"
subs.Add "\CYRC", "�"
subs.Add "\cyrc", "�"
subs.Add "\cyr", ""

strNewText = strText
For i = 0 To subs.Count - 1
    strNewText = Replace(strNewText, subs.Keys()(i), subs.Items()(i))
Next

Set outputFile = fso.CreateTextFile(outputFilePath, True)
outputFile.WriteLine strNewText
outputFile.Close
