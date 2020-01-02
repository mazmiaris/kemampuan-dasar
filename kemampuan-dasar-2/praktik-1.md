ares26@ares26-X450JN:~/kemampuan-dasar/kemampuan-dasar$ cd ~
ares26@ares26-X450JN:~$ cd alice bob git
bash: cd: alice: No such file or directory
ares26@ares26-X450JN:~$ cd alice-bob-git
ares26@ares26-X450JN:~/alice-bob-git$ git init
Initialized empty Git repository in /home/ares26/alice-bob-git/.git/
ares26@ares26-X450JN:~/alice-bob-git$ touch README.txt
ares26@ares26-X450JN:~/alice-bob-git$ git add README.txt
ares26@ares26-X450JN:~/alice-bob-git$ git commit -m 'First commit.'
[master (root-commit) 7521658] First commit.
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 README.txt
ares26@ares26-X450JN:~/alice-bob-git$ echo 'This repo is a collection of my favorite nursery rhymes.' >> README.txt
ares26@ares26-X450JN:~/alice-bob-git$ git status
On branch master
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   README.txt

no changes added to commit (use "git add" and/or "git commit -a")
ares26@ares26-X450JN:~/alice-bob-git$ git add .
ares26@ares26-X450JN:~/alice-bob-git$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   README.txt

ares26@ares26-X450JN:~/alice-bob-git$ git diff
ares26@ares26-X450JN:~/alice-bob-git$ git add README.txt
ares26@ares26-X450JN:~/alice-bob-git$ git commit -m 'Added project overview to README.txt'
[master 229eae2] Added project overview to README.txt
 1 file changed, 1 insertion(+)
ares26@ares26-X450JN:~/alice-bob-git$ git status
On branch master
nothing to commit, working directory clean
ares26@ares26-X450JN:~/alice-bob-git$ wget https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
--2020-01-02 22:48:14--  https://www.acquia.com/sites/default/files/blog/all-around-the-mulberry-bush.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:752d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2020-01-02 22:48:16 ERROR 404: Not Found.

ares26@ares26-X450JN:~/alice-bob-git$ wget https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
--2020-01-02 22:48:49--  https://www.acquia.com/sites/default/files/blog/jack-and-jill.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:752d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2020-01-02 22:48:50 ERROR 404: Not Found.

ares26@ares26-X450JN:~/alice-bob-git$ git log
commit 229eae2b7e23128451f34bf287cc13a354d55121
Author: mazmiaris <azmiwaffle@gmail.com>
Date:   Thu Jan 2 22:47:31 2020 +0700

    Added project overview to README.txt

commit 752165845c8ed3a06f9185bc1674bc598800ee44
Author: mazmiaris <azmiwaffle@gmail.com>
Date:   Thu Jan 2 19:54:54 2020 +0700

    First commit.
ares26@ares26-X450JN:~/alice-bob-git$ git log --oneline
229eae2 Added project overview to README.txt
7521658 First commit.
ares26@ares26-X450JN:~/alice-bob-git$ git log -p
commit 229eae2b7e23128451f34bf287cc13a354d55121
Author: mazmiaris <azmiwaffle@gmail.com>
Date:   Thu Jan 2 22:47:31 2020 +0700

    Added project overview to README.txt

diff --git a/README.txt b/README.txt
index e69de29..c83e022 100644
--- a/README.txt
+++ b/README.txt
@@ -0,0 +1 @@
+This repo is a collection of my favorite nursery rhymes.

commit 752165845c8ed3a06f9185bc1674bc598800ee44
Author: mazmiaris <azmiwaffle@gmail.com>
Date:   Thu Jan 2 19:54:54 2020 +0700

    First commit.

diff --git a/README.txt b/README.txt
new file mode 100644
index 0000000..e69de29
ares26@ares26-X450JN:~/alice-bob-git$ wget https://www.acquia.com/sites/default/files/blog/old-mother-hubbard.txt
--2020-01-02 22:56:14--  https://www.acquia.com/sites/default/files/blog/old-mother-hubbard.txt
Resolving www.acquia.com (www.acquia.com)... 104.16.118.45, 104.16.117.45, 2606:4700::6810:762d, ...
Connecting to www.acquia.com (www.acquia.com)|104.16.118.45|:443... connected.
HTTP request sent, awaiting response... 404 Not Found
2020-01-02 22:56:16 ERROR 404: Not Found.

ares26@ares26-X450JN:~/alice-bob-git$ git remote add origin https://github.com/mazmiaris/rhymes.git
ares26@ares26-X450JN:~/alice-bob-git$ git push -u origin master
Username for 'https://github.com': mazmiaris
Password for 'https://mazmiaris@github.com': 
Counting objects: 6, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (6/6), 505 bytes | 0 bytes/s, done.
Total 6 (delta 0), reused 0 (delta 0)
To https://github.com/mazmiaris/rhymes.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
ares26@ares26-X450JN:~/alice-bob-git$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
nothing to commit, working directory clean

