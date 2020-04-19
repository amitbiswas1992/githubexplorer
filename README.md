
<p align = "center"> 
<img src="githubexplorer/Assets.xcassets/gh-logo.imageset/gh-logo@3x.png"  width ="100" height="100" >
</p>
<div align="center">
 <h2> Githubexplorer </h2>
</div>
<p align = "center"> 
<a href="https://github.com/amitbiswas1992/githubexplorer"><img src="https://travis-ci.com/slatedocs/slate.svg?branch=master" alt="Build Status"></a>
</p>

<p align="center">Githubexplorer help you to keep track your repository and followers .</p>
 

## Summary

So it is possible to align images! You just have to use inline css to solve the problem. You can take an example from my github repo. At the bottom of README.md there is a centered aligned image. For simplicity you can just do as followers.

## Features 

* Xcode 
* UITableViewController
* UINavigationController
* Custom Alert View

<p align = "center"> 
<img src="githubexplorer/Assets.xcassets/screenshot_1.imageset/screenshot_1.png"  width ="280" height="575" >
</p>

## Used technology 

* Xcode 
* UITableViewController
* UINavigationController
* Custom Alert View

```swift
// code away!

class graph {
    var nodeCount : Int
    var adjlist: [[Int]] = []
    var visited: [Bool] = []
    var distance: [Int] = []
    
    init(_ nodeCount : Int){
        self.nodeCount = nodeCount
        for i in 0...nodeCount {
            self.adjlist.append ([])
            self.visited.append(false)
            self.distance.append(0)
        }
    }
    
    public func addedge (_ u: Int, _ v: Int) {    // 4 -> 5   5 -> 4
        adjlist[u].append (v)
        adjlist[v].append (u)
    }
}
```

---

## Installation

- All the `code` required to get started
- Images of what it should look like

### Clone

- Clone this repo to your local machine using `https://github.com/fvcproductions/SOMEREPO`

### Use the command bellow to find the line of code in each swift file 

-   `find . -path ./Pods -prune -o -name '*.swift' -print0 ! -name '/Pods' | xargs -0 wc -l`

### Setup

- If you want more syntax highlighting, format your code like this:

> update and install this package first

```shell
$ brew update
$ brew install fvcproductions
```

___

To learn more about me, visit [www.abiswas.me](https://www.abiswas.me) 
