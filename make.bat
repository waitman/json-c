copy config.h.win32 config.h
copy json_config.h.win32 json_config.h
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS arraylist.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS arraylist.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS debug.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS json_object.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS json_tokener.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS json_util.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS linkhash.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS printbuf.c
cl /nologo /Foobj\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS random_seed.c
link /nologo /DLL -OUT:json-c.dll obj/arraylist.obj obj/debug.obj obj/json_object.obj obj/json_tokener.obj obj/json_util.obj obj/linkhash.obj obj/printbuf.obj obj/random_seed.obj
dumpbin /dependents json-c.dll

copy tests\test_set_serializer.c .
cl /nologo /Fo\ -c -Ox -Os -W3 -Zp -D _CRT_SECURE_NO_WARNINGS test_set_serializer.c
cl /nologo -OUT:test_set_serializer test_set_serializer.c obj/*.obj
test_set_serializer.exe
