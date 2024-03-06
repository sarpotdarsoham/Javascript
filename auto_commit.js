import fs from 'fs/promises';
import moment from 'moment';
import simpleGit from 'simple-git';
import path from 'path';

const PROJECT_PATH = '/Users/ssarpotdar/Downloads/JS';
const git = simpleGit(PROJECT_PATH);

function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

const commitFilesInDirectory = async (directoryPath, date) => {
  const files = await fs.readdir(directoryPath);
  for (const file of files) {
    const filePath = path.join(directoryPath, file);
    const fileStats = await fs.stat(filePath);
    if (fileStats.isDirectory()) {
      await commitFilesInDirectory(filePath, date); // Recursive call for directories
    } else {
      // Make changes to the file to ensure the commit is unique
      await fs.appendFile(filePath, `\n// commit for date ${date}`);
      await git.add(filePath);
      await git.commit(`commit for date ${date}`, { '--date': date });
    }
  }
};

const makeCommit = async (n) => {
  if (n === 0) {
    console.log('Pushing to remote...');
    await git.push('origin', 'main');
    console.log('Pushed to remote successfully.');
    return;
  }

  const date = moment().subtract(n, 'days').format('YYYY-MM-DD HH:mm:ss');
  const commitsCount = getRandomInt(1, 10); // Random number of commits between 1 and 10
  console.log(`Creating ${commitsCount} commits for: ${date}`);

  for (let i = 0; i < commitsCount; i++) {
    await commitFilesInDirectory(PROJECT_PATH, date);
  }

  setTimeout(() => makeCommit(n - 1), 500); // Timeout to prevent stack overflow
};

makeCommit(365); // Create commits for the past 365 days
