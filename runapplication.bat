@echo off
echo Starting backend...
call env\Scripts\activate
cd backend
start "backend" cmd /k "uvicorn main:app --reload"
echo Backend starting at http://localhost:8000

echo Waiting for backend to initialize...
timeout /t 5 /nobreak >nul

echo Starting frontend...
cd ../frontend
start "frontend" cmd /k "npm run dev"
echo Frontend starting at http://localhost:5173

echo Application started!
cd ..