# glsl-crosshatch-filter

[![stable](http://badges.github.io/stability-badges/dist/stable.svg)](http://github.com/badges/stability-badges)

![crosshatch](http://i.imgur.com/CnCG5u2.png)

[(glslbin demo)](http://glslb.in/s/47ffb7d1)

A very basic crosshatch effect for post-processing, from [geeks3d.com](http://www.geeks3d.com/20110219/shader-library-crosshatching-glsl-filter/). 

```glsl
#pragma glslify: crosshatch = require('glsl-crosshatch-filter')

void main() {
  vec4 texColor = texture2D(sampler, uv);
  gl_FragColor.rgb = crosshatch(texColor.rgb);
  gl_FragColor.a = texColor.a;
}
```

## Usage

[![NPM](https://nodei.co/npm/glsl-crosshatch-filter.png)](https://www.npmjs.com/package/glsl-crosshatch-filter)

#### `vec3 crosshatch(vec3 texColor)`

Applies a cross-hatch filter to the `texColor` RGB based on its luminance, using the thresholds `1.0, 0.75, 0.5, 0.3`. Returns the new RGB color.

#### `vec3 crosshatch(vec3 texColor, float t1, float t2, float t3, float t4)`

Applies a cross-hatch filter to the `texColor` RGB based on its luminance, using the thresholds from `t1` (brightest) to `t4` (darkest). Returns the new RGB color.

## License

MIT, see [LICENSE.md](http://github.com/mattdesl/glsl-crosshatch-filter/blob/master/LICENSE.md) for details.
