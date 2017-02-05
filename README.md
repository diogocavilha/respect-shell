# Fancy sh

This is a simple shell module for helping you to write better scripts.
With this little module you can use some functions that allow you to show cool messages and do verifications as simple as it might be, **sample:** checking whether or not a directory exists.

See what is possible to do when using `fancy sh`.

- Messages
    - [Simple](https://github.com/diogocavilha/fancy-sh#fancymessage) (`fancy.message`)
    - [Red](https://github.com/diogocavilha/fancy-sh#fancymessagered) (`fancy.message.red`)
    - [Green](https://github.com/diogocavilha/fancy-sh#fancymessagegreen) (`fancy.message.green`)
    - [Blue](https://github.com/diogocavilha/fancy-sh#fancymessageblue) (`fancy.message.blue`)
    - [Yellow](https://github.com/diogocavilha/fancy-sh#fancymessageyellow) (`fancy.message.yellow`)
- Warnings
    - [Error](https://github.com/diogocavilha/fancy-sh#fancymessageerror) (`fancy.message.error`)
    - [Success](https://github.com/diogocavilha/fancy-sh#fancymessagesuccess) (`fancy.message.success`)
    - [Info](https://github.com/diogocavilha/fancy-sh#fancymessageinfo) (`fancy.message.info`)
    - [Warning](https://github.com/diogocavilha/fancy-sh#fancymessagewarning) (`fancy.message.warning`)
- Processes
    - [Process](https://github.com/diogocavilha/fancy-sh#fancyprocess) (`fancy.process`)
    - [Prepend Process](https://github.com/diogocavilha/fancy-sh#fancyprependprocess) (`fancy.prepend.process`)
- Labels
    - [Label](https://github.com/diogocavilha/fancy-sh#fancylabel) (`fancy.label`)
    - [Labels in a row](https://github.com/diogocavilha/fancy-sh#fancylabelln) (`fancy.label.ln`)
- [Title](https://github.com/diogocavilha/fancy-sh#fancytitle) (`fancy.title`)
- [File exists](https://github.com/diogocavilha/fancy-sh#fancyfile_exists) (`fancy.file_exists`)
- [Directory exists](https://github.com/diogocavilha/fancy-sh#fancydir_exists) (`fancy.dir_exists`)
- [Root is required](https://github.com/diogocavilha/fancy-sh#fancyroot_is_required) (`fancy.root_is_required`)
- [Die](https://github.com/diogocavilha/fancy-sh#fancydie) (`fancy.die`)

----------------------------------------------------------------

### fancy.message

`fancy.message "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message "Normal message"
```

![fancy.message](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message.png)

### fancy.message.red

`fancy.message.red "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.red "Red message"
```

![fancy.message.red](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-red.png)

### fancy.message.green

`fancy.message.green "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.green "Green message"
```

![fancy.message.green](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-green.png)

### fancy.message.blue

`fancy.message.blue "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.blue "Blue message"
```

![fancy.message.blue](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-blue.png)

### fancy.message.yellow

`fancy.message.yellow "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.yellow "Yellow message"
```

![fancy.message.yellow](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-yellow.png)

### fancy.message.error

`fancy.message.error "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.error "Error"
```

![fancy.message.error](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-error.png)

### fancy.message.success

`fancy.message.success "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.success "Success"
```

![fancy.message.success](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-success.png)

### fancy.message.info

`fancy.message.info "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.info "Info"
```

![fancy.message.info](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-info.png)

### fancy.message.warning

`fancy.message.warning "param1"`

`param1` Message

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.message.warning "Warning"
```

![fancy.message.warning](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-warning.png)

### fancy.title

`fancy.title "param1"`

`param1` Title

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.title "Title"
```

![fancy.title](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-title.png)

### fancy.process

`fancy.process "param1" "param2"`

`param1` Process label

`param2` Callback

> The callback might be a function you've written

**Sample:**

If the callback execution is succeeded (it returns `0`).

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.process "Processing something...\t" "callback"
```

![fancy.process](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-process-ok.png)

> P.S: A succeeded callback execution returns `0`. That's a shellscript rule: `0` = true, `1` = false.
> That's a little weird, I know that, but that's how it is, accept it.

If the callback execution fails (it returns `1`).

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.process "Processing something...\t" "callback"
```

![fancy.process](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-process-fail.png)

### fancy.prepend.process

`fancy.prepend.process "param1" "param2"`

`param1` Process label

`param2` Callback

> The the callback might be a function you've written

**Sample:**

If the callback execution is succeeded (it returns `0`).

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.prepend.process "Processing something" "callback"
```

![fancy.prepend.process](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-prepend-process-ok.png)

If the callback execution fails (it returns `1`).

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.prepend.process "Processing something" "callback"
```

![fancy.prepend.process](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-prepend-process-fail.png)

### fancy.label

`fancy.label "param1" "param2"`

`param1` Label

`param2` Value

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.label "Label 1" "Value 1"
fancy.label "Label 2" "Value 2"
fancy.label "Label 3" "Value 3"
```

![fancy.label](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-label.png)

### fancy.label.ln

`fancy.label.ln "param1" "param2"`

`param1` Label

`param2` Value

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.label.ln "Label line 1" "Value 1"
fancy.label.ln "\tLabel line 2" "Value 2"
fancy.label.ln "\tLabel line 3" "Value 3"
```

![fancy.label.ln](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-label-ln.png)

### fancy.root_is_required

`fancy.root_is_required "param1"`

`param1` Message

> param1 is optional

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.root_is_required
```

![fancy.root_is_required](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-root-is-required.png)

### fancy.die

`fancy.die "param1"`

`param1` Message

> param1 is optional

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

fancy.die
```

![fancy.die](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-die.png)

### fancy.dir_exists

`fancy.dir_exists "param1"`

`param1` path

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

message="Directory does not exist"

if fancy.dir_exists "/path/to/directory"
then
    message="Directory exists"
fi

fancy.message "$message"
```

### fancy.file_exists

`fancy.file_exists "param1"`

`param1` path

**Sample:**

```bash
#!/bin/bash

source /path/to/fancy.sh

message="File does not exist"

if fancy.file_exists "/path/to/file"
then
    message="File exists"
fi

fancy.message "$message"
```
