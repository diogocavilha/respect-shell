[![Shell Check](https://github.com/diogocavilha/respect-shell/workflows/Code%20Style%20Check/badge.svg)](https://github.com/diogocavilha/respect-shell/actions)

<p align="center">
  <br>
    <img src="https://github.com/diogocavilha/respect-shell/blob/master/images/respect-shell.png" />
  <br>
</p>

A simple shell module for helping you to write better scripts.
With this little module you can use some functions that allow you to showing cool messages and performing some verifications as simple as it should be.

What is possible to do once you're using **Respect Shell**?  
Take a look at some features it has by now.

- Messages
    - [Simple](https://github.com/diogocavilha/respect-shell#respectmessage)
    - [Red](https://github.com/diogocavilha/respect-shell#respectmessagered)
    - [Green](https://github.com/diogocavilha/respect-shell#respectmessagegreen)
    - [Blue](https://github.com/diogocavilha/respect-shell#respectmessageblue)
    - [Yellow](https://github.com/diogocavilha/respect-shell#respectmessageyellow)
- Warnings
    - [Error](https://github.com/diogocavilha/respect-shell#respectmessageerror)
    - [Success](https://github.com/diogocavilha/respect-shell#respectmessagesuccess)
    - [Info](https://github.com/diogocavilha/respect-shell#respectmessageinfo)
    - [Warning](https://github.com/diogocavilha/respect-shell#respectmessagewarning)
- Processes
    - [Process](https://github.com/diogocavilha/respect-shell#respectprocess)
    - [Prepend Process](https://github.com/diogocavilha/respect-shell#respectprependprocess)
- Labels
    - [Label](https://github.com/diogocavilha/respect-shell#respectlabel)
    - [Labels in a row](https://github.com/diogocavilha/respect-shell#respectlabelln)
- Functions
    - [Window Title](https://github.com/diogocavilha/respect-shell#respectwindowtitle)
    - [Title](https://github.com/diogocavilha/respect-shell#respecttitle)
    - [File exists](https://github.com/diogocavilha/respect-shell#respectfile_exists)
    - [Directory exists](https://github.com/diogocavilha/respect-shell#respectdir_exists)
    - [Root is required](https://github.com/diogocavilha/respect-shell#respectroot_is_required)
    - [Question Yes No](https://github.com/diogocavilha/respect-shell#respectquestionyesno)

---

# How to use it?

You can just git clone this repo and link `respect.sh` in your shellscript file, like:

`my_file.sh`
```bash
#!/bin/bash

. /path/to/respect.sh

# You are good to go now.
```

# Features

## respect.message

```bash
respect.message "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message "Normal message"
```

![respect.message](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message.png)

## respect.message.red

```bash
respect.message.red "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.red "Red message"
```

![respect.message.red](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-red.png)

## respect.message.green

```bash
respect.message.green "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.green "Green message"
```

![respect.message.green](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-green.png)

## respect.message.blue

```bash
respect.message.blue "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.blue "Blue message"
```

![respect.message.blue](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-blue.png)

## respect.message.yellow

```bash
respect.message.yellow "param1"
````

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.yellow "Yellow message"
```

![respect.message.yellow](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-yellow.png)

## respect.message.error

```bash
respect.message.error "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.error "Error"
```

![respect.message.error](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-error.png)

## respect.message.success

```bash
respect.message.success "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.success "Success"
```

![respect.message.success](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-success.png)

## respect.message.info

```bash
respect.message.info "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.info "Info"
```

![respect.message.info](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-info.png)

## respect.message.warning

```bash
respect.message.warning "param1"
```

- `param1` Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.message.warning "Warning"
```

![respect.message.warning](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-warning.png)

## respect.title

```bash
respect.title "param1"
```

- `param1` Title

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.title "Title"
```

![respect.title](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-title.png)

## respect.process

```bash
respect.process "param1" "param2"
```

- `param1` Process label
- `param2` Callback

> The callback might be a function you've written

**Sample:**

If the callback execution is succeeded (it returns `0`).

```bash
#!/bin/bash

. /path/to/respect.sh

respect.process "Processing something...\t" "callback"
```

![respect.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-process-ok.png)

> P.S: A succeeded callback execution returns `0`. That's a shellscript rule: `0` = true, `1` = false.
> That's a little weird, I know that, but that's how it is, accept it.

If the callback execution fails (it returns `1`).

```bash
#!/bin/bash

. /path/to/respect.sh

respect.process "Processing something...\t" "callback"
```

![respect.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-process-fail.png)

## respect.prepend.process

```bash
respect.prepend.process "param1" "param2"
```

- `param1` Process label
- `param2` Callback

> The the callback might be a function you've written

**Sample:**

If the callback execution is succeeded (it returns `0`).

```bash
#!/bin/bash

. /path/to/respect.sh

respect.prepend.process "Processing something" "callback"
```

![respect.prepend.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-prepend-process-ok.png)

If the callback execution fails (it returns `1`).

```bash
#!/bin/bash

. /path/to/respect.sh

respect.prepend.process "Processing something" "callback"
```

![respect.prepend.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-prepend-process-fail.png)

## respect.label

```bash
respect.label "param1" "param2"
```

- `param1` Label
- `param2` Value

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.label "Label 1" "Value 1"
respect.label "Label 2" "Value 2"
respect.label "Label 3" "Value 3"
```

![respect.label](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-label.png)

## respect.label.ln

```bash
respect.label.ln "param1" "param2"
```

- `param1` Label
- `param2` Value

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.label.ln "Label line 1" "Value 1"
respect.label.ln "\tLabel line 2" "Value 2"
respect.label.ln "\tLabel line 3" "Value 3"
```

![respect.label.ln](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-label-ln.png)

## respect.root_is_required

```bash
respect.root_is_required "param1"
```

- `param1` (Optional) Message

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.root_is_required
```

![respect.root_is_required](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-root-is-required.png)

## respect.dir_exists

```bash
respect.dir_exists "param1"
```

- `param1` path

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

if respect.dir_exists "/path/to/directory"
then
    # code ...
fi
```

## respect.file_exists

```bash
respect.file_exists "param1"
```

- `param1` path

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

if respect.file_exists "/path/to/file"
then
    # code ...
fi
```

## respect.window.title

```bash
respect.window.title "param1"
```

- `param1` Window title

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

respect.window.title "This is the window title"
```

## respect.question.yesno

```bash
respect.question.yesno "param1" "param2"
```

- `param1` Question string.
- `param2` (Optional) Default answer. It could be `y` or `n`. If not present, the default answer is `n`.

**Sample:**

```bash
#!/bin/bash

. /path/to/respect.sh

if respect.question.yesno "Would you like to proceed?" "y"
then
    # code ...
fi
```

**Outputs**

**Yes** as default.

```bash
respect.question.yesno "Would you like to proceed?" "y"

# Would you like to proceed? [Y/n]: 
```

**No** as default

```bash
respect.question.yesno "Would you like to proceed?" "n"

# Would you like to proceed? [y/N]: 
```

**No** as default

```bash
respect.question.yesno "Would you like to proceed?"

# Would you like to proceed? [y/N]: 
```

# Contributing :rocket:

- Give this project a star :star:
- Fork the project.
- Create a branch. (`git checkout -b your-branch-name`).
- Make your changes on the branch you've just created.
- Commit it.
- Push it.
- Send your Pull Request.
