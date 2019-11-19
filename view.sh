#!/bin/bash

source fancy.sh

echo ""
fancy.window.title "This is the window title"
echo ""
fancy.message "Normal message"
fancy.message.red "Red message"
fancy.message.yellow "Yellow message"
fancy.message.blue "Blue message"
fancy.message.green "Green message"
echo ""
fancy.message.error "Error"
fancy.message.warning "Warning"
fancy.message.info "Info"
fancy.message.success "Success"
fancy.title "Title"

itWillFail() {
    return 1
}

itWillSucceed() {
    return 0
}

fancy.process "Process fail\t\t" "itWillFail"
fancy.process "Process success\t" "itWillSucceed"

fancy.prepend.process "\vPrepend proccess fail" "itWillFail"
fancy.prepend.process "Prepend proccess success" "itWillSucceed"

echo ""

fancy.label "Label 1" "Value 1"
fancy.label "Label 2" "Value 2"
fancy.label "Label 3" "Value 3"

echo ""
fancy.label.ln "Label line 1" "Value 1"
fancy.label.ln "\tLabel line 2" "Value 2"
fancy.label.ln "\tLabel line 3" "Value 3"

echo ""
echo ""

# testing github actions
ls_command=$(ls)

# fancy.die "Optional message"
# fancy.root_is_required
