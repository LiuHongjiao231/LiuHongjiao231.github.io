@echo off
set NODE_HOME=C:\Users\Decriovo231\.workbuddy\binaries\node\versions\22.22.2
set PATH=%NODE_HOME%;%PATH%
cd /d "%~dp0"
echo ========================================
echo 正在安装依赖...
echo ========================================
npm install 2>&1
if errorlevel 1 (
    echo.
    echo [错误] 安装失败！
    echo 请检查上面的错误信息
    echo.
    pause
    exit /b
)
echo.
echo ========================================
echo 安装成功！启动开发服务器...
echo ========================================
echo.
npm run dev 2>&1
echo.
echo 服务器已停止
pause