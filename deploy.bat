@echo off
REM STAPLE Website - GitHub Deployment Helper Script (Windows)

echo ===================================
echo STAPLE Website Deployment Helper
echo ===================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo X Git is not installed. Please install Git first.
    echo Visit: https://git-scm.com/downloads
    pause
    exit /b 1
)

echo ✓ Git is installed
echo.

REM Check if this is already a git repository
if exist .git\ (
    echo Git repository already initialized
    
    REM Check if remote exists
    git remote get-url origin >nul 2>&1
    if not errorlevel 1 (
        echo Connected to remote repository
        echo.
        echo What would you like to do?
        echo 1) Update and push changes
        echo 2) View status
        echo 3) Exit
        set /p choice="Enter choice [1-3]: "
        
        if "%choice%"=="1" (
            echo.
            echo Current changes:
            git status --short
            echo.
            set /p commit_msg="Enter commit message: "
            git add .
            git commit -m "%commit_msg%"
            git push
            echo ✓ Changes pushed successfully!
            echo Your site will update in 1-2 minutes
        ) else if "%choice%"=="2" (
            git status
        ) else if "%choice%"=="3" (
            exit /b 0
        ) else (
            echo Invalid choice
            exit /b 1
        )
    ) else (
        echo No remote repository configured
        echo.
        set /p repo_url="Enter your GitHub repository URL: "
        git remote add origin "%repo_url%"
        git branch -M main
        git push -u origin main
        echo ✓ Repository connected and pushed!
    )
) else (
    echo Initializing new Git repository
    git init
    git add .
    set /p commit_msg="Enter initial commit message (or press Enter for default): "
    if "%commit_msg%"=="" set commit_msg=Initial commit
    git commit -m "%commit_msg%"
    
    echo.
    echo Next steps:
    echo 1. Create a new repository on GitHub: https://github.com/new
    echo 2. Copy the repository URL
    echo.
    set /p repo_url="Enter your GitHub repository URL: "
    
    git remote add origin "%repo_url%"
    git branch -M main
    git push -u origin main
    
    echo.
    echo ✓ Repository created and pushed!
    echo.
    echo To enable GitHub Pages:
    echo 1. Go to your repository settings
    echo 2. Under 'Source', select branch 'main'
    echo 3. Click 'Save'
    echo 4. Your site will be live in 1-2 minutes!
)

echo.
echo ===================================
echo ✓ Deployment helper complete!
echo ===================================
pause
