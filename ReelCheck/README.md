# Assignment 1 - ReelCheck

**ReelCheck** is a tip calculator application for iOS.

Submitted by: Martin Li

Time spent: 12 hours spent in total

## User Stories


The following **required** functionality is complete:

- [x] Poster images are loaded using the UIImageView category in the AFNetworking library
- [x] User can view a list of movies currently playing in theaters from The Movie Database.
- [x] User sees a loading state while waiting for the movies API (you can use any 3rd party library available to do this).
- [x] User can pull to refresh the movie list

User can view a list of movies currently playing in theaters from The Movie Database.
Poster images are loaded using the UIImageView category in the AFNetworking library.
The movie poster is available by appending the returned poster_path to https://image.tmdb.org/t/p/w342.
User sees a loading state while waiting for the movies API (you can use any 3rd party library available to do this).
User can pull to refresh the movie list.

The following **additional** features are implemented:

- [ ] User sees an error message when there's a networking error. You may not use UIAlertController or a 3rd party library to display the error. See this screenshot for what the error message should look like.
Hint: Using the hidden property of a view can be helpful to toggle the network error view's visibility.
Hint: You can simulate a network error, by turning off the wifi on your computer before running the simulator. You will also want to Reset Content and Settings in your simulator (Found under the Simulator drop down menu) before you run the app too, otherwise the images will be fetched from the cache instead of the network. The setImageWithURL method stores images in cache automatically behind the scenes.
Movies are displayed using a CollectionView instead of a TableView.
 [ ]User can search for a movie.
Hint: Consider using a UISearchBar for this feature. Don't use the UISearchDisplayController.
All images fade in as they are loading.
Hint: The image should only fade in if it's coming from network, not when it is loaded from cache.
Customize the UI. You can use Iconmonstr and The Noun Project as good sources of images.

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/JQtTU0W.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).
## Notes

Describe any challenges encountered while building the app.
I guess it would be that Macos is incredibly slow and really hard to virtualize unless you have above average hardware.
Downloading software was slow. Little breakpoints and SRGBTs was really annoying and some of the parts is still unknown why it breaks down

Codepath University Dates attendance keeps switching

## License

Copyright 2015 Martin(Mertiant)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


