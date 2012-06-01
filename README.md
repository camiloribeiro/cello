CELLO
=====

https://secure.travis-ci.org/[camiloribeiro]/[c`ello].pngi

What?
-----
Cello is a Framework for automated UI tests based on Watir-Webdriver and Selenium-Webdriver in ruby, extended by metaprogramming and magic to implement something based on page object model and describe the behaviour with cucumber.

This framework isn't realeased or stable yet, but the concept is already done. The concept consists in a way to implement tests faster like when we record using tools like seleium IDE, but using magic and metaprogramming instead all that terrible bullshit code generated by those tools.

What a funny name :-p
----------------------
The name is cello, not just because I love it, but because as a music composition are steps that, when syncronized guide the musician to play wonderful songs, the acceptance automated tests are steps that when syncronized guide the developer to keep coding wonderfull peaces of business value.

What is the idea?
-----------------
The core idea is based on two tecniques and a lots of ideas:
*The first one is the Page-Object Model that provide a way to make tests more maintainable
*The second one is the record but not replay that allows people without programming skills generate automated regression tests in an easier and faster way

No one technique is required, but the first one is really recommended

We still have to much work to do ( as you can see in right bellow in this document), but, if you want, you can fork it and have fun!

It's STRONGLY recommended do not use it for comercial projects, because it will change too much and we never tested it in a real project. We recomend you use it to emulate a project and, if possible, return us you example to be added on our library.

The way we choose to test our framework was . . . writing tests with it! This way we keep a stable version of it, we can overcome the limitations writing new features to cover the tests that wasn't working and build a library of examples to future users. 

So, that way, if you are not a developer but a awesome QA with a little experience with code, you can help us practicing this tool in a little bit in your free time, and we will try make you happy fixing the bugs and implementing the new features you find during the time you'll spend writing tests. This examples will be storage on our repository with your name, mail, blog link or what you want.



Instructions
==========

Developing
----------
To develop `cello`, you are going to need [Bundler][1] 

    $ git clone git@github.com:camiloribeiro/cello.git
    $ cd cello
    $ bundle install
    $ rake run

The last step launch the regression tests and it should be everything green
If you have any problems, please let us know.

[1]: http://gembundler.com

Using
-----

To use it you will need the developing env described in this document
Then you can follow the example bugbang inside the directory cello/example

Soon I will provide a new use description :) 

ROADMAP
=======

-DSL: Based framework that consists on a metaprogramming way to create customized test methods to each single project using a new DSL to provide test methods in execution time using only one line description for each element.

-Selenium: Change watir-webdriver to selenium

-Cukes: Cucumber by nature

-Gem: Creat the cello gem that will:

  *Create project 

  *Get a page and write the elements in the page

-No Browser: Headless browser execution

-DDT: Data driven testing by nature

-No Cukes: Provide a way to work with other BDD tools

-XTest: X-browser Testing by nature

-No Selenium: Provide a way to choose at least Watir or selenium

LICENCE
=======

Copyright 2012 Camilo Ribeiro cribeiro@thoughtworks.com

This file is part of Cello.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

