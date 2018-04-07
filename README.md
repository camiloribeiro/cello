CELLO  
=====
[![Gem Version](https://badge.fury.io/rb/cello.png)](http://badge.fury.io/rb/cello)
[![Build Status](https://travis-ci.org/camiloribeiro/cello.png?branch=master)](https://travis-ci.org/camiloribeiro/cello)
[![Code Climate](https://codeclimate.com/github/camiloribeiro/cello.png)](https://codeclimate.com/github/camiloribeiro/cello)
[![Dependency Status](https://gemnasium.com/camiloribeiro/cello.png)](https://gemnasium.com/camiloribeiro/cello)
[![Coverage Status](https://coveralls.io/repos/camiloribeiro/cello/badge.png)](https://coveralls.io/r/camiloribeiro/cello)


          ,;,
         #(|)#        Cello is a framework for automated web UI tests based on Watir-Webdriver.
         #|||#        It may uses the Cucumber readable behavior specification language. 
          |||         The tests are based on the Page Object Model, in a lightweght and intuitive way.
          |||       / It is written in Ruby, and extended by metaprogramming and some magic.
          |||    /#/     
         _|||_  / /   Cello isn't officially released or stable yet, but the concept is already done. 
       .' ||| '/ /    It consists in a a group of patterns for describing your pages as classes. 
      /   ||| / /     The interface is designed by a DSL focussing in the Browser's user. 
      |   |||/ /|
      |_  ||/ /_|     You can control as many browsers as needed, and create iteractions between actors.
      ,_)=|/|/ (      You can also get a page with its elements by running a "cello get url". 
      )   /|/   (     This is the way we can use the "record" feature to make it easier to automate.
     /   /|/|    \
    |   / /||     |   It uses metaprog, so it doesn't rely in bad generated code from the rec feature.
    |  / /~~~/    |   It merges the power of selenium, the page object model and gherkin documentation.
     \/ / \ /     /
     /`/.__Y__.-'     It also has a record option, that allows you to create a new page object in a sec.
    /#/    |          
           |                                   have fun :)
           !
    
What is the idea?
-----------------
The core idea is based on two techniques and lots of ideas:

* The first one is the Page-Object Model, that provides a way to make tests more maintainable.
* The second one is the "record but not replay", that allows people without programming skills generate automated regression tests in an easier and faster way.

No one technique is mandatory, but the first one is strongly recommended.

We still have to much work to do (as you can see further below, in this very document), but, if you want, you can fork it and have fun!

It's STRONGLY recommended to not use it for commercial projects just yet, because it will change too much and we never tested it in a real project. We recommend you use it to emulate a project and, if possible, send us your example to be added on our library.

The way we chose to test our framework was... writing tests with it! This way we keep a stable version of it, and we can overcome the limitations of writing new features to cover the tests that weren't working and build a library of examples to future users. 

So, this way, if you are not a developer, but an awesome QA with a little experience with code, you can help us by exploring this tool a little bit in your free time, and we will try make you happy fixing the bugs and implementing the new features you end up suggesting by writing great tests. These examples will be stored on our repository with your author credentials.


Instructions
==========

Developing
----------

This project adheres to the Contributor Covenant [code of conduct](CODE_OF_CONDUCT.md).
By participating, you are expected to uphold this code.

To develop `cello`, you are going to need [Bundler][1] 

You need to have phantomjs installed to run the tests: http://phantomjs.org/ 

    $ git clone git@github.com:camiloribeiro/cello.git
    $ cd cello
    $ bundle install
    $ rake

The last step is launching the regression tests and all should be green.

If you have any problems, please let us know.

[1]: http://gembundler.com

Using
-----

To use it you will need the development environment described in this document. Then you can follow the `bugbang` example inside the `cello/example` directory.

Soon I will provide more use descriptions :)

FEATURED
========

- X-Platform: It does not matter if you are a Apple fan, A linux hard user or a windows geek. You can use it ;)

- X-Browser Running: You can create different browsers to different tests, and can use it in parallel

- Agnostic approach: You can choose between classical script, BDD, Object Oriented tests and hybrid tests to structure your tests. Also there is not a particular BDD tool to use it.

- Restricted and unrestricted interface: By nature, you can do only do what an user can do, example: It is not possível to access non visible/enabled elements. Also can use the common Watir common interface to access them if necessary, therefore, it is not recommended.

- Easy DSL: You will be able to create your DSL soon, but for while you have a simple DSL to work with.

- Rspec asserssion: Even without a mandatody Rspec approach, you can use the 'should/should_not' assertions in your testings


ROADMAP
=======

- DSL: Based framework that consists on a metaprogramming way to create customized test methods to each single project using a new DSL to provide test methods in execution time using only one line description for each element.

- Selenium: Change Watir-webdriver to Selenium

- Gem: Create the cello gem that will:

  * Create project 

  * Get a page and write the elements in the page

- DDT: Data driven testing by nature

ASCII Image: http://www.geocities.com/spunk1111/music.htm

LICENSE
=======

Copyright 2012 - 2018 Camilo Ribeiro camilo@camiloribeiro.com

This file is part of Cello.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
