# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ruby = ProgrammingLanguage.create(:name => "ruby")
python = ProgrammingLanguage.create(:name => "python")
csharp = ProgrammingLanguage.create(:name => "c#")
cplusplus= ProgrammingLanguage.create(:name => "c++")
java = ProgrammingLanguage.create(:name => "java")
js = ProgrammingLanguage.create(:name => "javascript")
php = ProgrammingLanguage.create(:name => "php")

vi = Language.create(:code => "vi")
en = Language.create(:code => "en")
jp = Language.create(:code => "jp")
fr = Language.create(:code => "fr")

#user

khoa = Developer.create(:email => "khoa@gmail.com")
khai = Developer.create(:email => "khai@gmail.com")
luan = Developer.create(:email => "luan@gmail.com")
quy = Developer.create(:email => "quy@gmail.com")

#
khoa.programming_languages << ruby
khoa.programming_languages << js
khoa.programming_languages << csharp

khai.programming_languages << ruby

luan.programming_languages << ruby
luan.programming_languages << js
luan.programming_languages << php

quy.programming_languages << python
quy.programming_languages << cplusplus

#
khoa.languages << vi
khoa.languages << en
khoa.languages << jp

khai.languages << vi
khai.languages << en

luan.languages << vi
luan.languages << en

quy.languages << vi
quy.languages << jp