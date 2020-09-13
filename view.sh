#!/bin/bash

source respect.sh

echo ""
respect.window.title "This is the window title"
echo ""
respect.message "Normal message"
respect.message.red "Red message"
respect.message.yellow "Yellow message"
respect.message.blue "Blue message"
respect.message.green "Green message"
echo ""
respect.message.error "Error"
respect.message.warning "Warning"
respect.message.info "Info"
respect.message.success "Success"
respect.title "Title"

itWillFail() {
    return 1
}

itWillSucceed() {
    return 0
}

respect.process "Process fail\t\t" "itWillFail"
respect.process "Process success\t" "itWillSucceed"

respect.prepend.process "\vPrepend proccess fail" "itWillFail"
respect.prepend.process "Prepend proccess success" "itWillSucceed"

echo ""

respect.label "Label 1" "Value 1"
respect.label "Label 2" "Value 2"
respect.label "Label 3" "Value 3"

echo ""
respect.label.ln "Label line 1" "Value 1"
respect.label.ln "\tLabel line 2" "Value 2"
respect.label.ln "\tLabel line 3" "Value 3"

echo ""
