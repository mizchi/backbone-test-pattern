# Backbone test pattern

See `docs/1.md`


## Components

- coffee-script
- browserify
- mocha-phantomjs

## Build

```
npm install
bower install
grunt build
```

## Test

```
$ grunt test
```

```
  View
    #constructor
      with model property x is foo
        ✓ should render by handlebars with model properties 
    #attach
      ✓ should append itself to jQuery element 

  ContentView
    ✓ should request content foo 
    #showContent
      ✓ should show content 
    #hideContent
      ✓ should hide content 
    #saveContent
      ✓ should save content to localStorage 

  Content
    #fetch
      ✓ should request to /content 


  7 passing (62ms)
```
