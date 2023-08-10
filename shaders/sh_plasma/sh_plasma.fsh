uniform float iGlobalTime; 
uniform vec3 in_Position; //iResolution; 
varying vec2 fragCoord; 
const vec2 vp = vec2(320.0, 200.0);

void main( void )
{
	float t = iGlobalTime * 10.0; //+ iMouse.x;
	vec2 uv = fragCoord.xy / in_Position.xy;//iResolution.xy;
    vec2 p0 = (uv - 0.5) * vp;
    vec2 hvp = vp * 0.5;
	vec2 p1d = vec2(cos( t / 98.0),  sin( t / 178.0)) * hvp - p0;
	vec2 p2d = vec2(sin(-t / 124.0), cos(-t / 104.0)) * hvp - p0;
	vec2 p3d = vec2(cos(-t / 165.0), cos( t / 45.0))  * hvp - p0;
    float sum = 0.5 + 0.5 * (
		cos(length(p1d) / 30.0) +
		cos(length(p2d) / 20.0) +
		sin(length(p3d) / 25.0) * sin(p3d.x / 20.0) * sin(p3d.y / 15.0));
    gl_FragColor = texture2D(gm_BaseTexture, vec2(fract(sum), 0));
}
