# vim-commandcaps

Plugin to make those annoying mistyped capitalised commands go away!

Now you don't have to worry if you accidentally hit `:Wq` - it will act just like `:wq`
No messing with remappings or abbrevations either!

Commands fixed

    :W
	:Q
	:Wq
	:WQ
	:WQA
	:WQa
	:Wqa
	:Qa
	:QA
	:Wa
	:WA
	:Xa
	:XA

### Options

If a command for the abbrevations listed above already exist they will *not* be
overwritten unless you add the following your `.vimrc`.

    let g:commandcaps_override = 1

This will make commandcaps override any commands that have been mapped before
this script gets run. This issue may occur when used in conjunction with
[vim-eunuch](https://github.com/tpope/vim-eunuch) which also has a command on
`:W`.

### Installation
I recommend installing using [Vundle](https://github.com/gmarik/vundle):

Add `Bundle 'takac/vim-commandcaps'` to your `~/.vimrc` and then:

* either within Vim: `:BundleInstall`
* or in your shell: `vim +BundleInstall +qall`

#### Other Installation Methods
*  [Pathogen](https://github.com/tpope/vim-pathogen)
  *  `git clone https://github.com/takac/vim-commandcaps ~/.vim/bundle/vim-commandcaps`
*  [Neobundle](https://github.com/Shougo/neobundle.vim)
  *  `NeoBundle 'takac/vim-commandcaps'`
*  Manual
  *  Copy the files into your `~/.vim` directory
