The correct way of creating a private frok by duplicating the repo is documented [here](https://help.github.com/articles/duplicating-a-repository/).

For the USYD thesis template the bash commands (use Git Bash or WSL) are:

 1. Create a bare clone of the repository. This is temporary and will be removed so can go anywhere.
    ```bash
    $ git clone --bare git@github.com:mathewgardiner/usyd-amme-thesis-template.git
    ```

 2. [Create a new private repository on Github](https://help.github.com/articles/creating-a-new-repository/) and pick a name, e.g. `thesis`.
    > You can access unlimited private repos by adding your USYD email to your GitHub account.

 3. Mirror-push your bare clone to your new `thesis` repository.
    > Replace `<your_username>` with your actual Github username in the url below.
    
    ```bash
    cd usyd-amme-thesis-template.git
    git push --mirror git@github.com:<your_username>/thesis.git
    ```

 4. Remove the temporary local repository you created in step 1.
    ```bash
    cd ..
    rm -rf usyd-amme-thesis-template.git
    ```
    
 5. You can now clone your `thesis` repository anywhere on your machine.
    ```bash
    git clone git@github.com:<your_username>/thesis.git
    ```
   
 6. If you want, add the original repo as remote to fetch (potential) future changes.
    Make sure you also disable push on the remote (as you are not allowed to push to it anyway).
    ```bash
    git remote add template git@github.com:mathewgardiner/usyd-amme-thesis-template.git
    git remote set-url --push template DISABLE
    ```
    You can list all your remotes with `git remote -v`. You should see:
    ```
    origin	git@github.com:<your_username>/thesis.git (fetch)
    origin	git@github.com:<your_username>/thesis.git (push)
    template	git@github.com:mathewgardiner/usyd-amme-thesis-template.git (fetch)
    template	DISABLE (push)
    ```
    > When you push, do so on `origin` with `git push origin`.
   
  7. To pull changes from the template, you can run:
	 ```bash
	 bash pull_upstream.bash
	 ```
	 after making the changes and following the steps outlined in the [file](pull_upstream.bash). You may have to resolve conflicts. 
