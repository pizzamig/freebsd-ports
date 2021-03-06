--- cad_source/zcad/uzclog.pas	2020-10-08 18:33:43.730231000 -0500
+++ cad_source/zcad/uzclog.pas	2020-10-08 18:36:24.422328000 -0500
@@ -21,10 +21,11 @@
 {$mode objfpc}{$H+}
 interface
 uses UGDBOpenArrayOfByte,gzctnrvectordata,gzctnrstl,LazLoggerBase,
+{$IFDEF UNIX}uzbpaths,{$ENDIF}
      LazLogger,strutils,sysutils{$IFNDEF DELPHI},LazUTF8{$ENDIF};
 const {$IFDEF DELPHI}filelog='log/zcad_delphi.log';{$ENDIF}
       {$IFDEF FPC}
-                  {$IFDEF LINUX}filelog='../../log/zcad_linux.log';{$ENDIF}
+		  {$IFDEF UNIX}filelog='zcad_unix.log';{$ENDIF}
                   {$IFDEF WINDOWS}filelog='../../log/zcad_windows.log';{$ENDIF}
       {$ENDIF}
       lp_IncPos=1;
@@ -135,7 +136,9 @@
 begin
      if assigned(SplashTextOut) then
                                    SplashTextOut(s,true);
-     logname:={$IFNDEF DELPHI}SysToUTF8{$ENDIF}(ExtractFilePath(paramstr(0)))+filelog+'hard';
+     logname:={$IFNDEF DELPHI}SysToUTF8{$ENDIF}
+               ({$IFDEF UNIX}UserPath{$ELSE}ExtractFilePath(paramstr(0)){$ENDIF})
+               +filelog+'hard';
      FileHandle:=0;
      if not fileexists({$IFNDEF DELPHI}UTF8ToSys{$ENDIF}(logname)) then
                                    FileHandle:=FileCreate({$IFNDEF DELPHI}UTF8ToSys{$ENDIF}(logname))
