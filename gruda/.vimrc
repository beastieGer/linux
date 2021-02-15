"==================================================
"PLUGIN
"==================================================

"==================================================
"VUNDLE
"==================================================
"установка Vundle
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set nocompatible
filetype off  "обязательно!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"---------=== Code/project navigation ===-------------
"Plugin 'klen/python-mode'           " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
"Plugin 'davidhalter/jedi-vim'       " Jedi-vim autocomplete plugin
Plugin 'matze/vim-move'             "двигает строки 
Plugin 'tpope/vim-commentary'       "комментарии gcc-gc-gcap
"Plugin 'scrooloose/nerdtree'            " Project and file navigation дерево каталогов
Plugin 'preservim/nerdtree'            " Project and file navigation дерево каталогов
"Plugin 'majutsushi/tagbar'             " Class/module browser

Plugin 'itchyny/lightline.vim'  "меняет вид строки состояния при работе с файлами
Plugin 'scrooloose/syntastic'    " проверка синтаксиса

" Color schemes
Plugin 'tomasr/molokai'

"=====C++=====
Plugin 'ycm-core/YouCompleteMe'     "плагин автодополнения для Vim

call vundle#end()            		" required
"filetype on
"filetype plugin on
filetype plugin indent on     " обязательно!

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"==================================================
"ОТСТУПЫ И НУМЕРАЦИЯ СТРОК
"==================================================

"Vim и русская раскладка клавиатуры, теперь можно вводить команды vim и под русской расскладкой
" set langmap=!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set expandtab  "(выключена) — в режиме вставки заменяет символ табуляции на соответствующее количество пробелов. Так же влияет на отступы, добавляемые командами >> и <<.

set smarttab   "(выключена) — в случае включения этой опции, нажатие Tab в начале строки (если быть точнее, до первого непробельного символа в строке) приведет к добавлению отступа, ширина которого соответствует shiftwidth (независимо от значений в tabstop и softtabstop). Нажатие на Backspace удалит отступ, а не только один символ, что очень полезно при включенной expandtab. Напомню: опция оказывает влияние только на отступы в начале строки, в остальных местах используются значения из tabstop и softtabstop.

set tabstop=4   "количество пробелов, которыми символ табуляции отображается в тексте. Оказывает влияние как на уже существующие табуляции, так и на новые. В случае изменения значения, «на лету» применяется к тексту.

set softtabstop=4 "количество пробелов, которыми символ табуляции отображается при добавлении. Несмотря на то, что при нажатии на Tab вы получите ожидаемый результат (добавляется новый символ табуляции), фактически в отступе могут использоваться как табуляция так и пробелы. Например, при установленных tabstop равной 8 и softtabstop равной 4, троекратное нажатие Tab приведет к добавлению отступа шириной 12 пробелов, однако сформирован он будет из одного символа табуляции и 4 пробелов.

set shiftwidth=4    "по умолчанию используется для регулирование ширины отступов в пробелах, добавляемых командами >> и <<. Если значение опции не равно tabstop, как и в случае с softtabstop, отступ может состоять как из символов табуляций так и из пробелов. При включении опции — smarttab, оказывает дополнительное влияние.

"======На десерт я оставил описание двух life changing опций для тех, кто использует VIM в качестве редактора для разработки: ======

"set autoindent  "(выключена) — копирует отступы с текущей строки при добавлении новой.

set smartindent " (выключена) — делает то же, что и autoindent плюс автоматически выставляет отступы в «нужных» местах. В частности, отступ ставится после строки, которая заканчивается символом {, перед строкой, которая заканчивается символом }, удаляется перед символом #, если он следует первым в строке и т.д. (подробнее help 'smartindent').

"==============================

set number  "отобразить номера строк в левой части окна, или set nu
set foldcolumn=2    "отводит один столбец символов слева на отмечание открытых фолдов колонкой. Небольшой отступ между левой частью окна


"==================================================
"ВНЕШНИЙ ВИД
"==================================================
let g:molokai_original=1
colorscheme molokai
syntax on   "подсветка синтаксиса для языков программирования
" set lines=40 columns=70 "125

"==================================================
"ЗВУК
"==================================================
"При нажатии неверной клавиши или ошибке в Vim проигрывается специальный звук. Если он вам мешает, его можно отключить
set noerrorbells
set novisualbell

"==================================================
"ПОДДЕРЖКА МЫШИ
"==================================================
set mouse=a "включаем мышку во всех режимах программы, подробнее в инете

"==================================================
"НАСТРОЙКА ПОИСКА
"==================================================
"игнорировать регистр при поиске
set ignorecase
set smartcase
set hlsearch    "подсветка результата поиска
set incsearch   "Чтобы программа подсказывала первое вхождение при вводе шаблона поиска

"==================================================
"КОДИРОВКА
"==================================================
set encoding=utf8
set ffs=unix,dos,mac    "стандарт использования символов переноса строки в файлах

"==================================================
"ПРИВЯЗКИ===MAP===
"==================================================
"https://losst.ru/nastrojka-vim - норм описание как работает map

let mapleader = ","     "<leader> Использовать обратный слеш не всегда удобно, поэтому часто его заменяют на запятую.
noremap \ ,

"Поиск дальше нажатием пробела
map <space> /
"Поиск предыдущего вхождения по нажатию Ctrl+Пробел
map <C-space> ?

"Более удобное перемещение между открытыми вкладками редактора
"map <C-j> <C-W>j   "пока отключил
"map <C-k> <C-W>k
"map <C-h> <C-W>h
"map <C-l> <C-W>l

"Включение или отключение проверки орфографии
"map <leader>ss :setlocal spell!<CR>    "пока отключил

"=============C++================
"скопилировать и запустить из vi
":!g++ %
"vim вместо % сам подставит текущий файл.
"что бы компилировать по кнопке F5 надо подправить файлик в /home .vimrc
"vim ~/.vimrc
"и добавляем строку:
map <F5> :w <CR>: !g++ -Wall % && ./a.out<CR>
map <F6> :w <CR>: !python %<CR>
"теперь при нажатии F5 будет сохраняться наш файл запускаться компиляция, запускаться наш файл.
map <F2> :w <CR>
map <F9> :so % <CR>
map <F10> :q <CR>


"==================================================
"Настройки Plugins
"==================================================
" syntastic opts
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" display lightline
set laststatus=2
set noshowmode


let g:move_key_modifier = 'C'


" YouCompleteMe
"let g:ycm_show_diagnostics_ui = 0 "Обрубаем YCM
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YcmCompleteMe/.ycm_extra_conf.py'

"NerdTree 
map <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1    "Показать скрытые файлы в NERD Tree
"autocmd vimenter * NERDTree "open a NERDTree automatically when vim starts up

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"
"
"++++++++++++++++++++++++++++++=
set foldmethod=syntax " фолдинг (сворачивание блоков кода) (zc - свернуть, zo - развернуть)
"это биндинги для фолдинга. позволяют свертывать/разворачивать код в обычном
"режиме нажатием -/+
map + zo
map - zc


map <C-c> y<CR> 
"позволяет копировать текст нажатием Ctrl+c
map <C-v> p 
"позволяет вставлять текст нажатием Ctrl+v
imap <C-v> <ESC>pi 
"тоже вставка текста, только в режиме редактирования
vmap <C-c> y<CR> 
"копирование текста, только в визуальном режиме
vmap c :norm i//<CR>
vmap uc :norm ^x<CR>^x<CR>

set wildmenu
set wildmode=full
