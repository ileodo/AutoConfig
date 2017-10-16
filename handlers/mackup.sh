#!/bin/bash

ln -snf $ac_mackup_path/.mackup.cfg ~/.mackup.cfg
ln -snf $ac_mackup_path/.mackup ~/.mackup

mackup restore
