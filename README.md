# team-project-name
Milestone 3/Team: Factor Current (JS Fiddle, etc.) Code into a Github Repo

## Running the Application

### Option 1: Open Directly in Browser (Simplest)
1. Right-click on `index.html` in VS Code
2. Select "Open with Live Server" (if you have the Live Server extension installed)
3. OR right-click and select "Reveal in File Explorer", then double-click `index.html` to open in your default browser

**Note:** Opening directly (file:// protocol) may cause CORS issues with Firebase. If you encounter errors, use Option 2.

### Option 2: Use Local Web Server (Recommended)
1. **If you have Python installed:**
   ```powershell
   python -m http.server 8080
   ```

2. **If you have Node.js installed:**
   ```powershell
   npx http-server -p 8080
   ```

3. **Or use the provided script:**
   ```powershell
   .\start-server.ps1
   ```

4. Then open your browser and navigate to: `http://localhost:8080`

### Option 3: VS Code Launch Configuration
1. Make sure a server is running on port 8080 (use Option 2)
2. Press `F5` or go to Run > Start Debugging
3. Select "Launch Chrome against localhost" configuration

### Installing a Web Server (if needed)

**Python:**
- Download from: https://www.python.org/downloads/
- After installation, use: `python -m http.server 8080`

**Node.js:**
- Download from: https://nodejs.org/
- After installation, use: `npx http-server -p 8080`

**VS Code Live Server Extension:**
- Install the "Live Server" extension from VS Code marketplace
- Right-click `index.html` and select "Open with Live Server"