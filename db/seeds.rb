#---
# Excerpted from "Agile Web Development with Rails, 4rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8

User.delete_all
User.create( :name => 'admin', :password => 'admin', :password_confirmation => 'admin')

User.create( :name => 'dave', :password => 'dave', :password_confirmation => 'dave')
                  
User.create( :name => 'mary', :password => 'mary', :password_confirmation => 'mary')
                  
User.create( :name => 'john', :password => 'john', :password_confirmation => 'john')     

Product.delete_all
Product.create(:title => 'Web Design for Developers',
  :description => 
    %{<p>
        <em>Web Design for Developers</em> will show you how to make your
        web-based application look professionally designed. We will help you
        learn how to pick the right colors and fonts, avoid costly interface
        and accessibility mistakes -- your application will really come alive.
        We'll also walk you through some common Photoshop and CSS techniques
        and work through a web site redesign, taking a new design from concept
        all the way to implementation.
      </p>},
  :image_url =>   'wd4d.jpg',    
  :price => 42.95,
  :user_id => User.find_by_name("dave").id)
# . . .
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => 'ruby.jpg',
  :price => 49.50,
  :user_id => User.find_by_name("dave").id)
# . . .

Product.create(:title => 'Rails Test Prescriptions',
  :description => 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  :image_url => 'rtp.jpg',
  :price => 43.75,
  :user_id => User.find_by_name("dave").id)
# . . .  
  
  Product.create(:title => 'Rails Recipes',
  :description => 
    %{<p>
        <em>Rails Recipes</em> is written for novice to intermediate Rails developers, 
        Rails Recipes: Rails 3 Edition is packed with solutions to 70 of the most vexing problems 
        you are likely to face on the job. From building custom forms and powering pages with JQuery 
        to integrating with legacy databases, it is all here. 
        Each recipe has been updated to reflect the latest features of Rails 3.1 and 
        each lays out a distinctive solution to a problem you may be facing today 
        or could well encounter tomorrow. In addition, you will find half the book is stocked 
        with new eye-opening solutions to such common problems as how to extend Rails, 
        test and deploy your sites, or add a web service to your actions. 
        And each recipe not only lays out a succinct solution, 
        but explains its rationale and the technologies that make it work.
      </p>},
  :image_url =>   'rr2.jpg',    
  :price => 44.00,
  :user_id => User.find_by_name("mary").id)
# . . .  

  Product.create(:title => 'Hello Android',
  :description => 
    %{<p>
        Android is a software toolkit for mobile phones, created by Google and the Open Handset Alliance. 
        It is inside millions of cell phones and other mobile devices, making Android a major platform for 
        application developers. That could be your own program running on all those devices.
      </p>},
  :image_url =>   'eband3.jpg',    
  :price => 43.75,
  :user_id => User.find_by_name("mary").id)
# . . .  

  
Product.create(:title => 'Test-Drive ASP.NET MVC',
  :description => 
    %{<p>
        ASP.NET MVCmv  2.0 is C# on the web done right. 
        No more fiddling around with Viewstate, IsPostBack(), and drag-and-drop coding. 
        Microsoft has addressed the shortcomings of ASP.NET and created a framework that goes 
        toe-to-toe with other popular web frameworks such as Ruby on Rails. 
        Programming in C# is fun again!
      </p>},
  :image_url =>   'jmasp.jpg',    
  :price => 41.35,
  :user_id => User.find_by_name("john").id)
# . . .  

Product.create(:title => 'Programming Clojure',
  :description => 
    %{<p>
        Many other languages offer some of these features, 
        but the combination of them all makes Clojure sparkle. 
        Programming Clojure shows you why these features are so important, 
        and how you can use Clojure to build powerful programs quickly.
      </p>},
  :image_url =>   'shcloj.jpg',    
  :price => 31.35,
  :user_id => User.find_by_name("john").id)
# . . .  

Product.create(:title => 'Pragmatic Thinking and Learning: Refactor Your Wetware',
  :description => 
    %{<p>
        Programmers have to learn constantly; not just the stereotypical new technologies, 
        but also the problem domain of the application, the whims of the user community, 
        the quirks of your teammates, the shifting sands of the industry, and the evolving 
        characteristics of the project itself as it is built.
      </p>},
  :image_url =>   'ahptl.jpg',    
  :price => 46.35,
  :user_id => User.find_by_name("john").id)
# . . .  

Product.create(:title => 'CoffeeScript: Accelerated JavaScript Development',
  :description => 
    %{<p>
        <em>CoffeeScript: Accelerated JavaScript Development</em> offers a thorough introduction to this 
        new language, starting from the basics. You will learn to use time-saving features like list 
        comprehensions and splats, organize your code into modules with extensible classes, and see how to 
        deploy your work to multiple environments. Each chapter is example-driven and includes challenging 
        exercises to push your CoffeeScript know-how further.
      </p>},
  :image_url =>   'tbcoffee.jpg',    
  :price => 36.00,
  :user_id => User.find_by_name("john").id)
# . . .  
