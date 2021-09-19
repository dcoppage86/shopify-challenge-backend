# Models

## Post

validations
max limit on title
max limit on description

has_many :tags

DB
title           :string
description     :string

connect uploaded image from frontend

## Tag

validations
max limit on tag length characters

belong_to :post

DB
name            :string