@echo off
chcp 65001 >nul
echo ============================================
echo   武亮 Skill 推送到 GitHub
echo ============================================
echo.

:: 1. 进入项目目录
cd /d "%~dp0"

:: 2. 添加 GitHub 远程仓库（如果还没有）
git remote get-url gh2 >nul 2>&1
if errorlevel 1 (
    echo [1/3] 添加 GitHub 远程仓库...
    git remote add gh2 https://github.com/fypklanfanqie/fypklanfanqie-Wu-Lang-skill-with-ai-chat-website.git
) else (
    echo [1/3] GitHub 远程仓库已存在
)

:: 3. 同步 docs 目录（确保 GitHub Pages 用）
echo [2/3] 同步 docs/ 目录...
copy /y web\index.html docs\index.html >nul
git add web/ docs/
git commit -m "同步更新: 桌面全屏布局" 2>nul

:: 4. 推送到 GitHub
echo [3/3] 推送到 GitHub...
git push gh2 master

if errorlevel 1 (
    echo.
    echo ❌ 推送失败！请检查网络或登录 GitHub 后重试。
    echo    提示：如果首次推送，可能需要输入 GitHub 用户名和密码/token
) else (
    echo.
    echo ✅ 推送成功！
    echo 🔗 GitHub Pages: https://fypklanfanqie.github.io/fypklanfanqie-Wu-Lang-skill-with-ai-chat-website/
)

echo.
echo 同时推送 Gitee...
git push gitee master

echo.
echo ============================================
echo   完成！
echo ============================================
pause
