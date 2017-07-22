#!/bin/bash

i3-msg "workspace 9; append_layout ~/scripts/i3_layouts/work9.json"
i3-msg "workspace 1; append_layout ~/scripts/i3_layouts/work1.json"
i3-msg "workspace 2; append_layout ~/scripts/i3_layouts/work2.json"
i3-msg "workspace 4; append_layout ~/scripts/i3_layouts/work4.json"

(urxvt &)
(urxvt &)
(firefox &)
(steam &)
