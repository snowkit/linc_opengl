# linc/opengl
Haxe/hxcpp @:native bindings for OpenGL

This is a [linc](http://snowkit.github.io/linc/) library.

---
### Install

`haxelib git linc_opengl https://github.com/snowkit/linc_opengl.git`

## Important notes

This library is a work in progress, specifically the generator steps and the lack of specific API imports. See Future below for more.

The library has two imports, which behave slightly different for platform consistency reasons. The two API's are "Desktop GL" from version 1 through 4.5 and a WebGL spec based API for portability.

#### GL 1.1 - GL 4.5

**about**

The `opengl.GL` API is the entirety of the OpenGL API and extensions as defined by `GLEW`. What that means is that the API is automatically generated from `glew.h`, so everything glew defines is available as a linc API.

**usage**
The usage pattern here is for consistency with C++ and similar code.
This import pattern below makes many OpenGL examples around able to be copy pasted from C++ tutorials with only minor changes.

**import**
Use `import opengl.GL.*;` because the `*` will import all of the GL types and functions as if they were in the same scope - much like in C++.

Then, the API calls match C++:

```haxe
glClearColor(1.0, 1.0, 1.0, 1.0);
glClear(GL_COLOR_BUFFER_BIT);
```

You can still use `GL.` to invoke code completion, it's just slightly more awkward seeing `GL.glClear`.

**testing**
It's important to understand that writing a test for every one of these functions is not even possible (as some extensions are highly vendor/hardware specific, or no longer available in practice), and many of them are a part within a whole, so a test would require that the whole exist in order to validate them in usage.

That might be plausible, but what it means in practice right now, is that there might be a few functions that aren't correctly mapped to the right usage pattern. For example - a GL function expecting an array of floats: the generator could misidentify this as a byte array, and generate byte array usage for the Haxe API. The only solution to this is manually check every single one (which we'll do over time I'm sure) or to just stumble into them while trying to use the library.

I have tested numerous fixed function and core profile tests from various sources while creating the library, and will create tests within this library for those to mitigate this. I'll also be using the library extensively in my frameworks, so chances are good this won't really be a problem except on more infrequently accessed APIs. 

Fixing these issues is very easy, finding them in a sea of 1000's of functions is not. The generator has a place to account for nuance like this, soon as you identify one, report it, and we'll weed them out over time.

#### WebGL API

**about**

The WebGL.hx class contains a 1:1 mapping for the WebGL 1.0 specification. This means that you can write code for the WebGL API that runs on regular OpenGL under the hood, allowing portability and consistency (for example, the API is used on Mac, Windows, Linux, Android, iOS, and WebGL for this reason). 

This is convenient when you want consistency at an ES 2.0/WebGL level, as a baseline, while still having access to higher versioned desktop API's on the platforms where it makes sense.

**usage**
The usage pattern here matches the WebGL API, except that the functions/values are static members on a `GL` class, rather than local members of a `gl` instance. Here's a clearer example:

Common WebGL js code:

`gl.clear(gl.COLOR_BUFFER_BIT)`

linc OpenGL WebGL API:

`GL.clear(GL.COLOR_BUFFER_BIT)`

**import**
To import the WebGL spec API, use `import opengl.WebGL as GL;`
The `as` is optional, but will make much of the code easy to copy paste and share across actual WebGL code.

#### Future

The goal (as with all linc libraries) is to provide access to the API's, not to try and solve a globally portable GL API or anything. That means the GL1.1~4.5 API will remain generated from GLEW for the time being, and other API's will exist alongside it for your application to use at their discretion - much like with regular OpenGL includes, you would selectively include the appropriate one for the build profile.

**new generator from specifications**
I already have a newer, cleaner generator well under way. It includes the ability to read the specs from ES2.0 and ES3.0 API's from the official spec files, so there is no need to first parse a header file like I did originally with GLEW.


