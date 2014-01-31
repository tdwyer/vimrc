# vimrc README
Created Thursday 30 January 2014

My vimrc represents far too much of my time. However, these deceptively simple tricks to allow for an efficient and trouble free coding experience. Soft links are used to control whether or not vim plugins, as well as their doc's and vimrc's are loaded. This configuration allows you to amass an obese collection of fun plugins, yet still have a slim and fit Vim :) You can also safely and easily use project specific vim plugins or key maps which may conflict with tools needed for another project.

Features
--------

### Abilities

* **Dynamically Bundles**
	* On demand  vimrc sourcing
	* On demand doc loading
* **Pre-configured and Tested**
	* Arch Linux
	* Debian ( see vimrc )
* **Slow Terminal Support**
	* Toggle for settings known to work better on Slow or Broken terminals
	* Toggle scrolling mode between 16% or Line-by-Line
* **256color Terminal Ready**
	* 256color if in $TERM Fall back to 16color
* **Persistent Undo History**
	* Set to maintain 200 levels of changes
	* Store changes in $HOME/.vim/backups
* **Keep Source Tree Clean**
	* Put swap~ files in $HOME/.vim/tmp


### Functions

* Toggle Scrolling Mode
* Toggle Code Folding
* Toggle Spell Check
* Append modeline
* Remove Trailing White Space
* Remember Line on Close, Return on Open


Usage
-----

### File-System Environment
**Create swap and undo directories**
``mkdir -p $HOME/.vim/{tmp,backups}``

**Git clone files**
``git clone https://github.com/tdwyer/vimrc /etc/vim``

**Soft link vimrc's**
``ln -s /etc/vim/{vimrc,gvimrc} /etc``

**Create Plugins Home**
``mkdir -p /usr/src/vim/{bundle,src-bundle}``

### Plugin Management

#### Get Bundle
	cd /usr/src/vim
	git submodule add https://github.com/tpope/vim-pathogen src-bundle/vim-pathogen
	git submodule add https://github.com/scrooloose/nerdtree src-bundle/nerdtree


#### Enable Plugin
	ln -s /usr/src/vim/src-bundle/vim-pathogen /usr/src/vim/bundle
	ln -s /usr/src/vim/src-bundle/nerdtree /usr/src/vim/bundle


#### Configure Plugin
	vim /usr/src/vim/src-bundle/nerdtree/vimrc
	let NERDTreeIgnore=['\~$', '\.pyc$'] 
	let NERDTreeDirArrows=1
	let NERDTreeWinSize=22


#### Update All Bundles
	cd /usr/src/vim
	git submodule foreach git pull origin master


#### Disable Plugin
	cd /usr/src/vim
	rm bundle/nerdtree


#### Remove Bundle

If you want to completely remove a bundle.
*Removing unwanted bundles will speed up git updates but it has no effect on Vim.*
``git submodule deinit src-bundle/nerdtree``

