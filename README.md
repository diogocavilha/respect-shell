![respect.message](https://github.com/diogocavilha/respect-shell/blob/master/images/respect-shell.png)

This is a simple shell module for helping you to write better scripts.
With this little module you can use some functions that allow you to showing cool messages and performing some verifications as simple as it should be.

See what is possible to do once you're using **Respect Shell**.

- Messages
    - [Simple](https://github.com/diogocavilha/respect-shell#respectmessage) (`respect.message`)
    - [Red](https://github.com/diogocavilha/respect-shell#respectmessagered) (`respect.message.red`)
    - [Green](https://github.com/diogocavilha/respect-shell#respectmessagegreen) (`respect.message.green`)
    - [Blue](https://github.com/diogocavilha/respect-shell#respectmessageblue) (`respect.message.blue`)
    - [Yellow](https://github.com/diogocavilha/respect-shell#respectmessageyellow) (`respect.message.yellow`)
- Warnings
    - [Error](https://github.com/diogocavilha/respect-shell#respectmessageerror) (`respect.message.error`)
    - [Success](https://github.com/diogocavilha/respect-shell#respectmessagesuccess) (`respect.message.success`)
    - [Info](https://github.com/diogocavilha/respect-shell#respectmessageinfo) (`respect.message.info`)
    - [Warning](https://github.com/diogocavilha/respect-shell#respectmessagewarning) (`respect.message.warning`)
- Processes
    - [Process](https://github.com/diogocavilha/respect-shell#respectprocess) (`respect.process`)
    - [Prepend Process](https://github.com/diogocavilha/respect-shell#respectprependprocess) (`respect.prepend.process`)
- Labels
    - [Label](https://github.com/diogocavilha/respect-shell#respectlabel) (`respect.label`)
    - [Labels in a row](https://github.com/diogocavilha/respect-shell#respectlabelln) (`respect.label.ln`)
- Functions
    - [Window Title](https://github.com/diogocavilha/respect-shell#respectwindowtitle) (`respect.window.title`)
    - [Title](https://github.com/diogocavilha/respect-shell#respecttitle) (`respect.title`)
    - [File exists](https://github.com/diogocavilha/respect-shell#respectfile_exists) (`respect.file_exists`)
    - [Directory exists](https://github.com/diogocavilha/respect-shell#respectdir_exists) (`respect.dir_exists`)
    - [Root is required](https://github.com/diogocavilha/respect-shell#respectroot_is_required) (`respect.root_is_required`)
    - [Question Yes No](https://github.com/diogocavilha/respect-shell#respectquestionyesno) (`respect.question.yesno`)

---

### respect.message

`respect.message "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message "Normal message"
```

![respect.message](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message.png)

### respect.message.red

`respect.message.red "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.red "Red message"
```

![respect.message.red](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-red.png)

### respect.message.green

`respect.message.green "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.green "Green message"
```

![respect.message.green](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-green.png)

### respect.message.blue

`respect.message.blue "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.blue "Blue message"
```

![respect.message.blue](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-blue.png)

### respect.message.yellow

`respect.message.yellow "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.yellow "Yellow message"
```

![respect.message.yellow](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-yellow.png)

### respect.message.error

`respect.message.error "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.error "Error"
```

![respect.message.error](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-error.png)

### respect.message.success

`respect.message.success "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.success "Success"
```

![respect.message.success](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-success.png)

### respect.message.info

`respect.message.info "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.info "Info"
```

![respect.message.info](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-info.png)

### respect.message.warning

`respect.message.warning "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.message.warning "Warning"
```

![respect.message.warning](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-message-warning.png)

### respect.title

`respect.title "param1"`

`param1` Title

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.title "Title"
```

![respect.title](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-title.png)

### respect.process

`respect.process "param1" "param2"`

`param1` Process label

`param2` Callback

> The callback might be a function you've written

**Sample:**

If the callback execution is succeeded (it returns `0`).

```bash
#!/bin/bash

source /path/to/respect.sh

respect.process "Processing something...\t" "callback"
```

![respect.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-process-ok.png)

> P.S: A succeeded callback execution returns `0`. That's a shellscript rule: `0` = true, `1` = false.
> That's a little weird, I know that, but that's how it is, accept it.

If the callback execution fails (it returns `1`).

```bash
#!/bin/bash

source /path/to/respect.sh

respect.process "Processing something...\t" "callback"
```

![respect.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-process-fail.png)

### respect.prepend.process

`respect.prepend.process "param1" "param2"`

`param1` Process label

`param2` Callback

> The the callback might be a function you've written

**Sample:**

If the callback execution is succeeded (it returns `0`).

```bash
#!/bin/bash

source /path/to/respect.sh

respect.prepend.process "Processing something" "callback"
```

![respect.prepend.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-prepend-process-ok.png)

If the callback execution fails (it returns `1`).

```bash
#!/bin/bash

source /path/to/respect.sh

respect.prepend.process "Processing something" "callback"
```

![respect.prepend.process](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-prepend-process-fail.png)

### respect.label

`respect.label "param1" "param2"`

`param1` Label

`param2` Value

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.label "Label 1" "Value 1"
respect.label "Label 2" "Value 2"
respect.label "Label 3" "Value 3"
```

![respect.label](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-label.png)

### respect.label.ln

`respect.label.ln "param1" "param2"`

`param1` Label

`param2` Value

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.label.ln "Label line 1" "Value 1"
respect.label.ln "\tLabel line 2" "Value 2"
respect.label.ln "\tLabel line 3" "Value 3"
```

![respect.label.ln](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-label-ln.png)

### respect.root_is_required

`respect.root_is_required "param1"`

`param1` Message

> param1 is optional

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.root_is_required
```

![respect.root_is_required](https://github.com/diogocavilha/respect-shell/blob/master/screenshots/respect-root-is-required.png)

### respect.dir_exists

`respect.dir_exists "param1"`

`param1` path

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

if respect.dir_exists "/path/to/directory"
then
    # code ...
fi
```

### respect.file_exists

`respect.file_exists "param1"`

`param1` path

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

if respect.file_exists "/path/to/file"
then
    # code ...
fi
```

### respect.window.title

`respect.window.title "param1"`

`param1` Window title

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

respect.window.title "This is the window title"
```

### respect.question.yesno

`respect.question.yesno "param1" "param2"`

`param1` Question string.

`param2` Default answer: `y` or `n`. Its optional. If not present, the default answer is `n`.

**Sample:**

```bash
#!/bin/bash

source /path/to/respect.sh

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