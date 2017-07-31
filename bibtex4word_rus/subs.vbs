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
subs.Add "\cyr\textnumero", "¹"
subs.Add "\BibDash", "—"
subs.Add "\CYRSH", "Ø"
subs.Add "\cyrsh", "ø"
subs.Add "\CYRSHCH", "Ù"
subs.Add "\cyrshch", "ù"
subs.Add "\CYRHRDSN", "Ú"
subs.Add "\cyrhrdsn", "ú"
subs.Add "\CYRERY", "Û"
subs.Add "\cyrery", "û"
subs.Add "\CYRSFTSN", "Ü"
subs.Add "\cyrsftsn", "ü"
subs.Add "\CYRISHRT", "É"
subs.Add "\cyrishrt", "é"
subs.Add "\CYREREV", "Ý"
subs.Add "\cyrerev", "ý"
subs.Add "\CYRYU", "Þ"
subs.Add "\cyryu", "þ"
subs.Add "\CYRYA", "ß"
subs.Add "\cyrya", "ÿ"
subs.Add "\CYRCH", "×"
subs.Add "\cyrch", "÷"
subs.Add "\CYRA", "À"
subs.Add "\cyra", "à"
subs.Add "\CYRB", "Á"
subs.Add "\cyrb", "á"
subs.Add "\CYRV", "Â"
subs.Add "\cyrv", "â"
subs.Add "\CYRG", "Ã"
subs.Add "\cyrg", "ã"
subs.Add "\CYRD", "Ä"
subs.Add "\cyrd", "ä"
subs.Add "\CYRE", "Å"
subs.Add "\cyre", "å"
subs.Add "\CYRYO", "¨"
subs.Add "\cyryo", "¸"
subs.Add "\CYRZH", "Æ"
subs.Add "\cyrzh", "æ"
subs.Add "\CYRZ", "Ç"
subs.Add "\cyrz", "ç"
subs.Add "\CYRI", "È"
subs.Add "\cyri", "è"
subs.Add "\CYRK", "Ê"
subs.Add "\cyrk", "ê"
subs.Add "\CYRL", "Ë"
subs.Add "\cyrl", "ë"
subs.Add "\CYRM", "Ì"
subs.Add "\cyrm", "ì"
subs.Add "\CYRN", "Í"
subs.Add "\cyrn", "í"
subs.Add "\CYRO", "Î"
subs.Add "\cyro", "î"
subs.Add "\CYRP", "Ï"
subs.Add "\cyrp", "ï"
subs.Add "\CYRR", "Ð"
subs.Add "\cyrr", "ð"
subs.Add "\CYRS", "Ñ"
subs.Add "\cyrs", "ñ"
subs.Add "\CYRT", "Ò"
subs.Add "\cyrt", "ò"
subs.Add "\CYRU", "Ó"
subs.Add "\cyru", "ó"
subs.Add "\CYRF", "Ô"
subs.Add "\cyrf", "ô"
subs.Add "\CYRH", "Õ"
subs.Add "\cyrh", "õ"
subs.Add "\CYRC", "Ö"
subs.Add "\cyrc", "ö"
subs.Add "\cyr", ""

strNewText = strText
For i = 0 To subs.Count - 1
    strNewText = Replace(strNewText, subs.Keys()(i), subs.Items()(i))
Next

Set outputFile = fso.CreateTextFile(outputFilePath, True)
outputFile.WriteLine strNewText
outputFile.Close
