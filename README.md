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
