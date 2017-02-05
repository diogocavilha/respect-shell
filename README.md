# Fancy sh

This is a simple shell module for helping you to write better scripts.
With this little module you can use some functions that allow you to show cool messages and do verifications as simple as it might be, sample: checking whether or not a directory exists.

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
    - [Process]() (`fancy.process`)
    - [Prepend Process]() (`fancy.prepend.process`)
- Labels
    - [Label]() (`fancy.label`)
    - [Label in a row]() (`fancy.label.ln`)
- [Title](https://github.com/diogocavilha/fancy-sh#fancytitle) (`fancy.title`)
- [File exists]() (`fancy.file_exists`)
- [Directory exists]() (`fancy.dir_exists`)
- [Root is required]() (`fancy.root_is_required`)
- [Die]() (`fancy.die`)

----------------------------------------------------------------

### fancy.message

`fancy.message "param1"`

`param1` Message

Sample:

```bash
fancy.message "Normal message"
```

![fancy.message](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message.png)

### fancy.message.red

`fancy.message.red "param1"`

`param1` Message

Sample:

```bash
fancy.message.red "Red message"
```

![fancy.message.red](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-red.png)

### fancy.message.green

`fancy.message.green "param1"`

`param1` Message

Sample:

```bash
fancy.message.green "Green message"
```

![fancy.message.green](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-green.png)

### fancy.message.blue

`fancy.message.blue "param1"`

`param1` Message

Sample:

```bash
fancy.message.blue "Blue message"
```

![fancy.message.blue](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-blue.png)

### fancy.message.yellow

`fancy.message.yellow "param1"`

`param1` Message

Sample:

```bash
fancy.message.yellow "Yellow message"
```

![fancy.message.yellow](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-yellow.png)

### fancy.message.error

`fancy.message.error "param1"`

`param1` Message

Sample:

```bash
fancy.message.error "Error"
```

![fancy.message.error](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-error.png)

### fancy.message.success

`fancy.message.success "param1"`

`param1` Message

Sample:

```bash
fancy.message.success "Success"
```

![fancy.message.success](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-success.png)

### fancy.message.info

`fancy.message.info "param1"`

`param1` Message

Sample:

```bash
fancy.message.info "Info"
```

![fancy.message.info](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-info.png)

### fancy.message.warning

`fancy.message.warning "param1"`

`param1` Message

Sample:

```bash
fancy.message.warning "Warning"
```

![fancy.message.warning](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-message-warning.png)

### fancy.title

`fancy.title "param1"`

`param1` Title

Sample:

```bash
fancy.title "Title"
```

![fancy.title](https://github.com/diogocavilha/fancy-sh/blob/master/screenshots/fancy-title.png)
