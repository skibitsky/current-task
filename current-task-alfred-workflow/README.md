# Current Task Alfred Workflow

The workflow allows to create and close tasks. Creation is possible by  calling workflow directly (I use Karabiner Elements and Goku for that, my config can be found  [here](https://github.com/skibitsky/dotfiles/blob/master/karabiner/karabiner.edn)) or by selecting the text anywhere (i.e. inside task tracking app or GitHub issue) and using hotkey.

It is based on  [alfred-timing](https://github.com/skibitsky/alfred-timing) workflow. It makes possible Timing tasks and projects fetching from the Timing API. However, it may case problems in case of no internet connection.

## Install
0. Download and install [workflow](https://github.com/skibitsky/current-task/blob/master/current-task-alfred-workflow/current-task-v2.1.alfredworkflow)
1. `cd` into workflow directory (control-click on the workflow in Alfred and select "Open in Terminal)
2. Run `npm i`
3. Generate new Timing API token [here](https://web.timingapp.com/integrations/tokens)
4. Insert yout API token into the token field in "Workflow Environment Variables" window