Plug 'thinca/vim-quickrun', { 'for': ['ballerina', 'gradle', 'go', 'groovy', 'haskell', 'java', 
            \ 'javascript', 'kotlin', 'markdown', 'plantuml', 'ps1', 'scala',
            \ 'autohotkey', 'python', 'vim'] }

let g:quickrun_config = {}
let g:quickrun_config.plantuml = {
			\ 'command': 'plantuml',
			\ 'exec': 'java -jar c:/var/java/lib/plantuml.jar %o %s',
			\ 'cmdopt': '-overwrite',
			\ 'outputter': 'browser',
			\ 'outputter/browser/name': '%{expand("%:p:r:t").".png"}', }
let g:quickrun_config.markdown = {
			\ 'type': 'markdown/pandoc',
			\ 'cmdopt': '-s',
			\ 'outputter': 'browser', }
let g:quickrun_config.autohotkey = {
			\ 'exec': 'c:/opt/AutoHotkey/AutoHotkeyC.exe %{expand("%")}',
			\ 'outputter/buffer/opener': 'new' }
let g:quickrun_config.groovy = {
			\ 'command' : 'groovy', 'cmdopt' : '' }
let g:quickrun_config.ballerina = {
			\ 'exec' : 'c:/opt/ballerina/bin/bal.bat run %{expand("%")}' }
let g:quickrun_config.kotlin = {
			\ 'exec' : 'c:/opt/bin/kotlin-quickrun.bat %{expand("%")}'}
let g:quickrun_config.python = {
			\ 'exec' : $HOME
			\ . 'AppData/Local/Programs/Python/Python39/python.exe %s' }
