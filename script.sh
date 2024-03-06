# Copy project directories and their contents
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/01-Fundamentals-Part-1 /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/02-Fundamentals-Part-2 /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/03-Developer-Skills /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/04-HTML-CSS /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/05-Guess-My-Number /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/06-Modal /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/07-Pig-Game /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/08-Behind-the-Scenes /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/09-Data-Structures-Operators /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/10-Functions /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/11-Arrays-Bankist /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/12-Numbers-Dates-Timers-Bankist /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/13-Advanced-DOM-Bankist /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/14-OOP /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/15-Mapty /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/16-Asynchronous /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/17-Modern-JS-Modules-Tooling /Users/ssarpotdar/Downloads/JS/
cp -r /Users/ssarpotdar/Downloads/backup/JS_backup/18-forkify /Users/ssarpotdar/Downloads/JS/

# Copy other essential files
cp /Users/ssarpotdar/Downloads/backup/JS_backup/README.md /Users/ssarpotdar/Downloads/JS/
cp /Users/ssarpotdar/Downloads/backup/JS_backup/auto_commit.js /Users/ssarpotdar/Downloads/JS/

# Copy package.json and package-lock.json to ensure dependencies are correctly set up
cp /Users/ssarpotdar/Downloads/backup/JS_backup/package.json /Users/ssarpotdar/Downloads/JS/
cp /Users/ssarpotdar/Downloads/backup/JS_backup/package-lock.json /Users/ssarpotdar/Downloads/JS/

# Navigate to your project directory
cd /Users/ssarpotdar/Downloads/JS/

# Install dependencies
npm install

# Stage all changes
git add .

# Commit changes
git commit -m "Merged project files and directories from backup"

# Push changes to GitHub
git push origin main
