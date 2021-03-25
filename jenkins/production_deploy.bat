set "deployDIR=E:\\test"
set "configDIR=E:\\Jenkins\\IUR\\Config"

robocopy ".\\jenkins" "%deployDIR%\\jenkins" /e /copy:DAT /mt /z

xcopy ".\\test.html" "%deployDIR%\\" /Q /Y /F

xcopy "%configDIR%\\.env" "%deployDIR%\\" /Q /Y /F
xcopy "%configDIR%\\web.config" "%deployDIR%\\" /Q /Y /F

IF not exist "%deployDIR%\\iisnode" (mkdir "%deployDIR%\\iisnode")
IF not exist "%deployDIR%\\morgan" (mkdir "%deployDIR%\\morgan")
IF not exist "%deployDIR%\\tmp" (mkdir "%deployDIR%\\tmp")
