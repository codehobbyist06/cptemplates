#!/bin/bash

#Competitive programming
function compile(){
	g++ -std=c++17 -Wshadow -Wall -o $1 $1.cpp -O2 -Wno-unused-result
}

function mk(){
    g++ -std=c++17 -Wshadow -Wall -o $1 $1.cpp -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG
}

function startcp(){
	mkdir $1
	cd $1
	for (( i = 1; i <= $2; i++ )); do
		mkdir $i
		cd  $i
		cat ~/cptemplates/template > $i.cpp
		cd ..
	done
}

function testcp(){
	touch test.sh
	touch gen.cpp
	touch check.cpp
	cp ~/cptemplates/test.sh test.sh
	cp ~/cptemplates/gen.cpp gen.cpp
	cp ~/cptemplates/template check.cpp
}

#For Development
function mk(){
    g++ -std=c++17 -o $1 $1.cpp
}
function sa(){
	cd ~/Dev/Coala/coala-git
	source bin/activate
}

function cc(){
	cd ~/Dev/Coala/coala-git/corobo
}


function cg(){
	cd ~/Dev/git_repos/corobo
}

function senv(){
	export BOT_PREFIX="dude"
	export BACKEND="Gitter"
	export BOT_ADMINS="codehobbyist06"
	export BOT_TOKEN="a333096bacd8834831423e6e5a5fc7c6ed41e5b3"
	export GH_TOKEN="789db177823b66dd1fdd3db817742ef20273b1ea"
	export GL_TOKEN="ts1n_yz8GHb4wfGHjz8L"
	export GH_ORG_NAME="MyProjects06"
	export GL_ORG_NAME="MyCPprograms"
	export WA_TOKEN="69QP2W-UERUQUVYL3"
}
