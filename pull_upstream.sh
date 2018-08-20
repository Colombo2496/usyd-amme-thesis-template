# 1. Follow steps in pull_upstream.md

# 2. It is a good idea to delete the thesis.pdf first as binary files can't
# 	 be merged. Commit all changes.

# 2. Add a convinient directory for backups below
dir="/mnt/c/Users/<username>/Documents/Thesis backups/"

# 3. Make a backup
mkdir "$dir$(date +"%F_%H-%M-%S")"
cp -r . "$dir$(date +"%F_%H-%M-%S")"

# 4. Do a pull and resolve conflicts if nessecary
git pull template master
