# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# JEFFERSON
# Fixing $PATH (because when Gentoo comes vanilla... it comes REALLY vanilla...
export PATH="/home/jeff/bin:${PATH}"


# Put your fun stuff here.
alias setup="su -c 'rmmod pcspkr'"
alias emacs="emacsclient -nw -c -a ''"
alias eyyfk="su -c 'pm-suspend' && dm-tool lock"
alias vivaldi="vivaldi-stable"
alias astyle="astyle --style=allman"
