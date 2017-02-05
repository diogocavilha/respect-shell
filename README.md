# Fancy sh

This is a simple shell module for helping you to write better scripts.
With this little module you can use some functions that allow you to show cool messages and do verifications as simple as it might be, sample: checking whether or not a directory exists.

See what is possible to do when using `fancy sh`.

- Messages
    - [Simple]() (`fancy.message`)
    - [Red]() (`fancy.message.red`)
    - [Green]() (`fancy.message.green`)
    - [Blue]() (`fancy.message.blue`)
    - [Yellow]() (`fancy.message.yellow`)
- Warnings
    - [Error]() (`fancy.message.error`)
    - [Success]() (`fancy.message.success`)
    - [Info]() (`fancy.message.info`)
    - [Warning]() (`fancy.message.warning`)
- Processes
    - [Process]() (`fancy.process`)
    - [Prepend Process]() (`fancy.prepend.process`)
- Labels
    - [Label]() (`fancy.label`)
    - [Label in a row]() (`fancy.label.ln`)
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
