# linc/opengl
Haxe/hxcpp @:native bindings for OpenGL

This is a [linc](http://snowkit.github.io/linc/) library.

---
### Install

`haxelib git linc_opengl https://github.com/snowkit/linc_opengl.git`

### License

See LICENSE.md

## Important notes

This library is a work in progress!   
This readme covers the important things to note when using the library.

**Please note**    
That finding and reporting issues is quite important to the library being great to use - it is a collective effort. Issue reports are crucial.

**Missing endpoints**   
There are some endpoints that aren't generated yet (search for TODO inside of GL.hx for examples). These are currently mostly related to obscure extensions or C++ pointer related. 

I will continue to map the pointer based functions soon, but there definitely will be some API endpoints that aren't available until then. An example is glMapBuffer which returns `void*`, expressing this in Haxe is not difficult, just that care should be taken for these type of functions more specifically than the rest.

This library is specifically about access.

**Does do**   
- Gives you access to OpenGL API's from Haxe code
- Gives you access to GLEW API from Haxe code

**Doesn't do**   
- Handle any form of windowing or GL context creation
- Anything else, really.

This means you'd probably want to create a window, and an OpenGL context, before calling any of these functions. For example, you could do so with [linc_sdl](http://github.com/snowkit/linc_sdl). (Some examples of this will be added soon)

**Available API's**   
The library has two imports, which behave slightly different for platform consistency reasons. The two API's are "Desktop GL" from version 1.1 through 4.5 and a WebGL spec based API for portability.

#### GLEW dependency

Currently on desktop platforms GLEW is imported as the OpenGL header.
For now, there are no flags or ways to avoid its use - I plan to solve that in future. GLEW is pretty prevalant, does solve many annoyances and issues, and is a decent option as far as general GL wrangling goes. 

Because of the dependency, on desktop platforms, you have to initialize GLEW yourself under the same conditions as you would when using GLEW and GL normally. Typically you do this after creating the GL context - see below.
Take note that I say desktop: you will probably run into issues with GLEW on mobile platforms, so shield your code with `#if` accordingly.

For simplicity, `import glew.GLEW;` is provided, with the full GLEW API. If you want to use it outside of linc_opengl for some reason there is also [linc_glew](https://github.com/snowkit/linc_glew) available.

```haxe
var res = GLEW.init();
if(res != GLEW.OK) {
    throw 'Failed to initialize GLEW! ' + GLEW.error(res);
} else {
    trace('GLEW init went ok!');
}
```



#### GL 1.1 - GL 4.5 API

**About**

The `opengl.GL` API is the entirety of the OpenGL API and extensions as defined by `GLEW`. What that means is that the API is automatically generated from `glew.h`, so everything glew defines is available as a Haxe API.

**Usage**

The usage pattern here is for consistency with C++ and similar code.
This import pattern below makes many OpenGL examples around able to be copy pasted from C++ tutorials with only minor changes.

**Import**

Use `import opengl.GL.*;` because the `*` will import all of the GL types and functions as if they were in the same scope - much like in C++.

Then, the API calls match C++ pretty closely:

```haxe
glClearColor(1.0, 1.0, 1.0, 1.0);
glClear(GL_COLOR_BUFFER_BIT);
```

You can still use `GL.` to invoke code completion, it's just slightly more awkward seeing `GL.glClear`.

**Testing**

It's important to understand that writing a test for every one of these functions is not even possible as some extensions are highly vendor/hardware specific, or no longer available in practice.

Many endpoints are a part of a whole, and require the whole to test them for validation. The majority of these we will get to. 

In practice right now, there might be a few functions that aren't correctly mapped to the right usage pattern. For example - a GL function expecting an array of floats: the generator could misidentify this as a byte array, and generate byte array usage for the Haxe API. The only solution to this is manually check every single one (which we'll do over time I'm sure) or to just stumble into them while trying to use the library.

I have tested numerous fixed function and core profile tests from various sources while creating the library, and will create tests within this library over time for to mitigate this. I'll continually be using the library extensively in practice in [luxe/snow](http://luxeengine.com/), so chances are good this won't really be a problem for the majority of API, rather on more infrequently accessed APIs.

Fixing these issues is very easy, finding them in a sea of 1000's of functions is not. The generator has a place to account for nuance like this, soon as you identify one, report it, and we'll weed them out over time.

#### WebGL API

**About**

The WebGL.hx class contains a 1:1 mapping for the WebGL 1.0 specification. This means that you can write code for the WebGL API that runs on regular OpenGL under the hood, allowing portability and consistency (for example, the API is used on Mac, Windows, Linux, Android, iOS, alongside WebGL externs for this reason). 

This is convenient when you want consistency at an ES 2.0/WebGL level, as a baseline, while still having access to higher versioned desktop API's on the platforms where it makes sense.

**Usage**

The usage pattern here matches the WebGL API, except that the functions/values are static members on a `GL` class, rather than local members of a `gl` instance. Here's a clearer example:

Common WebGL js code:

`gl.clear(gl.COLOR_BUFFER_BIT)`

linc OpenGL WebGL API:

`GL.clear(GL.COLOR_BUFFER_BIT)`

**Import**

To import the WebGL spec API, use `import opengl.WebGL as GL;`   
The `as` is optional, but will make much of the code easy to copy paste and share across actual WebGL code.

#### Future

**Other GL API's**

ES 2.x and ES 3.x API imports are on the way.   
The goal (as with all linc libraries) is to provide access to the API's, not to try and solve a globally portable GL API or anything. 

That means the GL1.1~4.5 API will remain generated from GLEW for the time being, and other API's will exist alongside it for your application to use at their discretion - much like with regular OpenGL includes, you would selectively include the appropriate one for the build profile and call the functions that make sense when you've done so.

**New generator**

The current generator is a bit messy but it does the job to get a usable API which is enough for now and validate the approach. I already have a newer, cleaner generator well under way. It includes the ability to read the API (like from ES2.0 and ES3.0 API's) from the official spec, so there is no need to first parse a header file.




