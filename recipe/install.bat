SET SETUPTOOLS_SCM_PRETEND_VERSION=%PKG_VERSION%

:: UnicodeDecodeError: 'charmap' codec can't decode byte 0x9d in position 808: character maps to <undefined>
REM set UTF-8 mode by default
chcp 65001
set PYTHONUTF8=1
set PYTHONIOENCODING="UTF-8"

%PYTHON% -m pip install --no-deps  --no-build-isolation --ignore-installed -vv ./%PKG_NAME%/
