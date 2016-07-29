[![Build Status](https://travis-ci.org/Dudisek/name_project.svg)](https://travis-ci.org/Dudisek/name_project) [![Build Status](https://coveralls.io/repos/github/Dudisek/name_project/badge.svg?branch=master)](https://coveralls.io/github/Dudisek/name_project)
[![Dependency Status](https://gemnasium.com/badges/github.com/Dudisek/name_project.svg)](https://gemnasium.com/github.com/Dudisek/name_project)

<p align="center">
  <img src="https://s31.postimg.org/nks7mbxkb/name.png" alt="RuboCop Logo" style="max-width:100%;">
</p>

## NAME

**Name** is a Ruby project helping you to return first name or family name from a string.

## Format
<code>SIMON EDWARDS/MATTHEWS MR</code>
or 
<code>SIMON EDWARDS/MR MATTHEWS</code>

## Quick Start

<code>name = Name.new("SIMON EDWARDS/MATTHEWS MR")</code><br />
<code>name.first_name #Matthews</code><br />
<code>name.family_name #Simon Edwards</code><br />
<code>name.full_name #['Simon Edwards', 'Matthews']</code><br />

