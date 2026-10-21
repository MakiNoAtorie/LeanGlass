// Generated from LeanCRT.fx (GPL-2.0-or-later) by ReShade fxc.
// Raster permutation (__RENDERER__=0xa000) for the native spike.
struct __sampler1D_int { Texture1D<int> t; SamplerState s; };
struct __sampler2D_int { Texture2D<int> t; SamplerState s; };
struct __sampler3D_int { Texture3D<int> t; SamplerState s; };
struct __sampler1D_int4 { Texture1D<int4> t; SamplerState s; };
struct __sampler2D_int4 { Texture2D<int4> t; SamplerState s; };
struct __sampler3D_int4 { Texture3D<int4> t; SamplerState s; };
struct __sampler1D_uint { Texture1D<uint> t; SamplerState s; };
struct __sampler2D_uint { Texture2D<uint> t; SamplerState s; };
struct __sampler3D_uint { Texture3D<uint> t; SamplerState s; };
struct __sampler1D_uint4 { Texture1D<uint4> t; SamplerState s; };
struct __sampler2D_uint4 { Texture2D<uint4> t; SamplerState s; };
struct __sampler3D_uint4 { Texture3D<uint4> t; SamplerState s; };
struct __sampler1D_float { Texture1D<float> t; SamplerState s; };
struct __sampler2D_float { Texture2D<float> t; SamplerState s; };
struct __sampler3D_float { Texture3D<float> t; SamplerState s; };
struct __sampler1D_float4 { Texture1D<float4> t; SamplerState s; };
struct __sampler2D_float4 { Texture2D<float4> t; SamplerState s; };
struct __sampler3D_float4 { Texture3D<float4> t; SamplerState s; };
#define SPEC_CONSTANT_V__mask_type 4
#define SPEC_CONSTANT_V__mask_size_param 0
#define SPEC_CONSTANT_V__mask_triad_width 3.00000000e+00
#define SPEC_CONSTANT_V__mask_num_triads_across 4.80000000e+02
#define SPEC_CONSTANT_V__scale_triad_height 1.00000000e+00
#define SPEC_CONSTANT_V__phosphor_thickness 2.00000003e-01, 2.00000003e-01
#define SPEC_CONSTANT_V__phosphor_sharpness 5.00000000e+01, 5.00000000e+01
#define SPEC_CONSTANT_V__phosphor_offset_x 0.00000000e+00, 0.00000000e+00, 0.00000000e+00
#define SPEC_CONSTANT_V__phosphor_offset_y 0.00000000e+00, 0.00000000e+00, 0.00000000e+00
#define SPEC_CONSTANT_V__scanline_thickness 2
#define SPEC_CONSTANT_V__scanline_offset 0.00000000e+00
#define SPEC_CONSTANT_V__beam_shape_mode 1
#define SPEC_CONSTANT_V__enable_interlacing false
#define SPEC_CONSTANT_V__interlace_back_field_first false
#define SPEC_CONSTANT_V__scanline_deinterlacing_mode 1
#define SPEC_CONSTANT_V__deinterlacing_blend_gamma 1.00000000e+00
#define SPEC_CONSTANT_V__linear_beam_thickness 1.00000000e+00
#define SPEC_CONSTANT_V__gaussian_beam_min_sigma 1.99999996e-02
#define SPEC_CONSTANT_V__gaussian_beam_max_sigma 3.00000012e-01
#define SPEC_CONSTANT_V__gaussian_beam_spot_power 3.33333343e-01
#define SPEC_CONSTANT_V__gaussian_beam_min_shape 2.00000000e+00
#define SPEC_CONSTANT_V__gaussian_beam_max_shape 4.00000000e+00
#define SPEC_CONSTANT_V__gaussian_beam_shape_power 2.50000000e-01
#define SPEC_CONSTANT_V__convergence_offset_x 0.00000000e+00, 0.00000000e+00, 0.00000000e+00
#define SPEC_CONSTANT_V__convergence_offset_y 0.00000000e+00, 0.00000000e+00, 0.00000000e+00
#define SPEC_CONSTANT_V__crt_gamma 2.50000000e+00
#define SPEC_CONSTANT_V__lcd_gamma 2.20000005e+00
#define SPEC_CONSTANT_V__levels_contrast 1.00000000e+00
#define SPEC_CONSTANT_V__halation_weight 0.00000000e+00
#define SPEC_CONSTANT_V__diffusion_weight 7.50000030e-02
#define SPEC_CONSTANT_V__blur_radius 1.00000000e+00
#define SPEC_CONSTANT_V__bloom_underestimate_levels 8.00000012e-01
#define SPEC_CONSTANT_V__bloom_excess 0.00000000e+00
#define SPEC_CONSTANT_V__aa_subpixel_r_offset_runtime -3.33333343e-01, 0.00000000e+00
#define SPEC_CONSTANT_V__geom_rotation_mode 0
#define SPEC_CONSTANT_V__geom_mode_runtime 0
#define SPEC_CONSTANT_V__geom_radius 2.00000000e+00
#define SPEC_CONSTANT_V__geom_view_dist 2.00000000e+00
#define SPEC_CONSTANT_V__geom_tilt_angle 0.00000000e+00, 0.00000000e+00
#define SPEC_CONSTANT_V__geom_aspect_ratio 1.31306994e+00, 1.00000000e+00
#define SPEC_CONSTANT_V__geom_overscan 1.00000000e+00, 1.00000000e+00
#define SPEC_CONSTANT_V__border_size 1.49999997e-02
#define SPEC_CONSTANT_V__border_darkness 2.00000000e+00
#define SPEC_CONSTANT_V__border_compress 2.50000000e+00
cbuffer _Globals {
	uint V__frame_count;
	int V__overlay_active;
	int V__version_2_1_0;
	int V__basic_setup_help;
	int V__content_box_help;
};
SamplerState __s0 : register(s0);
static const int V__mask_type = (SPEC_CONSTANT_V__mask_type);
static const uint V__mask_size_param = (SPEC_CONSTANT_V__mask_size_param);
static const float V__mask_triad_width = (SPEC_CONSTANT_V__mask_triad_width);
static const float V__mask_num_triads_across = (SPEC_CONSTANT_V__mask_num_triads_across);
static const float V__scale_triad_height = (SPEC_CONSTANT_V__scale_triad_height);
static const float2 V__phosphor_thickness = float2(SPEC_CONSTANT_V__phosphor_thickness);
static const float2 V__phosphor_sharpness = float2(SPEC_CONSTANT_V__phosphor_sharpness);
static const float3 V__phosphor_offset_x = float3(SPEC_CONSTANT_V__phosphor_offset_x);
static const float3 V__phosphor_offset_y = float3(SPEC_CONSTANT_V__phosphor_offset_y);
static const uint V__scanline_thickness = (SPEC_CONSTANT_V__scanline_thickness);
static const float V__scanline_offset = (SPEC_CONSTANT_V__scanline_offset);
static const uint V__beam_shape_mode = (SPEC_CONSTANT_V__beam_shape_mode);
static const bool V__enable_interlacing = (SPEC_CONSTANT_V__enable_interlacing);
static const bool V__interlace_back_field_first = (SPEC_CONSTANT_V__interlace_back_field_first);
static const uint V__scanline_deinterlacing_mode = (SPEC_CONSTANT_V__scanline_deinterlacing_mode);
static const float V__deinterlacing_blend_gamma = (SPEC_CONSTANT_V__deinterlacing_blend_gamma);
static const float V__linear_beam_thickness = (SPEC_CONSTANT_V__linear_beam_thickness);
static const float V__gaussian_beam_min_sigma = (SPEC_CONSTANT_V__gaussian_beam_min_sigma);
static const float V__gaussian_beam_max_sigma = (SPEC_CONSTANT_V__gaussian_beam_max_sigma);
static const float V__gaussian_beam_spot_power = (SPEC_CONSTANT_V__gaussian_beam_spot_power);
static const float V__gaussian_beam_min_shape = (SPEC_CONSTANT_V__gaussian_beam_min_shape);
static const float V__gaussian_beam_max_shape = (SPEC_CONSTANT_V__gaussian_beam_max_shape);
static const float V__gaussian_beam_shape_power = (SPEC_CONSTANT_V__gaussian_beam_shape_power);
static const float3 V__convergence_offset_x = float3(SPEC_CONSTANT_V__convergence_offset_x);
static const float3 V__convergence_offset_y = float3(SPEC_CONSTANT_V__convergence_offset_y);
static uint V__beam_horiz_filter = 0u;
static float V__beam_horiz_sigma = 3.49999994e-01;
static float V__beam_horiz_linear_rgb_weight = 1.00000000e+00;
static const float V__crt_gamma = (SPEC_CONSTANT_V__crt_gamma);
static const float V__lcd_gamma = (SPEC_CONSTANT_V__lcd_gamma);
static const float V__levels_contrast = (SPEC_CONSTANT_V__levels_contrast);
static const float V__halation_weight = (SPEC_CONSTANT_V__halation_weight);
static const float V__diffusion_weight = (SPEC_CONSTANT_V__diffusion_weight);
static const float V__blur_radius = (SPEC_CONSTANT_V__blur_radius);
static const float V__bloom_underestimate_levels = (SPEC_CONSTANT_V__bloom_underestimate_levels);
static const float V__bloom_excess = (SPEC_CONSTANT_V__bloom_excess);
static const float2 V__aa_subpixel_r_offset_runtime = float2(SPEC_CONSTANT_V__aa_subpixel_r_offset_runtime);
static const uint V__geom_rotation_mode = (SPEC_CONSTANT_V__geom_rotation_mode);
static const uint V__geom_mode_runtime = (SPEC_CONSTANT_V__geom_mode_runtime);
static const float V__geom_radius = (SPEC_CONSTANT_V__geom_radius);
static const float V__geom_view_dist = (SPEC_CONSTANT_V__geom_view_dist);
static const float2 V__geom_tilt_angle = float2(SPEC_CONSTANT_V__geom_tilt_angle);
static const float2 V__geom_aspect_ratio = float2(SPEC_CONSTANT_V__geom_aspect_ratio);
static const float2 V__geom_overscan = float2(SPEC_CONSTANT_V__geom_overscan);
static const float V__border_size = (SPEC_CONSTANT_V__border_size);
static const float V__border_darkness = (SPEC_CONSTANT_V__border_darkness);
static const float V__border_compress = (SPEC_CONSTANT_V__border_compress);
SamplerState __s1 : register(s1);
SamplerState __s2 : register(s2);
struct S__InterpolationFieldData
{
	float triangle_wave_freq;
	bool field_parity;
	bool scanline_parity;
	bool wrong_field;
};
static const float3 _14479[64] = { float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00) };
static const float3 _15012[9] = { float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00) };
Texture2D<float4> __V__ReShade__BackBuffer_t : register(t0); 
static const __sampler2D_float4 V__ReShade__BackBuffer = { __V__ReShade__BackBuffer_t, __s0 };
Texture2D<float4> __V__ReShade__DepthBuffer_t : register(t1); 
static const __sampler2D_float4 V__ReShade__DepthBuffer = { __V__ReShade__DepthBuffer_t, __s0 };
Texture2D<unorm float4> __V__samplerPreblurVert_t : register(t2); 
static const __sampler2D_float4 V__samplerPreblurVert = { __V__samplerPreblurVert_t, __s0 };
Texture2D<unorm float4> __V__samplerPreblurHoriz_t : register(t3); 
static const __sampler2D_float4 V__samplerPreblurHoriz = { __V__samplerPreblurHoriz_t, __s0 };
Texture2D<unorm float4> __V__samplerBeamDist_t : register(t4); 
static const __sampler2D_float4 V__samplerBeamDist = { __V__samplerBeamDist_t, __s1 };
Texture2D<unorm float4> __V__samplerElectronBeams_t : register(t5); 
static const __sampler2D_float4 V__samplerElectronBeams = { __V__samplerElectronBeams_t, __s2 };
Texture2D<unorm float4> __V__samplerBeamConvergence_t : register(t6); 
static const __sampler2D_float4 V__samplerBeamConvergence = { __V__samplerBeamConvergence_t, __s0 };
Texture2D<unorm float4> __V__samplerBloomApproxHoriz_t : register(t7); 
static const __sampler2D_float4 V__samplerBloomApproxHoriz = { __V__samplerBloomApproxHoriz_t, __s0 };
Texture2D<unorm float4> __V__samplerBloomApproxVert_t : register(t8); 
static const __sampler2D_float4 V__samplerBloomApproxVert = { __V__samplerBloomApproxVert_t, __s0 };
Texture2D<unorm float4> __V__samplerBlurVertical_t : register(t9); 
static const __sampler2D_float4 V__samplerBlurVertical = { __V__samplerBlurVertical_t, __s0 };
Texture2D<unorm float4> __V__samplerBlurHorizontal_t : register(t10); 
static const __sampler2D_float4 V__samplerBlurHorizontal = { __V__samplerBlurHorizontal_t, __s0 };
Texture2D<unorm float4> __V__samplerDeinterlace_t : register(t11); 
static const __sampler2D_float4 V__samplerDeinterlace = { __V__samplerDeinterlace_t, __s0 };
Texture2D<unorm float4> __V__samplerFreezeFrame_t : register(t12); 
static const __sampler2D_float4 V__samplerFreezeFrame = { __V__samplerFreezeFrame_t, __s0 };
Texture2D<unorm float4> __V__samplerPhosphorMask_t : register(t13); 
static const __sampler2D_float4 V__samplerPhosphorMask = { __V__samplerPhosphorMask_t, __s0 };
Texture2D<unorm float4> __V__samplerPhosphorBlue_t : register(t14); 
static const __sampler2D_float4 V__samplerPhosphorBlue = { __V__samplerPhosphorBlue_t, __s0 };
Texture2D<unorm float4> __V__samplerMaskedScanlines_t : register(t15); 
static const __sampler2D_float4 V__samplerMaskedScanlines = { __V__samplerMaskedScanlines_t, __s0 };
Texture2D<unorm float4> __V__samplerBrightpass_t : register(t16); 
static const __sampler2D_float4 V__samplerBrightpass = { __V__samplerBrightpass_t, __s0 };
Texture2D<unorm float4> __V__samplerBloomVertical_t : register(t17); 
static const __sampler2D_float4 V__samplerBloomVertical = { __V__samplerBloomVertical_t, __s0 };
Texture2D<unorm float4> __V__samplerBloomHorizontal_t : register(t18); 
static const __sampler2D_float4 V__samplerBloomHorizontal = { __V__samplerBloomHorizontal_t, __s0 };
Texture2D<unorm float4> __V__samplerGeometry_t : register(t19); 
static const __sampler2D_float4 V__samplerGeometry = { __V__samplerGeometry_t, __s0 };
float F__ReShade__GetLinearizedDepth(
	in float2 texcoord)
{
	float _10 = texcoord.x / 1.00000000e+00;
	texcoord[0] = _10;
	float _13 = texcoord.y / 1.00000000e+00;
	texcoord[1] = _13;
	float _16 = texcoord.x - 0.00000000e+00;
	texcoord[0] = _16;
	float _19 = texcoord.y + 0.00000000e+00;
	texcoord[1] = _19;
	float4 _24 = float4(texcoord.x, texcoord.y, 0.00000000e+00, 0.00000000e+00);
	float4 _25 = V__ReShade__DepthBuffer.t.SampleLevel(V__ReShade__DepthBuffer.s, _24.xy, _24.w);
	float _28 = _25.x * 1.00000000e+00;
	float depth = _28;
	float _31 = 1.00000000e+00 - depth;
	depth = _31;
	float _33 = depth * 9.99000000e+02;
	float _35 = 1.00000000e+03 - _33;
	float _36 = depth / _35;
	depth = _36;
	return depth;
}
void F__PostProcessVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	bool _43 = id == 2u;
	float _46 = _43 ? 2.00000000e+00 : 0.00000000e+00;
	texcoord[0] = _46;
	bool _48 = id == 1u;
	float _51 = _48 ? 2.00000000e+00 : 0.00000000e+00;
	texcoord[1] = _51;
	float2 _53 = texcoord * float2(2.00000000e+00, -2.00000000e+00);
	float2 _55 = _53 + float2(-1.00000000e+00, 1.00000000e+00);
	float4 _60 = float4(_55.x, _55.y, 0.00000000e+00, 1.00000000e+00);
	position = _60;
	return;
}
float4 F__tex2D_nograd(
	in __sampler2D_float4 tex,
	in float2 tex_coords)
{
	float4 _69 = float4(tex_coords.x, tex_coords.y, 0.00000000e+00, 0.00000000e+00);
	float4 _71 = tex.t.SampleLevel(tex.s, _69.xy, _69.w, int2(0, 0));
	return _71;
}
float2 F__get_aspect_vector(
	in float geom_aspect_ratio)
{
	float _131 = min(geom_aspect_ratio, 1.33333337e+00);
	float geom_clamped_aspect_ratio = _131;
	float2 _134 = float2(geom_clamped_aspect_ratio, 1.00000000e+00);
	float2 _135 = normalize(_134);
	float2 geom_aspect = _135;
	return geom_aspect;
}
float2 F__get_geom_overscan_vector()
{
	return V__geom_overscan;
}
float2 F__get_geom_tilt_angle_vector()
{
	return V__geom_tilt_angle;
}
float3 F__get_convergence_offsets_x_vector()
{
	return V__convergence_offset_x;
}
float3 F__get_convergence_offsets_y_vector()
{
	return V__convergence_offset_y;
}
float2 F__get_convergence_offsets_r_vector()
{
	float2 _149 = float2(V__convergence_offset_x.x, V__convergence_offset_y.x);
	return _149;
}
float2 F__get_convergence_offsets_g_vector()
{
	float2 _154 = float2(V__convergence_offset_x.y, V__convergence_offset_y.y);
	return _154;
}
float2 F__get_convergence_offsets_b_vector()
{
	float2 _159 = float2(V__convergence_offset_x.z, V__convergence_offset_y.z);
	return _159;
}
float2 F__get_aa_subpixel_r_offset()
{
	return float2(-3.33333343e-01, 0.00000000e+00);
}
float F__get_mask_amplify()
{
	float mask_amplify = 0.00000000e+00;
	[flatten] switch (V__mask_type)
	{
	case 0: {
		mask_amplify = 4.81132078e+00;
		break;
	}
	case 1: {
		mask_amplify = 5.54347801e+00;
		break;
	}
	case 2: {
		mask_amplify = 6.21951199e+00;
		break;
	}
	case 3: {
		mask_amplify = 4.81132078e+00;
		break;
	}
	case 4: {
		mask_amplify = 5.54347801e+00;
		break;
	}
	default: {
		mask_amplify = 6.21951199e+00;
		break;
	}
	}
	return mask_amplify;
}
void F__contentCropVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	uint _216 = id & 1u;
	float _220 = ((bool)_216) ? 1.00000000e+00 : 0.00000000e+00;
	texcoord[0] = _220;
	uint _222 = id & 2u;
	float _226 = ((bool)_222) ? 1.00000000e+00 : 0.00000000e+00;
	texcoord[1] = _226;
	uint _228 = id & 1u;
	int _232 = ((bool)_228) ? 1 : -1;
	position[0] = ((float)_232);
	uint _235 = id & 2u;
	int _239 = ((bool)_235) ? -1 : 1;
	position[1] = ((float)_239);
	position.zw = float2(1.00000000e+00, 1.00000000e+00);
	return;
}
void F__contentUncropVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	uint _248 = id & 1u;
	texcoord[0] = ((float)_248);
	uint _251 = id & 2u;
	bool _253 = !((bool)_251);
	texcoord[1] = ((float)_253);
	uint _256 = id & 1u;
	int _260 = ((bool)_256) ? 1 : -1;
	position[0] = ((float)_260);
	uint _263 = id & 2u;
	int _267 = ((bool)_263) ? 1 : -1;
	position[1] = ((float)_267);
	position.zw = float2(1.00000000e+00, 1.00000000e+00);
	return;
}
void F__uncropContentPixelShader(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	bool _277 = texcoord.x >= 0.00000000e+00;
	bool _280 = texcoord.x <= 1.00000000e+00;
	bool _281 = _277 && _280;
	bool _284 = texcoord.y >= 0.00000000e+00;
	bool _285 = _281 && _284;
	bool _288 = texcoord.y <= 1.00000000e+00;
	bool _289 = _285 && _288;
	bool is_in_boundary = ((bool)((float)_289));
	float2 _293 = texcoord - float2(0.00000000e+00, 0.00000000e+00);
	float2 _295 = _293 * float2(1.92000000e+03, 1.08000000e+03);
	float2 _297 = _295 + float2(0.00000000e+00, 0.00000000e+00);
	float2 _299 = _297 / float2(1.92000000e+03, 1.08000000e+03);
	float2 texcoord_uncropped = _299;
	float4 _301 = V__samplerGeometry.t.Sample(V__samplerGeometry.s, texcoord_uncropped);
	float4 raw_color = _301;
	float3 _305 = ((float3)is_in_boundary.xxx) * raw_color.xyz;
	float4 _310 = float4(_305.x, _305.y, _305.z, raw_color.w);
	color = _310;
	return;
}
float3 F__opaque_linear_downsample(
	in __sampler2D_float4 tex,
	in float2 texcoord,
	in uint num_pairs,
	in float2 delta_uv)
{
	uint _318 = num_pairs * 2u;
	uint _320 = _318 + 1u;
	uint total_num_samples = _320;
	float2 _323 = delta_uv * ((float2)num_pairs.xx);
	float2 _324 = texcoord - _323;
	float2 coord_left = _324;
	float3 acc = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	int i = 0;
	while (((uint)i) < total_num_samples)
	{
		{
			float2 _341 = ((float2)i.xx) * delta_uv;
			float2 _342 = coord_left + _341;
			float2 coord = _342;
			float2 _344;
			_344 = coord;
			float4 _345 = F__tex2D_nograd(tex, _344);
			float3 _347 = acc + _345.xyz;
			acc = _347;
		}
		int _338 = i;
		int _339 = _338 + 1;
		i = _339;
	}
	float3 _349 = acc / ((float3)total_num_samples.xxx);
	return _349;
}
float3 F__opaque_lanczos_downsample(
	in __sampler2D_float4 tex,
	in float2 texcoord,
	in uint num_pairs,
	in float2 delta_uv,
	in float num_sinc_lobes,
	in float weight_at_center)
{
	uint _359 = num_pairs * 2u;
	uint _361 = _359 + 1u;
	uint total_num_samples_362 = _361;
	float2 _364 = delta_uv * ((float2)num_pairs.xx);
	float2 _365 = texcoord - _364;
	float2 coord_left_366 = _365;
	float _368 = num_sinc_lobes / ((float)num_pairs);
	float sinc_dx = _368;
	float3 acc_371 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float w_sum = 0.00000000e+00;
	int i_375 = 0;
	while (((uint)i_375) < total_num_samples_362)
	{
		{
			float2 _387 = ((float2)i_375.xx) * delta_uv;
			float2 _388 = coord_left_366 + _387;
			float2 coord_389 = _388;
			float _391 = ((float)i_375) * sinc_dx;
			float sinc_x = _391;
			bool _394 = ((uint)i_375) != num_pairs;
			float _396 = 3.14159274e+00 * sinc_x;
			float _397 = sin(_396);
			float _398 = num_sinc_lobes * _397;
			float _400 = 3.14159274e+00 * sinc_x;
			float _401 = _400 / num_sinc_lobes;
			float _402 = sin(_401);
			float _403 = _398 * _402;
			float _405 = 9.86960506e+00 * sinc_x;
			float _406 = _405 * sinc_x;
			float _407 = _403 / _406;
			float _408 = _394 ? _407 : weight_at_center;
			float weight = _408;
			float2 _410;
			_410 = coord_389;
			float4 _411 = F__tex2D_nograd(tex, _410);
			float3 _414 = weight.xxx * _411.xyz;
			float3 _415 = acc_371 + _414;
			acc_371 = _415;
			float _416 = w_sum + weight;
			w_sum = _416;
		}
		int _384 = i_375;
		int _385 = _384 + 1;
		i_375 = _385;
	}
	float3 _418 = acc_371 / w_sum.xxx;
	return _418;
}
float3 F__opaque_lanczos_downsample(
	in __sampler2D_float4 tex,
	in float2 texcoord,
	in uint num_pairs,
	in float2 delta_uv,
	in float num_sinc_lobes)
{
	float2 _426;
	uint _427;
	float2 _428;
	float _429;
	float _430;
	_426 = texcoord;
	_427 = num_pairs;
	_428 = delta_uv;
	_429 = num_sinc_lobes;
	_430 = 1.00000000e+00;
	float3 _432 = F__opaque_lanczos_downsample(tex, _426, _427, _428, _429, _430);
	return _432;
}
void F__preblurVertPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float2 texcoord_uncropped_438 = texcoord;
	float _440 = rcp(1.08000000e+03);
	float2 _442 = float2(0.00000000e+00, _440);
	float2 _444 = _442 * float2(0.00000000e+00, 0.00000000e+00);
	float2 max_delta_uv = _444;
	int _448 = max(0, 1);
	float _450 = rcp(((float)_448));
	float2 _452 = max_delta_uv * _450.xx;
	float2 delta_uv_453 = _452;
	float2 _454;
	uint _455;
	float2 _456;
	_454 = texcoord_uncropped_438;
	_455 = 0u;
	_456 = delta_uv_453;
	float3 _458 = F__opaque_linear_downsample(V__ReShade__BackBuffer, _454, _455, _456);
	float4 _463 = float4(_458.x, _458.y, _458.z, 1.00000000e+00);
	color = _463;
	return;
}
void F__preblurHorizPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _470 = rcp(1.92000000e+03);
	float2 _472 = float2(_470, 0.00000000e+00);
	float2 _474 = _472 * float2(0.00000000e+00, 0.00000000e+00);
	float2 max_delta_uv_475 = _474;
	int _478 = max(0, 1);
	float _480 = rcp(((float)_478));
	float2 _482 = max_delta_uv_475 * _480.xx;
	float2 delta_uv_483 = _482;
	float2 _484;
	uint _485;
	float2 _486;
	_484 = texcoord;
	_485 = 0u;
	_486 = delta_uv_483;
	float3 _488 = F__opaque_linear_downsample(V__samplerPreblurVert, _484, _485, _486);
	float4 _493 = float4(_488.x, _488.y, _488.z, 1.00000000e+00);
	color = _493;
	return;
}
float F__get_crt_gamma()
{
	return V__crt_gamma;
}
float F__get_gba_gamma()
{
	return 3.50000000e+00;
}
float F__get_lcd_gamma()
{
	return V__lcd_gamma;
}
float F__get_intermediate_gamma()
{
	return 1.00000000e+00;
}
float F__get_input_gamma()
{
	float _506 = F__get_crt_gamma();
	return _506;
}
float F__get_output_gamma()
{
	float _509 = F__get_lcd_gamma();
	return _509;
}
float4 F__encode_output_opaque(
	in float4 color,
	in float gamma)
{
	float3 _514 = float3(gamma, gamma, gamma);
	float3 _516 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _514;
	float3 g = _516;
	float3 _519 = pow(color.xyz, g);
	float4 _524 = float4(_519.x, _519.y, _519.z, 1.00000000e+00);
	return _524;
}
float4 F__decode_input_opaque(
	in float4 color,
	in float gamma)
{
	float3 _529 = float3(gamma, gamma, gamma);
	float3 g_530 = _529;
	float3 _532 = pow(color.xyz, g_530);
	float4 _537 = float4(_532.x, _532.y, _532.z, 1.00000000e+00);
	return _537;
}
float4 F__encode_output(
	in float4 color,
	in float gamma)
{
	float3 _542 = float3(gamma, gamma, gamma);
	float3 _544 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _542;
	float3 g_545 = _544;
	float3 _547 = pow(color.xyz, g_545);
	float4 _552 = float4(_547.x, _547.y, _547.z, color.w);
	return _552;
}
float4 F__decode_input(
	in float4 color,
	in float gamma)
{
	float3 _557 = float3(gamma, gamma, gamma);
	float3 g_558 = _557;
	float3 _560 = pow(color.xyz, g_558);
	float4 _565 = float4(_560.x, _560.y, _560.z, color.w);
	return _565;
}
float4 F__tex2D_linearize(
	in __sampler2D_float4 tex,
	in float2 tex_coords,
	in float gamma)
{
	float4 _571 = tex.t.Sample(tex.s, tex_coords);
	float4 _572;
	float _573;
	_572 = _571;
	_573 = gamma;
	float4 _574 = F__decode_input(_572, _573);
	return _574;
}
float4 F__tex2D_linearize(
	in __sampler2D_float4 tex,
	in float3 tex_coords,
	in float gamma)
{
	float4 _581 = tex.t.Sample(tex.s, tex_coords.xy);
	float4 _582;
	float _583;
	_582 = _581;
	_583 = gamma;
	float4 _584 = F__decode_input(_582, _583);
	return _584;
}
float4 F__tex2Dlod_linearize(
	in __sampler2D_float4 tex,
	in float2 tex_coords,
	in float gamma)
{
	float4 _594 = float4(tex_coords.x, tex_coords.y, 0.00000000e+00, 0.00000000e+00);
	float4 _596 = tex.t.SampleLevel(tex.s, _594.xy, _594.w, int2(0, 0));
	float4 _597;
	float _598;
	_597 = _596;
	_598 = gamma;
	float4 _599 = F__decode_input(_597, _598);
	return _599;
}
float4 F__tex2Dlod_linearize(
	in __sampler2D_float4 tex,
	in float4 tex_coords,
	in float gamma)
{
	float4 _609 = float4(tex_coords.xy.x, tex_coords.xy.y, 0.00000000e+00, 0.00000000e+00);
	float4 _611 = tex.t.SampleLevel(tex.s, _609.xy, _609.w, int2(0, 0));
	float4 _612;
	float _613;
	_612 = _611;
	_613 = gamma;
	float4 _614 = F__decode_input(_612, _613);
	return _614;
}
float4 F__erf6(
	in float4 x)
{
	float4 _618 = sign(x);
	float4 sign_x = _618;
	float4 _620 = abs(x);
	float4 _622 = float4(4.70470011e-01, 4.70470011e-01, 4.70470011e-01, 4.70470011e-01) * _620;
	float4 _624 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + _622;
	float4 _626 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _624;
	float4 t = _626;
	float4 _629 = t * float4(7.47855604e-01, 7.47855604e-01, 7.47855604e-01, 7.47855604e-01);
	float4 _631 = float4(-9.58798006e-02, -9.58798006e-02, -9.58798006e-02, -9.58798006e-02) + _629;
	float4 _632 = t * _631;
	float4 _634 = float4(3.48024189e-01, 3.48024189e-01, 3.48024189e-01, 3.48024189e-01) + _632;
	float4 _635 = t * _634;
	float4 _636 = x * x;
	float4 _637 = -_636;
	float4 _638 = exp(_637);
	float4 _639 = _635 * _638;
	float4 _641 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _639;
	float4 result = _641;
	float4 _643 = result * sign_x;
	return _643;
}
float3 F__erf6(
	in float3 x)
{
	float3 _647 = sign(x);
	float3 sign_x_648 = _647;
	float3 _649 = abs(x);
	float3 _651 = float3(4.70470011e-01, 4.70470011e-01, 4.70470011e-01) * _649;
	float3 _653 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + _651;
	float3 _655 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _653;
	float3 t_656 = _655;
	float3 _658 = t_656 * float3(7.47855604e-01, 7.47855604e-01, 7.47855604e-01);
	float3 _660 = float3(-9.58798006e-02, -9.58798006e-02, -9.58798006e-02) + _658;
	float3 _661 = t_656 * _660;
	float3 _663 = float3(3.48024189e-01, 3.48024189e-01, 3.48024189e-01) + _661;
	float3 _664 = t_656 * _663;
	float3 _665 = x * x;
	float3 _666 = -_665;
	float3 _667 = exp(_666);
	float3 _668 = _664 * _667;
	float3 _670 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _668;
	float3 result_671 = _670;
	float3 _672 = result_671 * sign_x_648;
	return _672;
}
float2 F__erf6(
	in float2 x)
{
	float2 _676 = sign(x);
	float2 sign_x_677 = _676;
	float2 _678 = abs(x);
	float2 _680 = float2(4.70470011e-01, 4.70470011e-01) * _678;
	float2 _682 = float2(1.00000000e+00, 1.00000000e+00) + _680;
	float2 _684 = float2(1.00000000e+00, 1.00000000e+00) / _682;
	float2 t_685 = _684;
	float2 _687 = t_685 * float2(7.47855604e-01, 7.47855604e-01);
	float2 _689 = float2(-9.58798006e-02, -9.58798006e-02) + _687;
	float2 _690 = t_685 * _689;
	float2 _692 = float2(3.48024189e-01, 3.48024189e-01) + _690;
	float2 _693 = t_685 * _692;
	float2 _694 = x * x;
	float2 _695 = -_694;
	float2 _696 = exp(_695);
	float2 _697 = _693 * _696;
	float2 _699 = float2(1.00000000e+00, 1.00000000e+00) - _697;
	float2 result_700 = _699;
	float2 _701 = result_700 * sign_x_677;
	return _701;
}
float F__erf6(
	in float x)
{
	float _705 = sign(x);
	float sign_x_706 = _705;
	float _707 = abs(x);
	float _709 = 4.70470011e-01 * _707;
	float _711 = 1.00000000e+00 + _709;
	float _713 = 1.00000000e+00 / _711;
	float t_714 = _713;
	float _716 = t_714 * 7.47855604e-01;
	float _718 = -9.58798006e-02 + _716;
	float _719 = t_714 * _718;
	float _721 = 3.48024189e-01 + _719;
	float _722 = t_714 * _721;
	float _723 = x * x;
	float _724 = -_723;
	float _725 = exp(_724);
	float _726 = _722 * _725;
	float _728 = 1.00000000e+00 - _726;
	float result_729 = _728;
	float _730 = result_729 * sign_x_706;
	return _730;
}
float4 F__erft(
	in float4 x)
{
	float4 _735 = float4(1.20276058e+00, 1.20276058e+00, 1.20276058e+00, 1.20276058e+00) * x;
	float4 _736 = tanh(_735);
	return _736;
}
float3 F__erft(
	in float3 x)
{
	float3 _741 = float3(1.20276058e+00, 1.20276058e+00, 1.20276058e+00) * x;
	float3 _742 = tanh(_741);
	return _742;
}
float2 F__erft(
	in float2 x)
{
	float2 _747 = float2(1.20276058e+00, 1.20276058e+00) * x;
	float2 _748 = tanh(_747);
	return _748;
}
float F__erft(
	in float x)
{
	float _753 = 1.20276058e+00 * x;
	float _754 = tanh(_753);
	return _754;
}
float4 F__erf(
	in float4 x)
{
	float4 _758;
	_758 = x;
	float4 _759 = F__erf6(_758);
	return _759;
}
float3 F__erf(
	in float3 x)
{
	float3 _763;
	_763 = x;
	float3 _764 = F__erf6(_763);
	return _764;
}
float2 F__erf(
	in float2 x)
{
	float2 _768;
	_768 = x;
	float2 _769 = F__erf6(_768);
	return _769;
}
float F__erf(
	in float x)
{
	float _773;
	_773 = x;
	float _774 = F__erf6(_773);
	return _774;
}
float4 F__gamma_impl(
	in float4 s,
	in float4 s_inv)
{
	float4 _780 = s + float4(5.00000000e-01, 5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float4 sph = _780;
	float4 _783 = s + float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 _785 = float4(4.80835468e-01, 4.80835468e-01, 4.80835468e-01, 4.80835468e-01) / _783;
	float4 _787 = float4(8.10911953e-01, 8.10911953e-01, 8.10911953e-01, 8.10911953e-01) + _785;
	float4 lanczos_sum = _787;
	float4 _790 = sph + float4(1.12906826e+00, 1.12906826e+00, 1.12906826e+00, 1.12906826e+00);
	float4 _792 = _790 / float4(2.71828175e+00, 2.71828175e+00, 2.71828175e+00, 2.71828175e+00);
	float4 base = _792;
	float4 _794 = pow(base, sph);
	float4 _795 = _794 * lanczos_sum;
	float4 _796 = _795 * s_inv;
	return _796;
}
float3 F__gamma_impl(
	in float3 s,
	in float3 s_inv)
{
	float3 _802 = s + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 sph_803 = _802;
	float3 _805 = s + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _807 = float3(4.80835468e-01, 4.80835468e-01, 4.80835468e-01) / _805;
	float3 _809 = float3(8.10911953e-01, 8.10911953e-01, 8.10911953e-01) + _807;
	float3 lanczos_sum_810 = _809;
	float3 _812 = sph_803 + float3(1.12906826e+00, 1.12906826e+00, 1.12906826e+00);
	float3 _814 = _812 / float3(2.71828175e+00, 2.71828175e+00, 2.71828175e+00);
	float3 base_815 = _814;
	float3 _816 = pow(base_815, sph_803);
	float3 _817 = _816 * lanczos_sum_810;
	float3 _818 = _817 * s_inv;
	return _818;
}
float2 F__gamma_impl(
	in float2 s,
	in float2 s_inv)
{
	float2 _824 = s + float2(5.00000000e-01, 5.00000000e-01);
	float2 sph_825 = _824;
	float2 _827 = s + float2(1.00000000e+00, 1.00000000e+00);
	float2 _829 = float2(4.80835468e-01, 4.80835468e-01) / _827;
	float2 _831 = float2(8.10911953e-01, 8.10911953e-01) + _829;
	float2 lanczos_sum_832 = _831;
	float2 _834 = sph_825 + float2(1.12906826e+00, 1.12906826e+00);
	float2 _836 = _834 / float2(2.71828175e+00, 2.71828175e+00);
	float2 base_837 = _836;
	float2 _838 = pow(base_837, sph_825);
	float2 _839 = _838 * lanczos_sum_832;
	float2 _840 = _839 * s_inv;
	return _840;
}
float F__gamma_impl(
	in float s,
	in float s_inv)
{
	float _846 = s + 5.00000000e-01;
	float sph_847 = _846;
	float _849 = s + 1.00000000e+00;
	float _851 = 4.80835468e-01 / _849;
	float _853 = 8.10911953e-01 + _851;
	float lanczos_sum_854 = _853;
	float _856 = sph_847 + 1.12906826e+00;
	float _858 = _856 / 2.71828175e+00;
	float base_859 = _858;
	float _860 = pow(base_859, sph_847);
	float _861 = _860 * lanczos_sum_854;
	float _862 = _861 * s_inv;
	return _862;
}
float4 F__gamma(
	in float4 s)
{
	float4 _867 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float4 _868;
	float4 _869;
	_868 = s;
	_869 = _867;
	float4 _870 = F__gamma_impl(_868, _869);
	return _870;
}
float3 F__gamma(
	in float3 s)
{
	float3 _875 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float3 _876;
	float3 _877;
	_876 = s;
	_877 = _875;
	float3 _878 = F__gamma_impl(_876, _877);
	return _878;
}
float2 F__gamma(
	in float2 s)
{
	float2 _883 = float2(1.00000000e+00, 1.00000000e+00) / s;
	float2 _884;
	float2 _885;
	_884 = s;
	_885 = _883;
	float2 _886 = F__gamma_impl(_884, _885);
	return _886;
}
float F__gamma(
	in float s)
{
	float _891 = 1.00000000e+00 / s;
	float _892;
	float _893;
	_892 = s;
	_893 = _891;
	float _894 = F__gamma_impl(_892, _893);
	return _894;
}
float4 F__ligamma_small_z_impl(
	in float4 s,
	in float4 z,
	in float4 s_inv)
{
	float4 _900 = pow(z, s);
	float4 scale = _900;
	float4 sum = s_inv;
	float4 _903 = z * z;
	float4 z_sq = _903;
	float4 _906 = s + float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 denom1 = _906;
	float4 _909 = float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float4 _911 = _909 + float4(4.00000000e+00, 4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float4 denom2 = _911;
	float4 _914 = float4(6.00000000e+00, 6.00000000e+00, 6.00000000e+00, 6.00000000e+00) * s;
	float4 _916 = _914 + float4(1.80000000e+01, 1.80000000e+01, 1.80000000e+01, 1.80000000e+01);
	float4 denom3 = _916;
	float4 _918 = z / denom1;
	float4 _919 = sum - _918;
	sum = _919;
	float4 _920 = z_sq / denom2;
	float4 _921 = sum + _920;
	sum = _921;
	float4 _922 = z * z_sq;
	float4 _923 = _922 / denom3;
	float4 _924 = sum - _923;
	sum = _924;
	float4 _925 = scale * sum;
	return _925;
}
float3 F__ligamma_small_z_impl(
	in float3 s,
	in float3 z,
	in float3 s_inv)
{
	float3 _931 = pow(z, s);
	float3 scale_932 = _931;
	float3 sum_933 = s_inv;
	float3 _934 = z * z;
	float3 z_sq_935 = _934;
	float3 _937 = s + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 denom1_938 = _937;
	float3 _940 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float3 _942 = _940 + float3(4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float3 denom2_943 = _942;
	float3 _945 = float3(6.00000000e+00, 6.00000000e+00, 6.00000000e+00) * s;
	float3 _947 = _945 + float3(1.80000000e+01, 1.80000000e+01, 1.80000000e+01);
	float3 denom3_948 = _947;
	float3 _949 = z / denom1_938;
	float3 _950 = sum_933 - _949;
	sum_933 = _950;
	float3 _951 = z_sq_935 / denom2_943;
	float3 _952 = sum_933 + _951;
	sum_933 = _952;
	float3 _953 = z * z_sq_935;
	float3 _954 = _953 / denom3_948;
	float3 _955 = sum_933 - _954;
	sum_933 = _955;
	float3 _956 = scale_932 * sum_933;
	return _956;
}
float2 F__ligamma_small_z_impl(
	in float2 s,
	in float2 z,
	in float2 s_inv)
{
	float2 _962 = pow(z, s);
	float2 scale_963 = _962;
	float2 sum_964 = s_inv;
	float2 _965 = z * z;
	float2 z_sq_966 = _965;
	float2 _968 = s + float2(1.00000000e+00, 1.00000000e+00);
	float2 denom1_969 = _968;
	float2 _971 = float2(2.00000000e+00, 2.00000000e+00) * s;
	float2 _973 = _971 + float2(4.00000000e+00, 4.00000000e+00);
	float2 denom2_974 = _973;
	float2 _976 = float2(6.00000000e+00, 6.00000000e+00) * s;
	float2 _978 = _976 + float2(1.80000000e+01, 1.80000000e+01);
	float2 denom3_979 = _978;
	float2 _980 = z / denom1_969;
	float2 _981 = sum_964 - _980;
	sum_964 = _981;
	float2 _982 = z_sq_966 / denom2_974;
	float2 _983 = sum_964 + _982;
	sum_964 = _983;
	float2 _984 = z * z_sq_966;
	float2 _985 = _984 / denom3_979;
	float2 _986 = sum_964 - _985;
	sum_964 = _986;
	float2 _987 = scale_963 * sum_964;
	return _987;
}
float F__ligamma_small_z_impl(
	in float s,
	in float z,
	in float s_inv)
{
	float _993 = pow(z, s);
	float scale_994 = _993;
	float sum_995 = s_inv;
	float _996 = z * z;
	float z_sq_997 = _996;
	float _999 = s + 1.00000000e+00;
	float denom1_1000 = _999;
	float _1002 = 2.00000000e+00 * s;
	float _1004 = _1002 + 4.00000000e+00;
	float denom2_1005 = _1004;
	float _1007 = 6.00000000e+00 * s;
	float _1009 = _1007 + 1.80000000e+01;
	float denom3_1010 = _1009;
	float _1011 = z / denom1_1000;
	float _1012 = sum_995 - _1011;
	sum_995 = _1012;
	float _1013 = z_sq_997 / denom2_1005;
	float _1014 = sum_995 + _1013;
	sum_995 = _1014;
	float _1015 = z * z_sq_997;
	float _1016 = _1015 / denom3_1010;
	float _1017 = sum_995 - _1016;
	sum_995 = _1017;
	float _1018 = scale_994 * sum_995;
	return _1018;
}
float4 F__uigamma_large_z_impl(
	in float4 s,
	in float4 z)
{
	float4 _1023 = pow(z, s);
	float4 _1024 = -z;
	float4 _1025 = exp(_1024);
	float4 _1026 = _1023 * _1025;
	float4 numerator = _1026;
	float4 _1029 = float4(7.00000000e+00, 7.00000000e+00, 7.00000000e+00, 7.00000000e+00) + z;
	float4 _1030 = _1029 - s;
	float4 denom = _1030;
	float4 _1033 = float4(5.00000000e+00, 5.00000000e+00, 5.00000000e+00, 5.00000000e+00) + z;
	float4 _1034 = _1033 - s;
	float4 _1036 = float4(3.00000000e+00, 3.00000000e+00, 3.00000000e+00, 3.00000000e+00) * s;
	float4 _1038 = _1036 - float4(9.00000000e+00, 9.00000000e+00, 9.00000000e+00, 9.00000000e+00);
	float4 _1039 = _1038 / denom;
	float4 _1040 = _1034 + _1039;
	denom = _1040;
	float4 _1042 = float4(3.00000000e+00, 3.00000000e+00, 3.00000000e+00, 3.00000000e+00) + z;
	float4 _1043 = _1042 - s;
	float4 _1045 = float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float4 _1047 = _1045 - float4(4.00000000e+00, 4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float4 _1048 = _1047 / denom;
	float4 _1049 = _1043 + _1048;
	denom = _1049;
	float4 _1051 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + z;
	float4 _1052 = _1051 - s;
	float4 _1054 = s - float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 _1055 = _1054 / denom;
	float4 _1056 = _1052 + _1055;
	denom = _1056;
	float4 _1057 = numerator / denom;
	return _1057;
}
float3 F__uigamma_large_z_impl(
	in float3 s,
	in float3 z)
{
	float3 _1062 = pow(z, s);
	float3 _1063 = -z;
	float3 _1064 = exp(_1063);
	float3 _1065 = _1062 * _1064;
	float3 numerator_1066 = _1065;
	float3 _1068 = float3(7.00000000e+00, 7.00000000e+00, 7.00000000e+00) + z;
	float3 _1069 = _1068 - s;
	float3 denom_1070 = _1069;
	float3 _1072 = float3(5.00000000e+00, 5.00000000e+00, 5.00000000e+00) + z;
	float3 _1073 = _1072 - s;
	float3 _1075 = float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00) * s;
	float3 _1077 = _1075 - float3(9.00000000e+00, 9.00000000e+00, 9.00000000e+00);
	float3 _1078 = _1077 / denom_1070;
	float3 _1079 = _1073 + _1078;
	denom_1070 = _1079;
	float3 _1081 = float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00) + z;
	float3 _1082 = _1081 - s;
	float3 _1084 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float3 _1086 = _1084 - float3(4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float3 _1087 = _1086 / denom_1070;
	float3 _1088 = _1082 + _1087;
	denom_1070 = _1088;
	float3 _1090 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + z;
	float3 _1091 = _1090 - s;
	float3 _1093 = s - float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _1094 = _1093 / denom_1070;
	float3 _1095 = _1091 + _1094;
	denom_1070 = _1095;
	float3 _1096 = numerator_1066 / denom_1070;
	return _1096;
}
float2 F__uigamma_large_z_impl(
	in float2 s,
	in float2 z)
{
	float2 _1101 = pow(z, s);
	float2 _1102 = -z;
	float2 _1103 = exp(_1102);
	float2 _1104 = _1101 * _1103;
	float2 numerator_1105 = _1104;
	float2 _1107 = float2(7.00000000e+00, 7.00000000e+00) + z;
	float2 _1108 = _1107 - s;
	float2 denom_1109 = _1108;
	float2 _1111 = float2(5.00000000e+00, 5.00000000e+00) + z;
	float2 _1112 = _1111 - s;
	float2 _1114 = float2(3.00000000e+00, 3.00000000e+00) * s;
	float2 _1116 = _1114 - float2(9.00000000e+00, 9.00000000e+00);
	float2 _1117 = _1116 / denom_1109;
	float2 _1118 = _1112 + _1117;
	denom_1109 = _1118;
	float2 _1120 = float2(3.00000000e+00, 3.00000000e+00) + z;
	float2 _1121 = _1120 - s;
	float2 _1123 = float2(2.00000000e+00, 2.00000000e+00) * s;
	float2 _1125 = _1123 - float2(4.00000000e+00, 4.00000000e+00);
	float2 _1126 = _1125 / denom_1109;
	float2 _1127 = _1121 + _1126;
	denom_1109 = _1127;
	float2 _1129 = float2(1.00000000e+00, 1.00000000e+00) + z;
	float2 _1130 = _1129 - s;
	float2 _1132 = s - float2(1.00000000e+00, 1.00000000e+00);
	float2 _1133 = _1132 / denom_1109;
	float2 _1134 = _1130 + _1133;
	denom_1109 = _1134;
	float2 _1135 = numerator_1105 / denom_1109;
	return _1135;
}
float F__uigamma_large_z_impl(
	in float s,
	in float z)
{
	float _1140 = pow(z, s);
	float _1141 = -z;
	float _1142 = exp(_1141);
	float _1143 = _1140 * _1142;
	float numerator_1144 = _1143;
	float _1146 = 7.00000000e+00 + z;
	float _1147 = _1146 - s;
	float denom_1148 = _1147;
	float _1150 = 5.00000000e+00 + z;
	float _1151 = _1150 - s;
	float _1153 = 3.00000000e+00 * s;
	float _1155 = _1153 - 9.00000000e+00;
	float _1156 = _1155 / denom_1148;
	float _1157 = _1151 + _1156;
	denom_1148 = _1157;
	float _1159 = 3.00000000e+00 + z;
	float _1160 = _1159 - s;
	float _1162 = 2.00000000e+00 * s;
	float _1164 = _1162 - 4.00000000e+00;
	float _1165 = _1164 / denom_1148;
	float _1166 = _1160 + _1165;
	denom_1148 = _1166;
	float _1168 = 1.00000000e+00 + z;
	float _1169 = _1168 - s;
	float _1171 = s - 1.00000000e+00;
	float _1172 = _1171 / denom_1148;
	float _1173 = _1169 + _1172;
	denom_1148 = _1173;
	float _1174 = numerator_1144 / denom_1148;
	return _1174;
}
float4 F__normalized_ligamma_impl(
	in float4 s,
	in float4 z,
	in float4 s_inv,
	in float4 gamma_s_inv)
{
	int4 z_is_large = int4(0, 0, 0, 0);
	bool _1185 = z.x > 7.75075018e-01;
	z_is_large[0] = ((int)_1185);
	bool _1189 = z.y > 7.75075018e-01;
	z_is_large[1] = ((int)_1189);
	bool _1193 = z.z > 7.75075018e-01;
	z_is_large[2] = ((int)_1193);
	bool _1197 = z.w > 7.75075018e-01;
	z_is_large[3] = ((int)_1197);
	float4 _1199;
	float4 _1200;
	_1199 = s;
	_1200 = z;
	float4 _1201 = F__uigamma_large_z_impl(_1199, _1200);
	float4 _1202 = _1201 * gamma_s_inv;
	float4 _1204 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _1202;
	float4 large_z = _1204;
	float4 _1206;
	float4 _1207;
	float4 _1208;
	_1206 = s;
	_1207 = z;
	_1208 = s_inv;
	float4 _1209 = F__ligamma_small_z_impl(_1206, _1207, _1208);
	float4 _1210 = _1209 * gamma_s_inv;
	float4 small_z = _1210;
	int4 _1212 = ~z_is_large;
	float4 _1214 = saturate(((float4)_1212));
	int4 inverse_z_is_large = ((int4)_1214);
	float4 _1218 = large_z * ((float4)z_is_large);
	float4 _1220 = small_z * ((float4)inverse_z_is_large);
	float4 _1221 = _1218 + _1220;
	return _1221;
}
float3 F__normalized_ligamma_impl(
	in float3 s,
	in float3 z,
	in float3 s_inv,
	in float3 gamma_s_inv)
{
	int3 z_is_large_1229 = int3(0, 0, 0);
	bool _1232 = z.x > 7.75075018e-01;
	z_is_large_1229[0] = ((int)_1232);
	bool _1236 = z.y > 7.75075018e-01;
	z_is_large_1229[1] = ((int)_1236);
	bool _1240 = z.z > 7.75075018e-01;
	z_is_large_1229[2] = ((int)_1240);
	float3 _1242;
	float3 _1243;
	_1242 = s;
	_1243 = z;
	float3 _1244 = F__uigamma_large_z_impl(_1242, _1243);
	float3 _1245 = _1244 * gamma_s_inv;
	float3 _1247 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _1245;
	float3 large_z_1248 = _1247;
	float3 _1249;
	float3 _1250;
	float3 _1251;
	_1249 = s;
	_1250 = z;
	_1251 = s_inv;
	float3 _1252 = F__ligamma_small_z_impl(_1249, _1250, _1251);
	float3 _1253 = _1252 * gamma_s_inv;
	float3 small_z_1254 = _1253;
	int3 _1255 = ~z_is_large_1229;
	float3 _1257 = saturate(((float3)_1255));
	int3 inverse_z_is_large_1259 = ((int3)_1257);
	float3 _1261 = large_z_1248 * ((float3)z_is_large_1229);
	float3 _1263 = small_z_1254 * ((float3)inverse_z_is_large_1259);
	float3 _1264 = _1261 + _1263;
	return _1264;
}
float2 F__normalized_ligamma_impl(
	in float2 s,
	in float2 z,
	in float2 s_inv,
	in float2 gamma_s_inv)
{
	int2 z_is_large_1272 = int2(0, 0);
	bool _1275 = z.x > 7.75075018e-01;
	z_is_large_1272[0] = ((int)_1275);
	bool _1279 = z.y > 7.75075018e-01;
	z_is_large_1272[1] = ((int)_1279);
	float2 _1281;
	float2 _1282;
	_1281 = s;
	_1282 = z;
	float2 _1283 = F__uigamma_large_z_impl(_1281, _1282);
	float2 _1284 = _1283 * gamma_s_inv;
	float2 _1286 = float2(1.00000000e+00, 1.00000000e+00) - _1284;
	float2 large_z_1287 = _1286;
	float2 _1288;
	float2 _1289;
	float2 _1290;
	_1288 = s;
	_1289 = z;
	_1290 = s_inv;
	float2 _1291 = F__ligamma_small_z_impl(_1288, _1289, _1290);
	float2 _1292 = _1291 * gamma_s_inv;
	float2 small_z_1293 = _1292;
	int2 _1294 = ~z_is_large_1272;
	float2 _1296 = saturate(((float2)_1294));
	int2 inverse_z_is_large_1298 = ((int2)_1296);
	float2 _1300 = large_z_1287 * ((float2)z_is_large_1272);
	float2 _1302 = small_z_1293 * ((float2)inverse_z_is_large_1298);
	float2 _1303 = _1300 + _1302;
	return _1303;
}
float F__normalized_ligamma_impl(
	in float s,
	in float z,
	in float s_inv,
	in float gamma_s_inv)
{
	bool _1311 = z > 7.75075018e-01;
	bool z_is_large_1312 = _1311;
	float _1313;
	float _1314;
	_1313 = s;
	_1314 = z;
	float _1315 = F__uigamma_large_z_impl(_1313, _1314);
	float _1316 = _1315 * gamma_s_inv;
	float _1318 = 1.00000000e+00 - _1316;
	float large_z_1319 = _1318;
	float _1320;
	float _1321;
	float _1322;
	_1320 = s;
	_1321 = z;
	_1322 = s_inv;
	float _1323 = F__ligamma_small_z_impl(_1320, _1321, _1322);
	float _1324 = _1323 * gamma_s_inv;
	float small_z_1325 = _1324;
	float _1327 = large_z_1319 * ((float)z_is_large_1312);
	bool _1328 = !z_is_large_1312;
	float _1330 = small_z_1325 * ((float)_1328);
	float _1331 = _1327 + _1330;
	return _1331;
}
float4 F__normalized_ligamma(
	in float4 s,
	in float4 z)
{
	float4 _1337 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float4 s_inv_1338 = _1337;
	float4 _1339;
	float4 _1340;
	_1339 = s;
	_1340 = s_inv_1338;
	float4 _1341 = F__gamma_impl(_1339, _1340);
	float4 _1343 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _1341;
	float4 gamma_s_inv_1344 = _1343;
	float4 _1345;
	float4 _1346;
	float4 _1347;
	float4 _1348;
	_1345 = s;
	_1346 = z;
	_1347 = s_inv_1338;
	_1348 = gamma_s_inv_1344;
	float4 _1349 = F__normalized_ligamma_impl(_1345, _1346, _1347, _1348);
	return _1349;
}
float3 F__normalized_ligamma(
	in float3 s,
	in float3 z)
{
	float3 _1355 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float3 s_inv_1356 = _1355;
	float3 _1357;
	float3 _1358;
	_1357 = s;
	_1358 = s_inv_1356;
	float3 _1359 = F__gamma_impl(_1357, _1358);
	float3 _1361 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _1359;
	float3 gamma_s_inv_1362 = _1361;
	float3 _1363;
	float3 _1364;
	float3 _1365;
	float3 _1366;
	_1363 = s;
	_1364 = z;
	_1365 = s_inv_1356;
	_1366 = gamma_s_inv_1362;
	float3 _1367 = F__normalized_ligamma_impl(_1363, _1364, _1365, _1366);
	return _1367;
}
float2 F__normalized_ligamma(
	in float2 s,
	in float2 z)
{
	float2 _1373 = float2(1.00000000e+00, 1.00000000e+00) / s;
	float2 s_inv_1374 = _1373;
	float2 _1375;
	float2 _1376;
	_1375 = s;
	_1376 = s_inv_1374;
	float2 _1377 = F__gamma_impl(_1375, _1376);
	float2 _1379 = float2(1.00000000e+00, 1.00000000e+00) / _1377;
	float2 gamma_s_inv_1380 = _1379;
	float2 _1381;
	float2 _1382;
	float2 _1383;
	float2 _1384;
	_1381 = s;
	_1382 = z;
	_1383 = s_inv_1374;
	_1384 = gamma_s_inv_1380;
	float2 _1385 = F__normalized_ligamma_impl(_1381, _1382, _1383, _1384);
	return _1385;
}
float F__normalized_ligamma(
	in float s,
	in float z)
{
	float _1391 = 1.00000000e+00 / s;
	float s_inv_1392 = _1391;
	float _1393;
	float _1394;
	_1393 = s;
	_1394 = s_inv_1392;
	float _1395 = F__gamma_impl(_1393, _1394);
	float _1397 = 1.00000000e+00 / _1395;
	float gamma_s_inv_1398 = _1397;
	float _1399;
	float _1400;
	float _1401;
	float _1402;
	_1399 = s;
	_1400 = z;
	_1401 = s_inv_1392;
	_1402 = gamma_s_inv_1398;
	float _1403 = F__normalized_ligamma_impl(_1399, _1400, _1401, _1402);
	return _1403;
}
float2 F__round_coord(
	in float2 c,
	in float2 starting_position,
	in float2 bin_size)
{
	float2 _1409 = c - starting_position;
	float2 adj_c = _1409;
	float2 _1411 = adj_c / bin_size;
	float2 _1412 = frac(_1411);
	float2 _1413 = _1412 * bin_size;
	float2 _1414 = c - _1413;
	float2 _1416 = bin_size * float2(5.00000000e-01, 5.00000000e-01);
	float2 _1417 = _1414 + _1416;
	return _1417;
}
S__InterpolationFieldData F__precalc_interpolation_field_data(
	in float2 texcoord)
{
	S__InterpolationFieldData data = (S__InterpolationFieldData)0;
	data.triangle_wave_freq = 2.00000000e+00;
	float _1427 = 2.00000000e+00 * data.triangle_wave_freq;
	float _1428 = rcp(_1427);
	float _1430 = texcoord.y + _1428;
	float _1433 = data.triangle_wave_freq * 5.00000000e-01;
	float _1434 = _1430 * _1433;
	float _1435 = frac(_1434);
	float _1437 = 2.00000000e+00 * _1435;
	float _1439 = 1.00000000e+00 - _1437;
	float _1440 = abs(_1439);
	float _1442 = _1440 * 2.00000000e+00;
	float _1444 = _1442 - 1.00000000e+00;
	float field_wave = _1444;
	bool _1447 = field_wave >= 0.00000000e+00;
	data.scanline_parity = _1447;
	return data;
}
S__InterpolationFieldData F__calc_interpolation_field_data(
	in float2 texcoord,
	in float scale)
{
	S__InterpolationFieldData data_1453 = (S__InterpolationFieldData)0;
	float _1455 = rcp(((float)V__scanline_thickness));
	float _1456 = scale * _1455;
	data_1453.triangle_wave_freq = _1456;
	uint _1458 = V__frame_count % 2u;
	bool _1460 = _1458 == 1u;
	bool _1462 = V__scanline_deinterlacing_mode != 1u;
	bool _1463 = _1460 && _1462;
	bool frame_count_parity = _1463;
	bool _1465 = !V__interlace_back_field_first;
	bool _1466 = frame_count_parity && _1465;
	bool _1467 = !frame_count_parity;
	bool _1468 = _1467 && V__interlace_back_field_first;
	bool _1469 = _1466 || _1468;
	data_1453.field_parity = _1469;
	float _1472 = 2.00000000e+00 * data_1453.triangle_wave_freq;
	float _1473 = rcp(_1472);
	float _1475 = texcoord.y + _1473;
	float _1478 = data_1453.triangle_wave_freq * 5.00000000e-01;
	float _1479 = _1475 * _1478;
	float _1480 = frac(_1479);
	float _1482 = 2.00000000e+00 * _1480;
	float _1484 = 1.00000000e+00 - _1482;
	float _1485 = abs(_1484);
	float _1487 = _1485 * 2.00000000e+00;
	float _1489 = _1487 - 1.00000000e+00;
	float field_wave_1490 = _1489;
	bool _1492 = field_wave_1490 >= 0.00000000e+00;
	data_1453.scanline_parity = _1492;
	bool _1494 = !data_1453.field_parity;
	bool _1496 = data_1453.scanline_parity && _1494;
	bool _1498 = !data_1453.scanline_parity;
	bool _1500 = _1498 && data_1453.field_parity;
	bool _1501 = _1496 || _1500;
	bool wrong_field_raw = _1501;
	bool _1503 = V__enable_interlacing && wrong_field_raw;
	data_1453.wrong_field = _1503;
	return data_1453;
}
float F__get_gaussian_sigma(
	in float color,
	in float sigma_range)
{
	if (true)
	{
		float _1512 = pow(color, V__gaussian_beam_spot_power);
		float _1513 = sigma_range * _1512;
		float _1514 = V__gaussian_beam_min_sigma + _1513;
		return _1514;
	}
	else
	{
		float _1516 = color - 1.00000000e+00;
		float color_minus_1 = _1516;
		float _1518 = color_minus_1 * color_minus_1;
		float _1520 = 1.00000000e+00 - _1518;
		float _1521 = sqrt(_1520);
		float _1522 = sigma_range * _1521;
		float _1523 = V__gaussian_beam_min_sigma + _1522;
		return _1523;
	}
}
float F__get_generalized_gaussian_beta(
	in float color,
	in float shape_range)
{
	float _1528 = pow(color, V__gaussian_beam_shape_power);
	float _1529 = shape_range * _1528;
	float _1530 = V__gaussian_beam_min_shape + _1529;
	return _1530;
}
float3 F__get_raw_interpolated_color(
	in float3 color0,
	in float3 color1,
	in float3 color2,
	in float3 color3,
	in float4 weights)
{
	float4x3 _1550 = float4x3(color0.x, color0.y, color0.z, color1.x, color1.y, color1.z, color2.x, color2.y, color2.z, color3.x, color3.y, color3.z);
	float4x3 mtrx = _1550;
	float3 _1552 = mul(weights, mtrx);
	float3 m = _1552;
	float3 _1555 = max(m, float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00));
	return _1555;
}
float3 F__get_interpolated_linear_color(
	in float3 color0,
	in float3 color1,
	in float3 color2,
	in float3 color3,
	in float4 weights)
{
	float _1563 = F__get_intermediate_gamma();
	float intermediate_gamma = _1563;
	float _1566 = 1.00000000e+00 / intermediate_gamma;
	float inv_intermediate_gamma = _1566;
	float3 _1568;
	float3 _1569;
	float3 _1570;
	float3 _1571;
	float4 _1572;
	_1568 = color0;
	_1569 = color1;
	_1570 = color2;
	_1571 = color3;
	_1572 = weights;
	float3 _1573 = F__get_raw_interpolated_color(_1568, _1569, _1570, _1571, _1572);
	float3 linear_mixed_color = _1573;
	float3 _1576 = pow(color0, inv_intermediate_gamma.xxx);
	float3 _1578 = pow(color1, inv_intermediate_gamma.xxx);
	float3 _1580 = pow(color2, inv_intermediate_gamma.xxx);
	float3 _1582 = pow(color3, inv_intermediate_gamma.xxx);
	float3 _1583;
	float3 _1584;
	float3 _1585;
	float3 _1586;
	float4 _1587;
	_1583 = _1576;
	_1584 = _1578;
	_1585 = _1580;
	_1586 = _1582;
	_1587 = weights;
	float3 _1588 = F__get_raw_interpolated_color(_1583, _1584, _1585, _1586, _1587);
	float3 gamma_mixed_color = _1588;
	float3 _1591 = lerp(gamma_mixed_color, linear_mixed_color, V__beam_horiz_linear_rgb_weight.xxx);
	return _1591;
}
float3 F__get_scanline_color(
	in __sampler2D_float4 tex,
	in float2 scanline_uv,
	in float2 uv_step_x,
	in float4 weights)
{
	float _1598 = F__get_input_gamma();
	float2 _1599;
	float _1600;
	_1599 = scanline_uv;
	_1600 = _1598;
	float4 _1601 = F__tex2D_linearize(tex, _1599, _1600);
	float3 color1_1603 = _1601.xyz;
	float2 _1604 = scanline_uv + uv_step_x;
	float _1605 = F__get_input_gamma();
	float2 _1606;
	float _1607;
	_1606 = _1604;
	_1607 = _1605;
	float4 _1608 = F__tex2D_linearize(tex, _1606, _1607);
	float3 color2_1610 = _1608.xyz;
	float3 color0_1612 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 color3_1614 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _1620 = ((float)V__beam_horiz_filter) > 5.00000000e-01;
	if (_1620)
	{
		float2 _1621 = scanline_uv - uv_step_x;
		float _1622 = F__get_input_gamma();
		float2 _1623;
		float _1624;
		_1623 = _1621;
		_1624 = _1622;
		float4 _1625 = F__tex2D_linearize(tex, _1623, _1624);
		color0_1612 = _1625.xyz;
		float2 _1628 = float2(2.00000000e+00, 2.00000000e+00) * uv_step_x;
		float2 _1629 = scanline_uv + _1628;
		float _1630 = F__get_input_gamma();
		float2 _1631;
		float _1632;
		_1631 = _1629;
		_1632 = _1630;
		float4 _1633 = F__tex2D_linearize(tex, _1631, _1632);
		color3_1614 = _1633.xyz;
	}
	float3 _1635;
	float3 _1636;
	float3 _1637;
	float3 _1638;
	float4 _1639;
	_1635 = color0_1612;
	_1636 = color1_1603;
	_1637 = color2_1610;
	_1638 = color3_1614;
	_1639 = weights;
	float3 _1640 = F__get_interpolated_linear_color(_1635, _1636, _1637, _1638, _1639);
	return _1640;
}
float3 F__sample_single_scanline_horizontal(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 tex_size,
	in float2 texture_size_inv)
{
	float2 _1647 = tex_uv * tex_size;
	float2 curr_texel = _1647;
	float2 _1650 = curr_texel - float2(4.99500006e-01, 4.99500006e-01);
	float2 _1651 = floor(_1650);
	float2 _1653 = _1651 + float2(5.00000000e-01, 5.00000000e-01);
	float2 prev_texel = _1653;
	float2 _1657 = float2(prev_texel.x, curr_texel.y);
	float2 prev_texel_hor = _1657;
	float2 _1659 = prev_texel_hor * texture_size_inv;
	float2 prev_texel_hor_uv = _1659;
	float _1663 = curr_texel.x - prev_texel_hor.x;
	float prev_dist = _1663;
	float _1666 = 1.00000000e+00 + prev_dist;
	float _1668 = 1.00000000e+00 - prev_dist;
	float _1670 = 2.00000000e+00 - prev_dist;
	float4 _1671 = float4(_1666, prev_dist, _1668, _1670);
	float4 sample_dists = _1671;
	float4 weights_1674 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _1680 = ((float)V__beam_horiz_filter) < 5.00000000e-01;
	if (_1680)
	{
		weights_1674 = float4(0.00000000e+00, 1.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	}
	else
	{
		bool _1687 = ((float)V__beam_horiz_filter) < 1.50000000e+00;
		if (_1687)
		{
			float x_1689 = sample_dists.y;
			float _1690 = x_1689 * x_1689;
			float _1691 = _1690 * x_1689;
			float _1693 = x_1689 * 6.00000000e+00;
			float _1695 = _1693 - 1.50000000e+01;
			float _1696 = x_1689 * _1695;
			float _1698 = _1696 + 1.00000000e+01;
			float _1699 = _1691 * _1698;
			float w2 = _1699;
			float _1702 = 1.00000000e+00 - w2;
			float4 _1705 = float4(0.00000000e+00, _1702, w2, 0.00000000e+00);
			weights_1674 = _1705;
		}
		else
		{
			bool _1711 = ((float)V__beam_horiz_filter) < 2.50000000e+00;
			if (_1711)
			{
				float _1713 = 2.00000000e+00 * V__beam_horiz_sigma;
				float _1714 = _1713 * V__beam_horiz_sigma;
				float _1716 = 1.00000000e+00 / _1714;
				float inner_denom_inv = _1716;
				float4 _1718 = sample_dists * sample_dists;
				float4 _1719 = -_1718;
				float4 _1721 = _1719 * inner_denom_inv.xxxx;
				float4 _1722 = exp(_1721);
				weights_1674 = _1722;
			}
			else
			{
				float4 _1724 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				float4 _1726 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1728 = _1726 != float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1730 = -((int)_1728.x);
				float4 _1732 = _1724 * ((float4)_1730.xxxx);
				float4 _1734 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1736 = _1734 > float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1738 = -((int)_1736.x);
				float4 _1740 = _1732 * ((float4)_1738.xxxx);
				float4 _1742 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				float4 _1744 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1746 = _1744 != float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1748 = -((int)_1746.x);
				float4 _1750 = _1742 * ((float4)_1748.xxxx);
				float4 _1752 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1754 = _1752 > float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1756 = -((int)_1754.x);
				float4 _1758 = _1750 * ((float4)_1756.xxxx);
				bool4 _1760 = _1758 >= float4(1.52587891e-05, 1.52587891e-05, 1.52587891e-05, 1.52587891e-05);
				float4 _1762 = _1740 * ((float4)((int)_1760.x).xxxx);
				float4 _1764 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				float4 _1766 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1768 = _1766 != float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1770 = -((int)_1768.x);
				float4 _1772 = _1764 * ((float4)_1770.xxxx);
				float4 _1774 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1776 = _1774 > float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1778 = -((int)_1776.x);
				float4 _1780 = _1772 * ((float4)_1778.xxxx);
				bool4 _1782 = _1780 < float4(1.52587891e-05, 1.52587891e-05, 1.52587891e-05, 1.52587891e-05);
				float _1785 = 1.52587891e-05 * ((float)((int)_1782.x));
				float4 _1787 = _1762 + _1785.xxxx;
				float4 pi_dists = _1787;
				float4 _1789 = sin(pi_dists);
				float4 _1791 = float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _1789;
				float4 _1793 = pi_dists * float4(5.00000000e-01, 5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
				float4 _1794 = sin(_1793);
				float4 _1795 = _1791 * _1794;
				float4 _1796 = pi_dists * pi_dists;
				float4 _1797 = _1795 / _1796;
				weights_1674 = _1797;
			}
		}
	}
	float _1799 = dot(weights_1674, float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float4 _1801 = weights_1674 / _1799.xxxx;
	float4 final_weights = _1801;
	float2 _1805 = float2(texture_size_inv.x, 0.00000000e+00);
	float2 uv_step_x_1806 = _1805;
	float2 _1807;
	float2 _1808;
	float4 _1809;
	_1807 = prev_texel_hor_uv;
	_1808 = uv_step_x_1806;
	_1809 = final_weights;
	float3 _1810 = F__get_scanline_color(tex, _1807, _1808, _1809);
	return _1810;
}
float3 F__sample_rgb_scanline(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 tex_size,
	in float2 texture_size_inv)
{
	if (true)
	{
		float3 _1821 = F__get_convergence_offsets_x_vector();
		float3 convergence_offsets_rgb_x = _1821;
		float3 _1823 = F__get_convergence_offsets_y_vector();
		float3 convergence_offsets_rgb_y = _1823;
		float3 _1826 = convergence_offsets_rgb_x * texture_size_inv.x.xxx;
		float3 offset_u_rgb = _1826;
		float3 _1829 = convergence_offsets_rgb_y * texture_size_inv.y.xxx;
		float3 offset_v_rgb = _1829;
		float2 _1833 = float2(offset_u_rgb.x, offset_v_rgb.x);
		float2 _1834 = tex_uv - _1833;
		float2 scanline_uv_r = _1834;
		float2 _1838 = float2(offset_u_rgb.y, offset_v_rgb.y);
		float2 _1839 = tex_uv - _1838;
		float2 scanline_uv_g = _1839;
		float2 _1843 = float2(offset_u_rgb.z, offset_v_rgb.z);
		float2 _1844 = tex_uv - _1843;
		float2 scanline_uv_b = _1844;
		float4 _1846 = tex.t.Sample(tex.s, scanline_uv_r);
		float4 sample_r = _1846;
		float4 _1848 = tex.t.Sample(tex.s, scanline_uv_g);
		float4 sample_g = _1848;
		float4 _1850 = tex.t.Sample(tex.s, scanline_uv_b);
		float4 sample_b = _1850;
		float3 _1855 = float3(sample_r.x, sample_g.y, sample_b.z);
		return _1855;
	}
	else
	{
		float2 _1856;
		float2 _1857;
		float2 _1858;
		_1856 = tex_uv;
		_1857 = tex_size;
		_1858 = texture_size_inv;
		float3 _1859 = F__sample_single_scanline_horizontal(tex, _1856, _1857, _1858);
		return _1859;
	}
}
float3 F__sample_rgb_scanline_horizontal(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 tex_size,
	in float2 texture_size_inv)
{
	if (true)
	{
		float3 _1870 = F__get_convergence_offsets_x_vector();
		float3 convergence_offsets_rgb = _1870;
		float3 _1873 = convergence_offsets_rgb * texture_size_inv.xxx;
		float3 offset_u_rgb_1874 = _1873;
		float2 _1877 = float2(offset_u_rgb_1874.x, 0.00000000e+00);
		float2 _1878 = tex_uv - _1877;
		float2 scanline_uv_r_1879 = _1878;
		float2 _1882 = float2(offset_u_rgb_1874.y, 0.00000000e+00);
		float2 _1883 = tex_uv - _1882;
		float2 scanline_uv_g_1884 = _1883;
		float2 _1887 = float2(offset_u_rgb_1874.z, 0.00000000e+00);
		float2 _1888 = tex_uv - _1887;
		float2 scanline_uv_b_1889 = _1888;
		float2 _1890;
		float2 _1891;
		float2 _1892;
		_1890 = scanline_uv_r_1879;
		_1891 = tex_size;
		_1892 = texture_size_inv;
		float3 _1893 = F__sample_single_scanline_horizontal(tex, _1890, _1891, _1892);
		float3 sample_r_1894 = _1893;
		float2 _1895;
		float2 _1896;
		float2 _1897;
		_1895 = scanline_uv_g_1884;
		_1896 = tex_size;
		_1897 = texture_size_inv;
		float3 _1898 = F__sample_single_scanline_horizontal(tex, _1895, _1896, _1897);
		float3 sample_g_1899 = _1898;
		float2 _1900;
		float2 _1901;
		float2 _1902;
		_1900 = scanline_uv_b_1889;
		_1901 = tex_size;
		_1902 = texture_size_inv;
		float3 _1903 = F__sample_single_scanline_horizontal(tex, _1900, _1901, _1902);
		float3 sample_b_1904 = _1903;
		float3 _1908 = float3(sample_r_1894.x, sample_g_1899.y, sample_b_1904.z);
		return _1908;
	}
	else
	{
		float2 _1909;
		float2 _1910;
		float2 _1911;
		_1909 = tex_uv;
		_1910 = tex_size;
		_1911 = texture_size_inv;
		float3 _1912 = F__sample_single_scanline_horizontal(tex, _1909, _1910, _1911);
		return _1912;
	}
}
float3 F__get_averaged_scanline_sample(
	in __sampler2D_float4 tex,
	in float2 texcoord,
	in float scanline_start_y,
	in float v_step_y,
	in float input_gamma)
{
	float3 interpolated_line = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	int i_1923 = 0;
	while (((uint)i_1923) < V__scanline_thickness)
	{
		{
			float _1935 = ((float)i_1923) * v_step_y;
			float _1936 = scanline_start_y + _1935;
			float4 _1940 = float4(texcoord.x, _1936, 0.00000000e+00, 0.00000000e+00);
			float4 coord_1941 = _1940;
			float4 _1942;
			float _1943;
			_1942 = coord_1941;
			_1943 = input_gamma;
			float4 _1944 = F__tex2Dlod_linearize(tex, _1942, _1943);
			float3 _1946 = interpolated_line + _1944.xyz;
			interpolated_line = _1946;
		}
		int _1932 = i_1923;
		int _1933 = _1932 + 1;
		i_1923 = _1933;
	}
	float3 _1948 = interpolated_line / ((float)V__scanline_thickness).xxx;
	interpolated_line = _1948;
	return interpolated_line;
}
float F__get_beam_strength(
	in float dist,
	in float color,
	in float sigma_range,
	in float shape_range)
{
	float _1955;
	float _1956;
	_1955 = color;
	_1956 = sigma_range;
	float _1957 = F__get_gaussian_sigma(_1955, _1956);
	float sigma = _1957;
	float _1960 = 1.00000000e+00 / sigma;
	float sigma_inv = _1960;
	float _1963 = 5.00000000e-01 * sigma_inv;
	float _1964 = _1963 * sigma_inv;
	float inner_denom_inv_1965 = _1964;
	float _1967 = sqrt(6.28318548e+00);
	float _1968 = sigma_inv / _1967;
	float outer_denom_inv = _1968;
	float _1970 = dist * dist;
	float _1971 = -_1970;
	float _1972 = _1971 * inner_denom_inv_1965;
	float _1973 = exp(_1972);
	float _1974 = color * _1973;
	float _1975 = _1974 * outer_denom_inv;
	return _1975;
}
float F__get_gaussian_beam_strength(
	in float dist,
	in float color,
	in float sigma_range,
	in float shape_range)
{
	float _1983 = sqrt(2.00000000e+00);
	float _1984;
	float _1985;
	_1984 = color;
	_1985 = sigma_range;
	float _1986 = F__get_gaussian_sigma(_1984, _1985);
	float _1987 = _1983 * _1986;
	float alpha = _1987;
	float _1989;
	float _1990;
	_1989 = color;
	_1990 = shape_range;
	float _1991 = F__get_generalized_gaussian_beta(_1989, _1990);
	float beta = _1991;
	float _1994 = 1.00000000e+00 / alpha;
	float alpha_inv = _1994;
	float _1997 = 1.00000000e+00 / beta;
	float beta_inv = _1997;
	float _1999 = color * beta;
	float _2001 = _1999 * 5.00000000e-01;
	float _2002 = _2001 * alpha_inv;
	float _2003;
	float _2004;
	_2003 = beta_inv;
	_2004 = beta;
	float _2005 = F__gamma_impl(_2003, _2004);
	float _2006 = _2002 / _2005;
	float scale_2007 = _2006;
	float _2008 = dist * alpha_inv;
	float _2009 = abs(_2008);
	float _2010 = pow(_2009, beta);
	float _2011 = -_2010;
	float _2012 = exp(_2011);
	float _2013 = scale_2007 * _2012;
	return _2013;
}
float F__get_linear_beam_strength(
	in float dist,
	in float color,
	in float num_pixels,
	in bool interlaced)
{
	float _2020 = abs(dist);
	float _2022 = 1.00000000e+00 - _2020;
	float _2023 = color * _2022;
	float p = _2023;
	float _2026 = clamp(p, 0.00000000e+00, color);
	return _2026;
}
void F__calculateBeamDistsVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	uint _2033 = V__frame_count % 60u;
	bool _2035 = _2033 == 0u;
	bool _2037 = V__overlay_active > 0;
	bool _2038 = _2035 || _2037;
	float compute_mask_factor = ((float)_2038);
	bool _2042 = id == 2u;
	float _2044 = compute_mask_factor * 2.00000000e+00;
	float _2046 = _2042 ? _2044 : 0.00000000e+00;
	texcoord[0] = _2046;
	bool _2048 = id == 1u;
	float _2051 = _2048 ? 2.00000000e+00 : 0.00000000e+00;
	texcoord[1] = _2051;
	float2 _2053 = texcoord * float2(2.00000000e+00, -2.00000000e+00);
	float2 _2055 = _2053 + float2(-1.00000000e+00, 1.00000000e+00);
	float4 _2060 = float4(_2055.x, _2055.y, 0.00000000e+00, 1.00000000e+00);
	position = _2060;
	return;
}
void F__calculateBeamDistsPS(
	in float4 position : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 beam_strength : SV_TARGET)
{
	float2 _2066;
	_2066 = texcoord;
	S__InterpolationFieldData _2067 = F__precalc_interpolation_field_data(_2066);
	S__InterpolationFieldData interpolation_data = _2067;
	float _2071 = texcoord.x - 9.76562500e-04;
	float color_corrected = _2071;
	bool _2077 = V__beam_shape_mode == 0u;
	[branch] if (_2077)
	{
		bool _2079 = V__scanline_deinterlacing_mode != 2u;
		bool _2080 = V__enable_interlacing && _2079;
		bool _2082 = V__scanline_deinterlacing_mode != 3u;
		bool _2083 = _2080 && _2082;
		float _2086 = 1.00000000e+00 + ((float)_2083);
		float interlacing_brightness_factor = _2086;
		int _2090 = ((int)interpolation_data.scanline_parity) * ((int)V__enable_interlacing);
		int _2092 = 1 - _2090;
		float _2094 = ((float)_2092) * interlacing_brightness_factor;
		float _2096 = _2094 * 5.00000000e-01;
		float raw_beam_strength = _2096;
		float _2098 = color_corrected * raw_beam_strength;
		float4 _2102 = float4(_2098, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
		beam_strength = _2102;
	}
	else
	{
		bool _2107 = V__beam_shape_mode == 1u;
		if (_2107)
		{
			float _2110 = texcoord.y * interpolation_data.triangle_wave_freq;
			float _2111 = frac(_2110);
			float _2113 = 2.00000000e+00 * _2111;
			float _2115 = 1.00000000e+00 - _2113;
			float _2116 = abs(_2115);
			float beam_dist_y = _2116;
			bool _2119 = V__scanline_thickness > 1u;
			bool scanline_is_wider_than_1 = _2119;
			bool _2122 = V__scanline_deinterlacing_mode != 2u;
			bool _2123 = V__enable_interlacing && _2122;
			bool _2125 = V__scanline_deinterlacing_mode != 3u;
			bool _2126 = _2123 && _2125;
			bool deinterlacing_mode_requires_boost = _2126;
			int _2130 = 1 + ((int)scanline_is_wider_than_1);
			int _2133 = 1 + ((int)deinterlacing_mode_requires_boost);
			int _2134 = _2130 * _2133;
			float interlacing_brightness_factor_2136 = ((float)_2134);
			float _2137 = -beam_dist_y;
			float _2138 = rcp(V__linear_beam_thickness);
			float _2139 = _2137 * _2138;
			float _2141 = _2139 + 1.00000000e+00;
			float _2142 = saturate(_2141);
			float raw_beam_strength_2143 = _2142;
			int _2146 = ((int)interpolation_data.scanline_parity) * ((int)V__enable_interlacing);
			int _2148 = 1 - _2146;
			float _2150 = raw_beam_strength_2143 * ((float)_2148);
			float _2151 = _2150 * interlacing_brightness_factor_2136;
			float _2153 = _2151 * 5.00000000e-01;
			float adj_beam_strength = _2153;
			float _2155 = color_corrected * adj_beam_strength;
			float4 _2159 = float4(_2155, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
			beam_strength = _2159;
		}
		else
		{
			bool _2164 = V__beam_shape_mode == 2u;
			if (_2164)
			{
				float _2165 = max(V__gaussian_beam_max_sigma, V__gaussian_beam_min_sigma);
				float _2166 = _2165 - V__gaussian_beam_min_sigma;
				float sigma_range_2167 = _2166;
				float _2168 = max(V__gaussian_beam_max_shape, V__gaussian_beam_min_shape);
				float _2169 = _2168 - V__gaussian_beam_min_shape;
				float shape_range_2170 = _2169;
				float _2173 = 1.00000000e+00 + ((float)V__enable_interlacing);
				float beam_dist_factor = _2173;
				float _2175 = rcp(beam_dist_factor);
				float _2177 = interpolation_data.triangle_wave_freq * _2175;
				float freq_adj = _2177;
				bool _2180 = !interpolation_data.field_parity;
				float _2183 = ((float)_2180) * 5.00000000e-01;
				float _2185 = _2183 + 2.50000000e-01;
				float _2187 = ((float)V__enable_interlacing) * _2185;
				float _2188 = rcp(freq_adj);
				float _2189 = _2187 * _2188;
				float frame_offset = _2189;
				float _2192 = texcoord.y - frame_offset;
				float _2193 = _2192 * freq_adj;
				float _2194 = frac(_2193);
				float _2196 = 2.00000000e+00 * _2194;
				float _2198 = 1.00000000e+00 - _2196;
				float _2199 = abs(_2198);
				float _2200 = rcp(V__linear_beam_thickness);
				float _2201 = _2199 * _2200;
				float beam_dist_y_2202 = _2201;
				bool _2203 = !V__enable_interlacing;
				bool _2205 = V__scanline_thickness > 1u;
				bool _2206 = _2203 && _2205;
				float _2209 = 1.00000000e+00 + ((float)_2206);
				bool _2211 = V__scanline_deinterlacing_mode != 2u;
				bool _2212 = V__enable_interlacing && _2211;
				bool _2214 = V__scanline_deinterlacing_mode != 3u;
				bool _2215 = _2212 && _2214;
				float _2217 = _2209 + ((float)_2215);
				float interlacing_brightness_factor_2218 = _2217;
				float _2219;
				float _2220;
				float _2221;
				float _2222;
				_2219 = beam_dist_y_2202;
				_2220 = color_corrected;
				_2221 = sigma_range_2167;
				_2222 = shape_range_2170;
				float _2223 = F__get_gaussian_beam_strength(_2219, _2220, _2221, _2222);
				float _2224 = _2223 * interlacing_brightness_factor_2218;
				float _2226 = _2224 * 5.00000000e-01;
				float raw_beam_strength_2227 = _2226;
				float4 _2231 = float4(raw_beam_strength_2227, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
				beam_strength = _2231;
			}
			else
			{
				float _2232 = max(V__gaussian_beam_max_sigma, V__gaussian_beam_min_sigma);
				float _2233 = _2232 - V__gaussian_beam_min_sigma;
				float sigma_range_2234 = _2233;
				float _2235 = max(V__gaussian_beam_max_shape, V__gaussian_beam_min_shape);
				float _2236 = _2235 - V__gaussian_beam_min_shape;
				float shape_range_2237 = _2236;
				float _2240 = 1.00000000e+00 + ((float)V__enable_interlacing);
				float beam_dist_factor_2241 = _2240;
				float _2242 = rcp(beam_dist_factor_2241);
				float _2244 = interpolation_data.triangle_wave_freq * _2242;
				float freq_adj_2245 = _2244;
				bool _2247 = !interpolation_data.field_parity;
				float _2250 = ((float)_2247) * 5.00000000e-01;
				float _2252 = _2250 + 2.50000000e-01;
				float _2254 = ((float)V__enable_interlacing) * _2252;
				float _2255 = rcp(freq_adj_2245);
				float _2256 = _2254 * _2255;
				float frame_offset_2257 = _2256;
				float _2259 = texcoord.y - frame_offset_2257;
				float _2260 = _2259 * freq_adj_2245;
				float _2261 = frac(_2260);
				float _2263 = 2.00000000e+00 * _2261;
				float _2265 = 1.00000000e+00 - _2263;
				float _2266 = abs(_2265);
				float _2267 = rcp(V__linear_beam_thickness);
				float _2268 = _2266 * _2267;
				float curr_beam_dist_y = _2268;
				float _2271 = texcoord.y - frame_offset_2257;
				float _2272 = _2271 * freq_adj_2245;
				float _2273 = frac(_2272);
				float _2275 = _2273 * 2.00000000e+00;
				float _2277 = _2275 + 1.00000000e+00;
				float _2278 = rcp(V__linear_beam_thickness);
				float _2279 = _2277 * _2278;
				float upper_beam_dist_y = _2279;
				float _2281 = rcp(V__linear_beam_thickness);
				float _2283 = 4.00000000e+00 * _2281;
				float _2284 = _2283 - upper_beam_dist_y;
				float lower_beam_dist_y = _2284;
				float _2286;
				float _2287;
				float _2288;
				float _2289;
				_2286 = upper_beam_dist_y;
				_2287 = color_corrected;
				_2288 = sigma_range_2234;
				_2289 = shape_range_2237;
				float _2290 = F__get_gaussian_beam_strength(_2286, _2287, _2288, _2289);
				float upper_beam_strength = _2290;
				float _2292;
				float _2293;
				float _2294;
				float _2295;
				_2292 = curr_beam_dist_y;
				_2293 = color_corrected;
				_2294 = sigma_range_2234;
				_2295 = shape_range_2237;
				float _2296 = F__get_gaussian_beam_strength(_2292, _2293, _2294, _2295);
				float curr_beam_strength = _2296;
				float _2298;
				float _2299;
				float _2300;
				float _2301;
				_2298 = lower_beam_dist_y;
				_2299 = color_corrected;
				_2300 = sigma_range_2234;
				_2301 = shape_range_2237;
				float _2302 = F__get_gaussian_beam_strength(_2298, _2299, _2300, _2301);
				float lower_beam_strength = _2302;
				bool _2304 = !V__enable_interlacing;
				bool _2306 = V__scanline_thickness > 1u;
				bool _2307 = _2304 && _2306;
				float _2310 = 1.00000000e+00 + ((float)_2307);
				bool _2312 = V__scanline_deinterlacing_mode != 2u;
				bool _2313 = V__enable_interlacing && _2312;
				bool _2315 = V__scanline_deinterlacing_mode != 3u;
				bool _2316 = _2313 && _2315;
				float _2318 = _2310 + ((float)_2316);
				float interlacing_brightness_factor_2319 = _2318;
				float3 _2320 = float3(curr_beam_strength, upper_beam_strength, lower_beam_strength);
				float3 _2322 = _2320 * interlacing_brightness_factor_2319.xxx;
				float3 _2324 = _2322 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
				float3 raw_beam_strength_2325 = _2324;
				float4 _2330 = float4(raw_beam_strength_2325.x, raw_beam_strength_2325.y, raw_beam_strength_2325.z, 1.00000000e+00);
				beam_strength = _2330;
			}
		}
	}
	return;
}
void F__simulateEletronBeamsVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float4 runtime_bin_shapes : TEXCOORD1)
{
	uint _2337;
	float4 _2338;
	float2 _2339;
	_2337 = id;
	F__contentCropVS(_2337, _2338, _2339);
	position = _2338;
	texcoord = _2339;
	bool _2342 = V__geom_rotation_mode == 0u;
	bool _2344 = V__geom_rotation_mode == 2u;
	bool _2345 = _2342 || _2344;
	bool screen_is_landscape = _2345;
	float2 _2348 = rcp(float2(1.92000000e+03, 1.08000000e+03));
	float2 runtime_pixel_size = _2348;
	float2 _2352 = float2(((float)V__scanline_thickness), 1.00000000e+00);
	float2 _2355 = float2(1.00000000e+00, ((float)V__scanline_thickness));
	float2 _2357 = lerp(_2352, _2355, ((float2)screen_is_landscape.xx));
	float2 _2359 = rcp(float2(1.92000000e+03, 1.08000000e+03));
	float2 _2360 = _2357 * _2359;
	float2 runtime_scanline_shape = _2360;
	float4 _2366 = float4(runtime_pixel_size.x, runtime_pixel_size.y, runtime_scanline_shape.x, runtime_scanline_shape.y);
	runtime_bin_shapes = _2366;
	return;
}
void F__simulateEletronBeamsPS(
	in float4 position : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float4 runtime_bin_shapes : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	bool _2374 = V__geom_rotation_mode == 0u;
	bool _2376 = V__geom_rotation_mode == 2u;
	bool _2377 = _2374 || _2376;
	bool screen_is_landscape_2378 = _2377;
	float2 _2381 = lerp(texcoord.yx, texcoord, ((float2)screen_is_landscape_2378.xx));
	float2 rotated_coord = _2381;
	float _2386 = lerp(1.92000000e+03, 1.08000000e+03, ((float)screen_is_landscape_2378));
	float scale_2387 = _2386;
	float2 _2388;
	float _2389;
	_2388 = rotated_coord;
	_2389 = scale_2387;
	S__InterpolationFieldData _2390 = F__calc_interpolation_field_data(_2388, _2389);
	S__InterpolationFieldData interpolation_data_2391 = _2390;
	float _2394 = rotated_coord.y * interpolation_data_2391.triangle_wave_freq;
	float _2396 = _2394 + ((float)interpolation_data_2391.field_parity);
	float _2398 = _2396 * 5.00000000e-01;
	float ypos = _2398;
	float2 _2400;
	float2 _2401;
	float2 _2402;
	_2400 = texcoord;
	_2401 = float2(0.00000000e+00, 0.00000000e+00);
	_2402 = runtime_bin_shapes.zw;
	float2 _2405 = F__round_coord(_2400, _2401, _2402);
	float2 texcoord_scanlined = _2405;
	bool _2411 = interpolation_data_2391.wrong_field && screen_is_landscape_2378;
	[branch] if (_2411)
	{
		bool _2414 = texcoord_scanlined.y <= texcoord.y;
		float coord_moved_up = ((float)_2414);
		float _2419 = lerp(-1.00000000e+00, 1.00000000e+00, coord_moved_up);
		float direction = _2419;
		float _2422 = direction * ((float)V__scanline_thickness);
		float _2424 = rcp(1.08000000e+03);
		float _2425 = _2422 * _2424;
		float _2427 = texcoord_scanlined.y + _2425;
		texcoord_scanlined[1] = _2427;
	}
	else
	{
		if (interpolation_data_2391.wrong_field)
		{
			bool _2434 = texcoord_scanlined.x <= texcoord.x;
			float coord_moved_up_2436 = ((float)_2434);
			float _2439 = lerp(-1.00000000e+00, 1.00000000e+00, coord_moved_up_2436);
			float direction_2440 = _2439;
			float _2442 = direction_2440 * ((float)V__scanline_thickness);
			float _2444 = rcp(1.92000000e+03);
			float _2445 = _2442 * _2444;
			float _2447 = texcoord_scanlined.x + _2445;
			texcoord_scanlined[0] = _2447;
		}
	}
	float2 texcoord_pixellated = texcoord_scanlined;
	float2 texcoord_uncropped_2449 = texcoord_pixellated;
	bool _2454 = V__beam_shape_mode < 3u;
	[branch] if (_2454)
	{
		float _2455 = F__get_input_gamma();
		float2 _2456;
		float _2457;
		_2456 = texcoord_uncropped_2449;
		_2457 = _2455;
		float4 _2458 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2456, _2457);
		float4 scanline_color = _2458;
		float2 _2461 = float2(scanline_color.x, ypos);
		float2 _2462;
		_2462 = _2461;
		float4 _2463 = F__tex2D_nograd(V__samplerBeamDist, _2462);
		float beam_strength_r = _2463.x;
		float2 _2467 = float2(scanline_color.y, ypos);
		float2 _2468;
		_2468 = _2467;
		float4 _2469 = F__tex2D_nograd(V__samplerBeamDist, _2468);
		float beam_strength_g = _2469.x;
		float2 _2473 = float2(scanline_color.z, ypos);
		float2 _2474;
		_2474 = _2473;
		float4 _2475 = F__tex2D_nograd(V__samplerBeamDist, _2474);
		float beam_strength_b = _2475.x;
		float4 _2479 = float4(beam_strength_r, beam_strength_g, beam_strength_b, 1.00000000e+00);
		float4 beam_strength_2480 = _2479;
		color = beam_strength_2480;
	}
	else
	{
		float2 _2483 = float2(0.00000000e+00, ((float)V__scanline_thickness));
		int _2486 = 1 + ((int)V__enable_interlacing);
		float2 _2488 = _2483 * ((float2)_2486.xx);
		float2 _2490 = rcp(float2(1.92000000e+03, 1.08000000e+03));
		float2 _2491 = _2488 * _2490;
		float2 offset = _2491;
		float _2493 = F__get_input_gamma();
		float2 _2494;
		float _2495;
		_2494 = texcoord_uncropped_2449;
		_2495 = _2493;
		float4 _2496 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2494, _2495);
		float4 curr_scanline_color = _2496;
		float2 _2498 = texcoord_uncropped_2449 - offset;
		float _2499 = F__get_input_gamma();
		float2 _2500;
		float _2501;
		_2500 = _2498;
		_2501 = _2499;
		float4 _2502 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2500, _2501);
		float4 upper_scanline_color = _2502;
		float2 _2504 = texcoord_uncropped_2449 + offset;
		float _2505 = F__get_input_gamma();
		float2 _2506;
		float _2507;
		_2506 = _2504;
		_2507 = _2505;
		float4 _2508 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2506, _2507);
		float4 lower_scanline_color = _2508;
		float2 _2511 = float2(curr_scanline_color.x, ypos);
		float2 _2512;
		_2512 = _2511;
		float4 _2513 = F__tex2D_nograd(V__samplerBeamDist, _2512);
		float curr_beam_strength_r = _2513.x;
		float2 _2517 = float2(curr_scanline_color.y, ypos);
		float2 _2518;
		_2518 = _2517;
		float4 _2519 = F__tex2D_nograd(V__samplerBeamDist, _2518);
		float curr_beam_strength_g = _2519.x;
		float2 _2523 = float2(curr_scanline_color.z, ypos);
		float2 _2524;
		_2524 = _2523;
		float4 _2525 = F__tex2D_nograd(V__samplerBeamDist, _2524);
		float curr_beam_strength_b = _2525.x;
		float2 _2529 = float2(upper_scanline_color.x, ypos);
		float2 _2530;
		_2530 = _2529;
		float4 _2531 = F__tex2D_nograd(V__samplerBeamDist, _2530);
		float upper_beam_strength_r = _2531.y;
		float2 _2535 = float2(upper_scanline_color.y, ypos);
		float2 _2536;
		_2536 = _2535;
		float4 _2537 = F__tex2D_nograd(V__samplerBeamDist, _2536);
		float upper_beam_strength_g = _2537.y;
		float2 _2541 = float2(upper_scanline_color.z, ypos);
		float2 _2542;
		_2542 = _2541;
		float4 _2543 = F__tex2D_nograd(V__samplerBeamDist, _2542);
		float upper_beam_strength_b = _2543.y;
		float2 _2547 = float2(lower_scanline_color.x, ypos);
		float2 _2548;
		_2548 = _2547;
		float4 _2549 = F__tex2D_nograd(V__samplerBeamDist, _2548);
		float lower_beam_strength_r = _2549.z;
		float2 _2553 = float2(lower_scanline_color.y, ypos);
		float2 _2554;
		_2554 = _2553;
		float4 _2555 = F__tex2D_nograd(V__samplerBeamDist, _2554);
		float lower_beam_strength_g = _2555.z;
		float2 _2559 = float2(lower_scanline_color.z, ypos);
		float2 _2560;
		_2560 = _2559;
		float4 _2561 = F__tex2D_nograd(V__samplerBeamDist, _2560);
		float lower_beam_strength_b = _2561.z;
		float _2564 = curr_beam_strength_r + upper_beam_strength_r;
		float _2565 = _2564 + lower_beam_strength_r;
		float _2566 = curr_beam_strength_g + upper_beam_strength_g;
		float _2567 = _2566 + lower_beam_strength_g;
		float _2568 = curr_beam_strength_b + upper_beam_strength_b;
		float _2569 = _2568 + lower_beam_strength_b;
		float4 _2571 = float4(_2565, _2567, _2569, 1.00000000e+00);
		color = _2571;
	}
	return;
}
void F__beamConvergenceVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float run_convergence : TEXCOORD1)
{
	uint _2578;
	float4 _2579;
	float2 _2580;
	_2578 = id;
	F__PostProcessVS(_2578, _2579, _2580);
	position = _2579;
	texcoord = _2580;
	bool3 _2583 = V__convergence_offset_x != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	uint3 x_flag = ((uint3)_2583);
	bool3 _2587 = V__convergence_offset_y != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	uint3 y_flag = ((uint3)_2587);
	float _2592 = dot(((float3)x_flag), float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _2595 = dot(((float3)y_flag), float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _2596 = _2592 + _2595;
	run_convergence = _2596;
	return;
}
void F__beamConvergencePS(
	in float4 position : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float run_convergence : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	bool _2607 = !((bool)run_convergence);
	if (_2607)
	{
		float _2609 = rcp(1.08000000e+03);
		float _2610 = V__scanline_offset * _2609;
		float2 _2612 = float2(0.00000000e+00, _2610);
		float2 _2613 = texcoord - _2612;
		float4 _2614 = V__samplerElectronBeams.t.Sample(V__samplerElectronBeams.s, _2613);
		color = _2614;
	}
	else
	{
		float _2616 = rcp(1.08000000e+03);
		float _2617 = V__scanline_offset * _2616;
		float2 _2619 = float2(0.00000000e+00, _2617);
		float2 _2620 = texcoord - _2619;
		float2 _2622 = rcp(float2(1.92000000e+03, 1.08000000e+03));
		float2 _2623;
		float2 _2624;
		float2 _2625;
		_2623 = _2620;
		_2624 = float2(1.92000000e+03, 1.08000000e+03);
		_2625 = _2622;
		float3 _2627 = F__sample_rgb_scanline(V__samplerElectronBeams, _2623, _2624, _2625);
		float3 offset_sample = _2627;
		float4 _2633 = float4(offset_sample.x, offset_sample.y, offset_sample.z, 1.00000000e+00);
		color = _2633;
	}
	return;
}
float4 F__get_quad_vector_naive(
	in float4 output_pixel_num_wrt_uvxy)
{
	float4 _2638 = output_pixel_num_wrt_uvxy * float4(5.00000000e-01, 5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float4 _2639 = frac(_2638);
	float4 _2641 = _2639 * float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
	float4 pixel_odd = _2641;
	float4 _2644 = pixel_odd * float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
	float4 _2646 = _2644 - float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 quad_vector = _2646;
	return quad_vector;
}
float4 F__get_quad_vector(
	in float4 output_pixel_num_wrt_uvxy)
{
	float4 _2651;
	_2651 = output_pixel_num_wrt_uvxy;
	float4 _2652 = F__get_quad_vector_naive(_2651);
	float4 quad_vector_guess = _2652;
	float _2655 = ddx(quad_vector_guess.z);
	float _2657 = ddy(quad_vector_guess.w);
	float2 _2658 = float2(_2655, _2657);
	float2 _2660 = float2(5.00000000e-01, 5.00000000e-01) * _2658;
	float2 odd_start_mirror = _2660;
	float4 _2663 = quad_vector_guess * odd_start_mirror.xyxy;
	return _2663;
}
float4 F__get_quad_vector(
	in float2 output_pixel_num_wrt_uv)
{
	float _2668 = ddx(output_pixel_num_wrt_uv.x);
	float _2670 = ddy(output_pixel_num_wrt_uv.y);
	float2 _2671 = float2(_2668, _2670);
	float2 screen_uv_mirror = _2671;
	float2 _2674 = output_pixel_num_wrt_uv * float2(5.00000000e-01, 5.00000000e-01);
	float2 _2675 = frac(_2674);
	float2 _2677 = _2675 * float2(2.00000000e+00, 2.00000000e+00);
	float2 pixel_odd_wrt_uv = _2677;
	float2 _2680 = pixel_odd_wrt_uv - float2(5.00000000e-01, 5.00000000e-01);
	float2 _2682 = _2680 * float2(2.00000000e+00, 2.00000000e+00);
	float2 quad_vector_uv_guess = _2682;
	float2 _2684 = quad_vector_uv_guess * screen_uv_mirror;
	float2 quad_vector_screen_guess = _2684;
	float _2687 = ddx(quad_vector_screen_guess.x);
	float _2689 = ddy(quad_vector_screen_guess.y);
	float2 _2690 = float2(_2687, _2689);
	float2 _2692 = float2(5.00000000e-01, 5.00000000e-01) * _2690;
	float2 odd_start_mirror_2693 = _2692;
	float4 _2698 = float4(quad_vector_uv_guess.x, quad_vector_uv_guess.y, quad_vector_screen_guess.x, quad_vector_screen_guess.y);
	float4 quad_vector_guess_2699 = _2698;
	float4 _2701 = quad_vector_guess_2699 * odd_start_mirror_2693.xyxy;
	return _2701;
}
void F__quad_gather(
	in float4 quad_vector,
	in float4 curr,
	out float4 adjx,
	out float4 adjy,
	out float4 diag)
{
	float4 _2709 = ddx(curr);
	float4 _2711 = _2709 * quad_vector.z.xxxx;
	float4 _2712 = curr - _2711;
	adjx = _2712;
	float4 _2713 = ddy(curr);
	float4 _2715 = _2713 * quad_vector.w.xxxx;
	float4 _2716 = curr - _2715;
	adjy = _2716;
	float4 _2717 = ddy(adjx);
	float4 _2719 = _2717 * quad_vector.w.xxxx;
	float4 _2720 = adjx - _2719;
	diag = _2720;
	return;
}
void F__quad_gather(
	in float4 quad_vector,
	in float3 curr,
	out float3 adjx,
	out float3 adjy,
	out float3 diag)
{
	float3 _2728 = ddx(curr);
	float3 _2730 = _2728 * quad_vector.z.xxx;
	float3 _2731 = curr - _2730;
	adjx = _2731;
	float3 _2732 = ddy(curr);
	float3 _2734 = _2732 * quad_vector.w.xxx;
	float3 _2735 = curr - _2734;
	adjy = _2735;
	float3 _2736 = ddy(adjx);
	float3 _2738 = _2736 * quad_vector.w.xxx;
	float3 _2739 = adjx - _2738;
	diag = _2739;
	return;
}
void F__quad_gather(
	in float4 quad_vector,
	in float2 curr,
	out float2 adjx,
	out float2 adjy,
	out float2 diag)
{
	float2 _2747 = ddx(curr);
	float2 _2749 = _2747 * quad_vector.z.xx;
	float2 _2750 = curr - _2749;
	adjx = _2750;
	float2 _2751 = ddy(curr);
	float2 _2753 = _2751 * quad_vector.w.xx;
	float2 _2754 = curr - _2753;
	adjy = _2754;
	float2 _2755 = ddy(adjx);
	float2 _2757 = _2755 * quad_vector.w.xx;
	float2 _2758 = adjx - _2757;
	diag = _2758;
	return;
}
float4 F__quad_gather(
	in float4 quad_vector,
	in float curr)
{
	float4 _2763 = float4(curr, curr, curr, curr);
	float4 all = _2763;
	float _2766 = ddx(all.x);
	float _2768 = _2766 * quad_vector.z;
	float _2770 = all.x - _2768;
	all[1] = _2770;
	float2 _2772 = ddy(all.xy);
	float2 _2774 = _2772 * quad_vector.w.xx;
	float2 _2776 = all.xy - _2774;
	all.zw = _2776;
	return all;
}
float4 F__quad_gather_sum(
	in float4 quad_vector,
	in float4 curr)
{
	float4 adjx_2782 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 adjy_2784 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 diag_2786 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _2787;
	float4 _2788;
	float4 _2789;
	float4 _2790;
	float4 _2791;
	_2787 = quad_vector;
	_2788 = curr;
	F__quad_gather(_2787, _2788, _2789, _2790, _2791);
	adjx_2782 = _2789;
	adjy_2784 = _2790;
	diag_2786 = _2791;
	float4 _2793 = curr + adjx_2782;
	float4 _2794 = _2793 + adjy_2784;
	float4 _2795 = _2794 + diag_2786;
	return _2795;
}
float3 F__quad_gather_sum(
	in float4 quad_vector,
	in float3 curr)
{
	float3 adjx_2801 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 adjy_2803 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 diag_2805 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _2806;
	float3 _2807;
	float3 _2808;
	float3 _2809;
	float3 _2810;
	_2806 = quad_vector;
	_2807 = curr;
	F__quad_gather(_2806, _2807, _2808, _2809, _2810);
	adjx_2801 = _2808;
	adjy_2803 = _2809;
	diag_2805 = _2810;
	float3 _2812 = curr + adjx_2801;
	float3 _2813 = _2812 + adjy_2803;
	float3 _2814 = _2813 + diag_2805;
	return _2814;
}
float2 F__quad_gather_sum(
	in float4 quad_vector,
	in float2 curr)
{
	float2 adjx_2820 = float2(0.00000000e+00, 0.00000000e+00);
	float2 adjy_2822 = float2(0.00000000e+00, 0.00000000e+00);
	float2 diag_2824 = float2(0.00000000e+00, 0.00000000e+00);
	float4 _2825;
	float2 _2826;
	float2 _2827;
	float2 _2828;
	float2 _2829;
	_2825 = quad_vector;
	_2826 = curr;
	F__quad_gather(_2825, _2826, _2827, _2828, _2829);
	adjx_2820 = _2827;
	adjy_2822 = _2828;
	diag_2824 = _2829;
	float2 _2831 = curr + adjx_2820;
	float2 _2832 = _2831 + adjy_2822;
	float2 _2833 = _2832 + diag_2824;
	return _2833;
}
float F__quad_gather_sum(
	in float4 quad_vector,
	in float curr)
{
	float4 _2838;
	float _2839;
	_2838 = quad_vector;
	_2839 = curr;
	float4 _2840 = F__quad_gather(_2838, _2839);
	float4 all_values = _2840;
	float _2844 = all_values.x + all_values.y;
	float _2846 = _2844 + all_values.z;
	float _2848 = _2846 + all_values.w;
	return _2848;
}
bool F__fine_derivatives_working(
	in float4 quad_vector,
	in float4 curr)
{
	float4 _2853 = ddx(curr);
	float4 ddx_curr = _2853;
	float4 _2855 = ddy(curr);
	float4 ddy_curr = _2855;
	float4 _2858 = ddx_curr * quad_vector.z.xxxx;
	float4 _2859 = curr - _2858;
	float4 adjx_2860 = _2859;
	float4 _2862 = ddy_curr * quad_vector.w.xxxx;
	float4 _2863 = curr - _2862;
	float4 adjy_2864 = _2863;
	float4 _2865 = ddy(adjx_2860);
	bool _2868 = ddy_curr.x != _2865.x;
	float4 _2869 = ddy(adjx_2860);
	bool _2872 = ddy_curr.y != _2869.y;
	float4 _2873 = ddy(adjx_2860);
	bool _2876 = ddy_curr.z != _2873.z;
	float4 _2877 = ddy(adjx_2860);
	bool _2880 = ddy_curr.w != _2877.w;
	bool4 _2881 = bool4(_2868, _2872, _2876, _2880);
	bool _2882 = any(_2881);
	bool ddy_different = _2882;
	float4 _2884 = ddx(adjy_2864);
	bool _2887 = ddx_curr.x != _2884.x;
	float4 _2888 = ddx(adjy_2864);
	bool _2891 = ddx_curr.y != _2888.y;
	float4 _2892 = ddx(adjy_2864);
	bool _2895 = ddx_curr.z != _2892.z;
	float4 _2896 = ddx(adjy_2864);
	bool _2899 = ddx_curr.w != _2896.w;
	bool4 _2900 = bool4(_2887, _2891, _2895, _2899);
	bool _2901 = any(_2900);
	bool ddx_different = _2901;
	bool2 _2903 = bool2(ddy_different, ddx_different);
	bool _2904 = any(_2903);
	return _2904;
}
bool F__fine_derivatives_working_fast(
	in float4 quad_vector,
	in float curr)
{
	float _2909 = ddx(curr);
	float ddx_curr_2910 = _2909;
	float _2911 = ddy(curr);
	float ddy_curr_2912 = _2911;
	float _2914 = ddx_curr_2910 * quad_vector.z;
	float _2915 = curr - _2914;
	float adjx_2916 = _2915;
	float _2917 = ddy(adjx_2916);
	bool _2918 = ddy_curr_2912 != _2917;
	return _2918;
}
float4 F__uv2_to_uv4(
	in float2 tex_uv)
{
	float4 _2926 = float4(tex_uv.x, tex_uv.y, 0.00000000e+00, 0.00000000e+00);
	return _2926;
}
float F__get_fast_gaussian_weight_sum_inv(
	in float sigma)
{
	float _2931 = sigma - 8.60587284e-02;
	float _2933 = 3.48348409e-01 / _2931;
	float _2934 = exp(_2933);
	float _2935 = exp(_2934);
	float _2937 = 3.99334580e-01 / sigma;
	float _2938 = min(_2935, _2937);
	return _2938;
}
float3 F__tex2Dblur11resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _2946 = sigma * sigma;
	float _2948 = 5.00000000e-01 / _2946;
	float denom_inv = _2948;
	float _2951 = -1.00000000e+00 * denom_inv;
	float _2952 = exp(_2951);
	float w1 = _2952;
	float _2955 = -4.00000000e+00 * denom_inv;
	float _2956 = exp(_2955);
	float w2_2957 = _2956;
	float _2959 = -9.00000000e+00 * denom_inv;
	float _2960 = exp(_2959);
	float w3 = _2960;
	float _2963 = -1.60000000e+01 * denom_inv;
	float _2964 = exp(_2963);
	float w4 = _2964;
	float _2967 = -2.50000000e+01 * denom_inv;
	float _2968 = exp(_2967);
	float w5 = _2968;
	float _2970 = w1 + w2_2957;
	float _2971 = _2970 + w3;
	float _2972 = _2971 + w4;
	float _2973 = _2972 + w5;
	float _2975 = 2.00000000e+00 * _2973;
	float _2977 = 1.00000000e+00 + _2975;
	float _2979 = 1.00000000e+00 / _2977;
	float weight_sum_inv = _2979;
	float3 sum_2982 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _2984 = float2(5.00000000e+00, 5.00000000e+00) * dxdy;
	float2 _2985 = tex_uv - _2984;
	float2 _2986;
	float _2987;
	_2986 = _2985;
	_2987 = input_gamma;
	float4 _2988 = F__tex2D_linearize(tex, _2986, _2987);
	float3 _2991 = w5.xxx * _2988.xyz;
	float3 _2992 = sum_2982 + _2991;
	sum_2982 = _2992;
	float2 _2994 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _2995 = tex_uv - _2994;
	float2 _2996;
	float _2997;
	_2996 = _2995;
	_2997 = input_gamma;
	float4 _2998 = F__tex2D_linearize(tex, _2996, _2997);
	float3 _3001 = w4.xxx * _2998.xyz;
	float3 _3002 = sum_2982 + _3001;
	sum_2982 = _3002;
	float2 _3004 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3005 = tex_uv - _3004;
	float2 _3006;
	float _3007;
	_3006 = _3005;
	_3007 = input_gamma;
	float4 _3008 = F__tex2D_linearize(tex, _3006, _3007);
	float3 _3011 = w3.xxx * _3008.xyz;
	float3 _3012 = sum_2982 + _3011;
	sum_2982 = _3012;
	float2 _3014 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3015 = tex_uv - _3014;
	float2 _3016;
	float _3017;
	_3016 = _3015;
	_3017 = input_gamma;
	float4 _3018 = F__tex2D_linearize(tex, _3016, _3017);
	float3 _3021 = w2_2957.xxx * _3018.xyz;
	float3 _3022 = sum_2982 + _3021;
	sum_2982 = _3022;
	float2 _3024 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3025 = tex_uv - _3024;
	float2 _3026;
	float _3027;
	_3026 = _3025;
	_3027 = input_gamma;
	float4 _3028 = F__tex2D_linearize(tex, _3026, _3027);
	float3 _3031 = w1.xxx * _3028.xyz;
	float3 _3032 = sum_2982 + _3031;
	sum_2982 = _3032;
	float2 _3033;
	float _3034;
	_3033 = tex_uv;
	_3034 = input_gamma;
	float4 _3035 = F__tex2D_linearize(tex, _3033, _3034);
	float3 _3038 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3035.xyz;
	float3 _3039 = sum_2982 + _3038;
	sum_2982 = _3039;
	float2 _3041 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3042 = tex_uv + _3041;
	float2 _3043;
	float _3044;
	_3043 = _3042;
	_3044 = input_gamma;
	float4 _3045 = F__tex2D_linearize(tex, _3043, _3044);
	float3 _3048 = w1.xxx * _3045.xyz;
	float3 _3049 = sum_2982 + _3048;
	sum_2982 = _3049;
	float2 _3051 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3052 = tex_uv + _3051;
	float2 _3053;
	float _3054;
	_3053 = _3052;
	_3054 = input_gamma;
	float4 _3055 = F__tex2D_linearize(tex, _3053, _3054);
	float3 _3058 = w2_2957.xxx * _3055.xyz;
	float3 _3059 = sum_2982 + _3058;
	sum_2982 = _3059;
	float2 _3061 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3062 = tex_uv + _3061;
	float2 _3063;
	float _3064;
	_3063 = _3062;
	_3064 = input_gamma;
	float4 _3065 = F__tex2D_linearize(tex, _3063, _3064);
	float3 _3068 = w3.xxx * _3065.xyz;
	float3 _3069 = sum_2982 + _3068;
	sum_2982 = _3069;
	float2 _3071 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _3072 = tex_uv + _3071;
	float2 _3073;
	float _3074;
	_3073 = _3072;
	_3074 = input_gamma;
	float4 _3075 = F__tex2D_linearize(tex, _3073, _3074);
	float3 _3078 = w4.xxx * _3075.xyz;
	float3 _3079 = sum_2982 + _3078;
	sum_2982 = _3079;
	float2 _3081 = float2(5.00000000e+00, 5.00000000e+00) * dxdy;
	float2 _3082 = tex_uv + _3081;
	float2 _3083;
	float _3084;
	_3083 = _3082;
	_3084 = input_gamma;
	float4 _3085 = F__tex2D_linearize(tex, _3083, _3084);
	float3 _3088 = w5.xxx * _3085.xyz;
	float3 _3089 = sum_2982 + _3088;
	sum_2982 = _3089;
	float3 _3091 = sum_2982 * weight_sum_inv.xxx;
	return _3091;
}
float3 F__tex2Dblur9resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3099 = sigma * sigma;
	float _3101 = 5.00000000e-01 / _3099;
	float denom_inv_3102 = _3101;
	float _3104 = -1.00000000e+00 * denom_inv_3102;
	float _3105 = exp(_3104);
	float w1_3106 = _3105;
	float _3108 = -4.00000000e+00 * denom_inv_3102;
	float _3109 = exp(_3108);
	float w2_3110 = _3109;
	float _3112 = -9.00000000e+00 * denom_inv_3102;
	float _3113 = exp(_3112);
	float w3_3114 = _3113;
	float _3116 = -1.60000000e+01 * denom_inv_3102;
	float _3117 = exp(_3116);
	float w4_3118 = _3117;
	float _3119 = w1_3106 + w2_3110;
	float _3120 = _3119 + w3_3114;
	float _3121 = _3120 + w4_3118;
	float _3123 = 2.00000000e+00 * _3121;
	float _3125 = 1.00000000e+00 + _3123;
	float _3127 = 1.00000000e+00 / _3125;
	float weight_sum_inv_3128 = _3127;
	float3 sum_3130 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3132 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _3133 = tex_uv - _3132;
	float2 _3134;
	float _3135;
	_3134 = _3133;
	_3135 = input_gamma;
	float4 _3136 = F__tex2D_linearize(tex, _3134, _3135);
	float3 _3139 = w4_3118.xxx * _3136.xyz;
	float3 _3140 = sum_3130 + _3139;
	sum_3130 = _3140;
	float2 _3142 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3143 = tex_uv - _3142;
	float2 _3144;
	float _3145;
	_3144 = _3143;
	_3145 = input_gamma;
	float4 _3146 = F__tex2D_linearize(tex, _3144, _3145);
	float3 _3149 = w3_3114.xxx * _3146.xyz;
	float3 _3150 = sum_3130 + _3149;
	sum_3130 = _3150;
	float2 _3152 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3153 = tex_uv - _3152;
	float2 _3154;
	float _3155;
	_3154 = _3153;
	_3155 = input_gamma;
	float4 _3156 = F__tex2D_linearize(tex, _3154, _3155);
	float3 _3159 = w2_3110.xxx * _3156.xyz;
	float3 _3160 = sum_3130 + _3159;
	sum_3130 = _3160;
	float2 _3162 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3163 = tex_uv - _3162;
	float2 _3164;
	float _3165;
	_3164 = _3163;
	_3165 = input_gamma;
	float4 _3166 = F__tex2D_linearize(tex, _3164, _3165);
	float3 _3169 = w1_3106.xxx * _3166.xyz;
	float3 _3170 = sum_3130 + _3169;
	sum_3130 = _3170;
	float2 _3171;
	float _3172;
	_3171 = tex_uv;
	_3172 = input_gamma;
	float4 _3173 = F__tex2D_linearize(tex, _3171, _3172);
	float3 _3176 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3173.xyz;
	float3 _3177 = sum_3130 + _3176;
	sum_3130 = _3177;
	float2 _3179 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3180 = tex_uv + _3179;
	float2 _3181;
	float _3182;
	_3181 = _3180;
	_3182 = input_gamma;
	float4 _3183 = F__tex2D_linearize(tex, _3181, _3182);
	float3 _3186 = w1_3106.xxx * _3183.xyz;
	float3 _3187 = sum_3130 + _3186;
	sum_3130 = _3187;
	float2 _3189 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3190 = tex_uv + _3189;
	float2 _3191;
	float _3192;
	_3191 = _3190;
	_3192 = input_gamma;
	float4 _3193 = F__tex2D_linearize(tex, _3191, _3192);
	float3 _3196 = w2_3110.xxx * _3193.xyz;
	float3 _3197 = sum_3130 + _3196;
	sum_3130 = _3197;
	float2 _3199 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3200 = tex_uv + _3199;
	float2 _3201;
	float _3202;
	_3201 = _3200;
	_3202 = input_gamma;
	float4 _3203 = F__tex2D_linearize(tex, _3201, _3202);
	float3 _3206 = w3_3114.xxx * _3203.xyz;
	float3 _3207 = sum_3130 + _3206;
	sum_3130 = _3207;
	float2 _3209 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _3210 = tex_uv + _3209;
	float2 _3211;
	float _3212;
	_3211 = _3210;
	_3212 = input_gamma;
	float4 _3213 = F__tex2D_linearize(tex, _3211, _3212);
	float3 _3216 = w4_3118.xxx * _3213.xyz;
	float3 _3217 = sum_3130 + _3216;
	sum_3130 = _3217;
	float3 _3219 = sum_3130 * weight_sum_inv_3128.xxx;
	return _3219;
}
float3 F__tex2Dblur7resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3227 = sigma * sigma;
	float _3229 = 5.00000000e-01 / _3227;
	float denom_inv_3230 = _3229;
	float _3232 = -1.00000000e+00 * denom_inv_3230;
	float _3233 = exp(_3232);
	float w1_3234 = _3233;
	float _3236 = -4.00000000e+00 * denom_inv_3230;
	float _3237 = exp(_3236);
	float w2_3238 = _3237;
	float _3240 = -9.00000000e+00 * denom_inv_3230;
	float _3241 = exp(_3240);
	float w3_3242 = _3241;
	float _3243 = w1_3234 + w2_3238;
	float _3244 = _3243 + w3_3242;
	float _3246 = 2.00000000e+00 * _3244;
	float _3248 = 1.00000000e+00 + _3246;
	float _3250 = 1.00000000e+00 / _3248;
	float weight_sum_inv_3251 = _3250;
	float3 sum_3253 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3255 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3256 = tex_uv - _3255;
	float2 _3257;
	float _3258;
	_3257 = _3256;
	_3258 = input_gamma;
	float4 _3259 = F__tex2D_linearize(tex, _3257, _3258);
	float3 _3262 = w3_3242.xxx * _3259.xyz;
	float3 _3263 = sum_3253 + _3262;
	sum_3253 = _3263;
	float2 _3265 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3266 = tex_uv - _3265;
	float2 _3267;
	float _3268;
	_3267 = _3266;
	_3268 = input_gamma;
	float4 _3269 = F__tex2D_linearize(tex, _3267, _3268);
	float3 _3272 = w2_3238.xxx * _3269.xyz;
	float3 _3273 = sum_3253 + _3272;
	sum_3253 = _3273;
	float2 _3275 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3276 = tex_uv - _3275;
	float2 _3277;
	float _3278;
	_3277 = _3276;
	_3278 = input_gamma;
	float4 _3279 = F__tex2D_linearize(tex, _3277, _3278);
	float3 _3282 = w1_3234.xxx * _3279.xyz;
	float3 _3283 = sum_3253 + _3282;
	sum_3253 = _3283;
	float2 _3284;
	float _3285;
	_3284 = tex_uv;
	_3285 = input_gamma;
	float4 _3286 = F__tex2D_linearize(tex, _3284, _3285);
	float3 _3289 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3286.xyz;
	float3 _3290 = sum_3253 + _3289;
	sum_3253 = _3290;
	float2 _3292 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3293 = tex_uv + _3292;
	float2 _3294;
	float _3295;
	_3294 = _3293;
	_3295 = input_gamma;
	float4 _3296 = F__tex2D_linearize(tex, _3294, _3295);
	float3 _3299 = w1_3234.xxx * _3296.xyz;
	float3 _3300 = sum_3253 + _3299;
	sum_3253 = _3300;
	float2 _3302 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3303 = tex_uv + _3302;
	float2 _3304;
	float _3305;
	_3304 = _3303;
	_3305 = input_gamma;
	float4 _3306 = F__tex2D_linearize(tex, _3304, _3305);
	float3 _3309 = w2_3238.xxx * _3306.xyz;
	float3 _3310 = sum_3253 + _3309;
	sum_3253 = _3310;
	float2 _3312 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3313 = tex_uv + _3312;
	float2 _3314;
	float _3315;
	_3314 = _3313;
	_3315 = input_gamma;
	float4 _3316 = F__tex2D_linearize(tex, _3314, _3315);
	float3 _3319 = w3_3242.xxx * _3316.xyz;
	float3 _3320 = sum_3253 + _3319;
	sum_3253 = _3320;
	float3 _3322 = sum_3253 * weight_sum_inv_3251.xxx;
	return _3322;
}
float3 F__tex2Dblur5resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3330 = sigma * sigma;
	float _3332 = 5.00000000e-01 / _3330;
	float denom_inv_3333 = _3332;
	float _3335 = -1.00000000e+00 * denom_inv_3333;
	float _3336 = exp(_3335);
	float w1_3337 = _3336;
	float _3339 = -4.00000000e+00 * denom_inv_3333;
	float _3340 = exp(_3339);
	float w2_3341 = _3340;
	float _3342 = w1_3337 + w2_3341;
	float _3344 = 2.00000000e+00 * _3342;
	float _3346 = 1.00000000e+00 + _3344;
	float _3348 = 1.00000000e+00 / _3346;
	float weight_sum_inv_3349 = _3348;
	float3 sum_3351 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3353 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3354 = tex_uv - _3353;
	float2 _3355;
	float _3356;
	_3355 = _3354;
	_3356 = input_gamma;
	float4 _3357 = F__tex2D_linearize(tex, _3355, _3356);
	float3 _3360 = w2_3341.xxx * _3357.xyz;
	float3 _3361 = sum_3351 + _3360;
	sum_3351 = _3361;
	float2 _3363 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3364 = tex_uv - _3363;
	float2 _3365;
	float _3366;
	_3365 = _3364;
	_3366 = input_gamma;
	float4 _3367 = F__tex2D_linearize(tex, _3365, _3366);
	float3 _3370 = w1_3337.xxx * _3367.xyz;
	float3 _3371 = sum_3351 + _3370;
	sum_3351 = _3371;
	float2 _3372;
	float _3373;
	_3372 = tex_uv;
	_3373 = input_gamma;
	float4 _3374 = F__tex2D_linearize(tex, _3372, _3373);
	float3 _3377 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3374.xyz;
	float3 _3378 = sum_3351 + _3377;
	sum_3351 = _3378;
	float2 _3380 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3381 = tex_uv + _3380;
	float2 _3382;
	float _3383;
	_3382 = _3381;
	_3383 = input_gamma;
	float4 _3384 = F__tex2D_linearize(tex, _3382, _3383);
	float3 _3387 = w1_3337.xxx * _3384.xyz;
	float3 _3388 = sum_3351 + _3387;
	sum_3351 = _3388;
	float2 _3390 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3391 = tex_uv + _3390;
	float2 _3392;
	float _3393;
	_3392 = _3391;
	_3393 = input_gamma;
	float4 _3394 = F__tex2D_linearize(tex, _3392, _3393);
	float3 _3397 = w2_3341.xxx * _3394.xyz;
	float3 _3398 = sum_3351 + _3397;
	sum_3351 = _3398;
	float3 _3400 = sum_3351 * weight_sum_inv_3349.xxx;
	return _3400;
}
float3 F__tex2Dblur3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3408 = sigma * sigma;
	float _3410 = 5.00000000e-01 / _3408;
	float denom_inv_3411 = _3410;
	float _3413 = -1.00000000e+00 * denom_inv_3411;
	float _3414 = exp(_3413);
	float w1_3415 = _3414;
	float _3417 = 2.00000000e+00 * w1_3415;
	float _3419 = 1.00000000e+00 + _3417;
	float _3421 = 1.00000000e+00 / _3419;
	float weight_sum_inv_3422 = _3421;
	float3 sum_3424 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3426 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3427 = tex_uv - _3426;
	float2 _3428;
	float _3429;
	_3428 = _3427;
	_3429 = input_gamma;
	float4 _3430 = F__tex2D_linearize(tex, _3428, _3429);
	float3 _3433 = w1_3415.xxx * _3430.xyz;
	float3 _3434 = sum_3424 + _3433;
	sum_3424 = _3434;
	float2 _3435;
	float _3436;
	_3435 = tex_uv;
	_3436 = input_gamma;
	float4 _3437 = F__tex2D_linearize(tex, _3435, _3436);
	float3 _3440 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3437.xyz;
	float3 _3441 = sum_3424 + _3440;
	sum_3424 = _3441;
	float2 _3443 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3444 = tex_uv + _3443;
	float2 _3445;
	float _3446;
	_3445 = _3444;
	_3446 = input_gamma;
	float4 _3447 = F__tex2D_linearize(tex, _3445, _3446);
	float3 _3450 = w1_3415.xxx * _3447.xyz;
	float3 _3451 = sum_3424 + _3450;
	sum_3424 = _3451;
	float3 _3453 = sum_3424 * weight_sum_inv_3422.xxx;
	return _3453;
}
float3 F__tex2Dblur11fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3461 = sigma * sigma;
	float _3463 = 5.00000000e-01 / _3461;
	float denom_inv_3464 = _3463;
	float _3466 = -1.00000000e+00 * denom_inv_3464;
	float _3467 = exp(_3466);
	float w1_3468 = _3467;
	float _3470 = -4.00000000e+00 * denom_inv_3464;
	float _3471 = exp(_3470);
	float w2_3472 = _3471;
	float _3474 = -9.00000000e+00 * denom_inv_3464;
	float _3475 = exp(_3474);
	float w3_3476 = _3475;
	float _3478 = -1.60000000e+01 * denom_inv_3464;
	float _3479 = exp(_3478);
	float w4_3480 = _3479;
	float _3482 = -2.50000000e+01 * denom_inv_3464;
	float _3483 = exp(_3482);
	float w5_3484 = _3483;
	float _3485 = w1_3468 + w2_3472;
	float _3486 = _3485 + w3_3476;
	float _3487 = _3486 + w4_3480;
	float _3488 = _3487 + w5_3484;
	float _3490 = 2.00000000e+00 * _3488;
	float _3492 = 1.00000000e+00 + _3490;
	float _3494 = 1.00000000e+00 / _3492;
	float weight_sum_inv_3495 = _3494;
	float _3497 = 5.00000000e-01 + w1_3468;
	float w01 = _3497;
	float _3499 = w2_3472 + w3_3476;
	float w23 = _3499;
	float _3501 = w4_3480 + w5_3484;
	float w45 = _3501;
	float _3503 = w1_3468 / w01;
	float w01_ratio = _3503;
	float _3505 = w3_3476 / w23;
	float w23_ratio = _3505;
	float _3507 = w5_3484 / w45;
	float w45_ratio = _3507;
	float3 sum_3510 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3512 = 4.00000000e+00 + w45_ratio;
	float2 _3514 = _3512.xx * dxdy;
	float2 _3515 = tex_uv - _3514;
	float2 _3516;
	float _3517;
	_3516 = _3515;
	_3517 = input_gamma;
	float4 _3518 = F__tex2D_linearize(tex, _3516, _3517);
	float3 _3521 = w45.xxx * _3518.xyz;
	float3 _3522 = sum_3510 + _3521;
	sum_3510 = _3522;
	float _3524 = 2.00000000e+00 + w23_ratio;
	float2 _3526 = _3524.xx * dxdy;
	float2 _3527 = tex_uv - _3526;
	float2 _3528;
	float _3529;
	_3528 = _3527;
	_3529 = input_gamma;
	float4 _3530 = F__tex2D_linearize(tex, _3528, _3529);
	float3 _3533 = w23.xxx * _3530.xyz;
	float3 _3534 = sum_3510 + _3533;
	sum_3510 = _3534;
	float2 _3536 = w01_ratio.xx * dxdy;
	float2 _3537 = tex_uv - _3536;
	float2 _3538;
	float _3539;
	_3538 = _3537;
	_3539 = input_gamma;
	float4 _3540 = F__tex2D_linearize(tex, _3538, _3539);
	float3 _3543 = w01.xxx * _3540.xyz;
	float3 _3544 = sum_3510 + _3543;
	sum_3510 = _3544;
	float2 _3546 = w01_ratio.xx * dxdy;
	float2 _3547 = tex_uv + _3546;
	float2 _3548;
	float _3549;
	_3548 = _3547;
	_3549 = input_gamma;
	float4 _3550 = F__tex2D_linearize(tex, _3548, _3549);
	float3 _3553 = w01.xxx * _3550.xyz;
	float3 _3554 = sum_3510 + _3553;
	sum_3510 = _3554;
	float _3556 = 2.00000000e+00 + w23_ratio;
	float2 _3558 = _3556.xx * dxdy;
	float2 _3559 = tex_uv + _3558;
	float2 _3560;
	float _3561;
	_3560 = _3559;
	_3561 = input_gamma;
	float4 _3562 = F__tex2D_linearize(tex, _3560, _3561);
	float3 _3565 = w23.xxx * _3562.xyz;
	float3 _3566 = sum_3510 + _3565;
	sum_3510 = _3566;
	float _3568 = 4.00000000e+00 + w45_ratio;
	float2 _3570 = _3568.xx * dxdy;
	float2 _3571 = tex_uv + _3570;
	float2 _3572;
	float _3573;
	_3572 = _3571;
	_3573 = input_gamma;
	float4 _3574 = F__tex2D_linearize(tex, _3572, _3573);
	float3 _3577 = w45.xxx * _3574.xyz;
	float3 _3578 = sum_3510 + _3577;
	sum_3510 = _3578;
	float3 _3580 = sum_3510 * weight_sum_inv_3495.xxx;
	return _3580;
}
float3 F__tex2Dblur9fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3588 = sigma * sigma;
	float _3590 = 5.00000000e-01 / _3588;
	float denom_inv_3591 = _3590;
	float _3593 = -1.00000000e+00 * denom_inv_3591;
	float _3594 = exp(_3593);
	float w1_3595 = _3594;
	float _3597 = -4.00000000e+00 * denom_inv_3591;
	float _3598 = exp(_3597);
	float w2_3599 = _3598;
	float _3601 = -9.00000000e+00 * denom_inv_3591;
	float _3602 = exp(_3601);
	float w3_3603 = _3602;
	float _3605 = -1.60000000e+01 * denom_inv_3591;
	float _3606 = exp(_3605);
	float w4_3607 = _3606;
	float _3608 = w1_3595 + w2_3599;
	float _3609 = _3608 + w3_3603;
	float _3610 = _3609 + w4_3607;
	float _3612 = 2.00000000e+00 * _3610;
	float _3614 = 1.00000000e+00 + _3612;
	float _3616 = 1.00000000e+00 / _3614;
	float weight_sum_inv_3617 = _3616;
	float _3618 = w1_3595 + w2_3599;
	float w12 = _3618;
	float _3620 = w3_3603 + w4_3607;
	float w34 = _3620;
	float _3622 = w2_3599 / w12;
	float w12_ratio = _3622;
	float _3624 = w4_3607 / w34;
	float w34_ratio = _3624;
	float3 sum_3627 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3629 = 3.00000000e+00 + w34_ratio;
	float2 _3631 = _3629.xx * dxdy;
	float2 _3632 = tex_uv - _3631;
	float2 _3633;
	float _3634;
	_3633 = _3632;
	_3634 = input_gamma;
	float4 _3635 = F__tex2D_linearize(tex, _3633, _3634);
	float3 _3638 = w34.xxx * _3635.xyz;
	float3 _3639 = sum_3627 + _3638;
	sum_3627 = _3639;
	float _3641 = 1.00000000e+00 + w12_ratio;
	float2 _3643 = _3641.xx * dxdy;
	float2 _3644 = tex_uv - _3643;
	float2 _3645;
	float _3646;
	_3645 = _3644;
	_3646 = input_gamma;
	float4 _3647 = F__tex2D_linearize(tex, _3645, _3646);
	float3 _3650 = w12.xxx * _3647.xyz;
	float3 _3651 = sum_3627 + _3650;
	sum_3627 = _3651;
	float2 _3652;
	float _3653;
	_3652 = tex_uv;
	_3653 = input_gamma;
	float4 _3654 = F__tex2D_linearize(tex, _3652, _3653);
	float3 _3657 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3654.xyz;
	float3 _3658 = sum_3627 + _3657;
	sum_3627 = _3658;
	float _3660 = 1.00000000e+00 + w12_ratio;
	float2 _3662 = _3660.xx * dxdy;
	float2 _3663 = tex_uv + _3662;
	float2 _3664;
	float _3665;
	_3664 = _3663;
	_3665 = input_gamma;
	float4 _3666 = F__tex2D_linearize(tex, _3664, _3665);
	float3 _3669 = w12.xxx * _3666.xyz;
	float3 _3670 = sum_3627 + _3669;
	sum_3627 = _3670;
	float _3672 = 3.00000000e+00 + w34_ratio;
	float2 _3674 = _3672.xx * dxdy;
	float2 _3675 = tex_uv + _3674;
	float2 _3676;
	float _3677;
	_3676 = _3675;
	_3677 = input_gamma;
	float4 _3678 = F__tex2D_linearize(tex, _3676, _3677);
	float3 _3681 = w34.xxx * _3678.xyz;
	float3 _3682 = sum_3627 + _3681;
	sum_3627 = _3682;
	float3 _3684 = sum_3627 * weight_sum_inv_3617.xxx;
	return _3684;
}
float3 F__tex2Dblur7fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3692 = sigma * sigma;
	float _3694 = 5.00000000e-01 / _3692;
	float denom_inv_3695 = _3694;
	float _3697 = -1.00000000e+00 * denom_inv_3695;
	float _3698 = exp(_3697);
	float w1_3699 = _3698;
	float _3701 = -4.00000000e+00 * denom_inv_3695;
	float _3702 = exp(_3701);
	float w2_3703 = _3702;
	float _3705 = -9.00000000e+00 * denom_inv_3695;
	float _3706 = exp(_3705);
	float w3_3707 = _3706;
	float _3708 = w1_3699 + w2_3703;
	float _3709 = _3708 + w3_3707;
	float _3711 = 2.00000000e+00 * _3709;
	float _3713 = 1.00000000e+00 + _3711;
	float _3715 = 1.00000000e+00 / _3713;
	float weight_sum_inv_3716 = _3715;
	float _3718 = 5.00000000e-01 + w1_3699;
	float w01_3719 = _3718;
	float _3720 = w2_3703 + w3_3707;
	float w23_3721 = _3720;
	float _3722 = w1_3699 / w01_3719;
	float w01_ratio_3723 = _3722;
	float _3724 = w3_3707 / w23_3721;
	float w23_ratio_3725 = _3724;
	float3 sum_3727 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3729 = 2.00000000e+00 + w23_ratio_3725;
	float2 _3731 = _3729.xx * dxdy;
	float2 _3732 = tex_uv - _3731;
	float2 _3733;
	float _3734;
	_3733 = _3732;
	_3734 = input_gamma;
	float4 _3735 = F__tex2D_linearize(tex, _3733, _3734);
	float3 _3738 = w23_3721.xxx * _3735.xyz;
	float3 _3739 = sum_3727 + _3738;
	sum_3727 = _3739;
	float2 _3741 = w01_ratio_3723.xx * dxdy;
	float2 _3742 = tex_uv - _3741;
	float2 _3743;
	float _3744;
	_3743 = _3742;
	_3744 = input_gamma;
	float4 _3745 = F__tex2D_linearize(tex, _3743, _3744);
	float3 _3748 = w01_3719.xxx * _3745.xyz;
	float3 _3749 = sum_3727 + _3748;
	sum_3727 = _3749;
	float2 _3751 = w01_ratio_3723.xx * dxdy;
	float2 _3752 = tex_uv + _3751;
	float2 _3753;
	float _3754;
	_3753 = _3752;
	_3754 = input_gamma;
	float4 _3755 = F__tex2D_linearize(tex, _3753, _3754);
	float3 _3758 = w01_3719.xxx * _3755.xyz;
	float3 _3759 = sum_3727 + _3758;
	sum_3727 = _3759;
	float _3761 = 2.00000000e+00 + w23_ratio_3725;
	float2 _3763 = _3761.xx * dxdy;
	float2 _3764 = tex_uv + _3763;
	float2 _3765;
	float _3766;
	_3765 = _3764;
	_3766 = input_gamma;
	float4 _3767 = F__tex2D_linearize(tex, _3765, _3766);
	float3 _3770 = w23_3721.xxx * _3767.xyz;
	float3 _3771 = sum_3727 + _3770;
	sum_3727 = _3771;
	float3 _3773 = sum_3727 * weight_sum_inv_3716.xxx;
	return _3773;
}
float3 F__tex2Dblur5fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3781 = sigma * sigma;
	float _3783 = 5.00000000e-01 / _3781;
	float denom_inv_3784 = _3783;
	float _3786 = -1.00000000e+00 * denom_inv_3784;
	float _3787 = exp(_3786);
	float w1_3788 = _3787;
	float _3790 = -4.00000000e+00 * denom_inv_3784;
	float _3791 = exp(_3790);
	float w2_3792 = _3791;
	float _3793 = w1_3788 + w2_3792;
	float _3795 = 2.00000000e+00 * _3793;
	float _3797 = 1.00000000e+00 + _3795;
	float _3799 = 1.00000000e+00 / _3797;
	float weight_sum_inv_3800 = _3799;
	float _3801 = w1_3788 + w2_3792;
	float w12_3802 = _3801;
	float _3803 = w2_3792 / w12_3802;
	float w12_ratio_3804 = _3803;
	float3 sum_3806 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3808 = 1.00000000e+00 + w12_ratio_3804;
	float2 _3810 = _3808.xx * dxdy;
	float2 _3811 = tex_uv - _3810;
	float2 _3812;
	float _3813;
	_3812 = _3811;
	_3813 = input_gamma;
	float4 _3814 = F__tex2D_linearize(tex, _3812, _3813);
	float3 _3817 = w12_3802.xxx * _3814.xyz;
	float3 _3818 = sum_3806 + _3817;
	sum_3806 = _3818;
	float2 _3819;
	float _3820;
	_3819 = tex_uv;
	_3820 = input_gamma;
	float4 _3821 = F__tex2D_linearize(tex, _3819, _3820);
	float3 _3824 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3821.xyz;
	float3 _3825 = sum_3806 + _3824;
	sum_3806 = _3825;
	float _3827 = 1.00000000e+00 + w12_ratio_3804;
	float2 _3829 = _3827.xx * dxdy;
	float2 _3830 = tex_uv + _3829;
	float2 _3831;
	float _3832;
	_3831 = _3830;
	_3832 = input_gamma;
	float4 _3833 = F__tex2D_linearize(tex, _3831, _3832);
	float3 _3836 = w12_3802.xxx * _3833.xyz;
	float3 _3837 = sum_3806 + _3836;
	sum_3806 = _3837;
	float3 _3839 = sum_3806 * weight_sum_inv_3800.xxx;
	return _3839;
}
float3 F__tex2Dblur3fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3847 = sigma * sigma;
	float _3849 = 5.00000000e-01 / _3847;
	float denom_inv_3850 = _3849;
	float _3852 = -1.00000000e+00 * denom_inv_3850;
	float _3853 = exp(_3852);
	float w1_3854 = _3853;
	float _3856 = 2.00000000e+00 * w1_3854;
	float _3858 = 1.00000000e+00 + _3856;
	float _3860 = 1.00000000e+00 / _3858;
	float weight_sum_inv_3861 = _3860;
	float _3863 = 5.00000000e-01 + w1_3854;
	float w01_3864 = _3863;
	float _3865 = w1_3854 / w01_3864;
	float w01_ratio_3866 = _3865;
	float2 _3868 = w01_ratio_3866.xx * dxdy;
	float2 _3869 = tex_uv - _3868;
	float2 _3870;
	float _3871;
	_3870 = _3869;
	_3871 = input_gamma;
	float4 _3872 = F__tex2D_linearize(tex, _3870, _3871);
	float2 _3874 = w01_ratio_3866.xx * dxdy;
	float2 _3875 = tex_uv + _3874;
	float2 _3876;
	float _3877;
	_3876 = _3875;
	_3877 = input_gamma;
	float4 _3878 = F__tex2D_linearize(tex, _3876, _3877);
	float3 _3881 = _3872.xyz + _3878.xyz;
	float3 _3883 = float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) * _3881;
	return _3883;
}
float3 F__tex2Dblur43fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3891 = sigma * sigma;
	float _3893 = 5.00000000e-01 / _3891;
	float denom_inv_3894 = _3893;
	float _3896 = -1.00000000e+00 * denom_inv_3894;
	float _3897 = exp(_3896);
	float w1_3898 = _3897;
	float _3900 = -4.00000000e+00 * denom_inv_3894;
	float _3901 = exp(_3900);
	float w2_3902 = _3901;
	float _3904 = -9.00000000e+00 * denom_inv_3894;
	float _3905 = exp(_3904);
	float w3_3906 = _3905;
	float _3908 = -1.60000000e+01 * denom_inv_3894;
	float _3909 = exp(_3908);
	float w4_3910 = _3909;
	float _3912 = -2.50000000e+01 * denom_inv_3894;
	float _3913 = exp(_3912);
	float w5_3914 = _3913;
	float _3916 = -3.60000000e+01 * denom_inv_3894;
	float _3917 = exp(_3916);
	float w6 = _3917;
	float _3920 = -4.90000000e+01 * denom_inv_3894;
	float _3921 = exp(_3920);
	float w7 = _3921;
	float _3924 = -6.40000000e+01 * denom_inv_3894;
	float _3925 = exp(_3924);
	float w8 = _3925;
	float _3928 = -8.10000000e+01 * denom_inv_3894;
	float _3929 = exp(_3928);
	float w9 = _3929;
	float _3932 = -1.00000000e+02 * denom_inv_3894;
	float _3933 = exp(_3932);
	float w10 = _3933;
	float _3936 = -1.21000000e+02 * denom_inv_3894;
	float _3937 = exp(_3936);
	float w11 = _3937;
	float _3940 = -1.44000000e+02 * denom_inv_3894;
	float _3941 = exp(_3940);
	float w12_3942 = _3941;
	float _3944 = -1.69000000e+02 * denom_inv_3894;
	float _3945 = exp(_3944);
	float w13 = _3945;
	float _3948 = -1.96000000e+02 * denom_inv_3894;
	float _3949 = exp(_3948);
	float w14 = _3949;
	float _3952 = -2.25000000e+02 * denom_inv_3894;
	float _3953 = exp(_3952);
	float w15 = _3953;
	float _3956 = -2.56000000e+02 * denom_inv_3894;
	float _3957 = exp(_3956);
	float w16 = _3957;
	float _3960 = -2.89000000e+02 * denom_inv_3894;
	float _3961 = exp(_3960);
	float w17 = _3961;
	float _3964 = -3.24000000e+02 * denom_inv_3894;
	float _3965 = exp(_3964);
	float w18 = _3965;
	float _3968 = -3.61000000e+02 * denom_inv_3894;
	float _3969 = exp(_3968);
	float w19 = _3969;
	float _3972 = -4.00000000e+02 * denom_inv_3894;
	float _3973 = exp(_3972);
	float w20 = _3973;
	float _3976 = -4.41000000e+02 * denom_inv_3894;
	float _3977 = exp(_3976);
	float w21 = _3977;
	float _3979;
	_3979 = sigma;
	float _3980 = F__get_fast_gaussian_weight_sum_inv(_3979);
	float weight_sum_inv_3981 = _3980;
	float _3983 = 5.00000000e-01 + w1_3898;
	float w0_1 = _3983;
	float _3985 = w2_3902 + w3_3906;
	float w2_3 = _3985;
	float _3987 = w4_3910 + w5_3914;
	float w4_5 = _3987;
	float _3989 = w6 + w7;
	float w6_7 = _3989;
	float _3991 = w8 + w9;
	float w8_9 = _3991;
	float _3993 = w10 + w11;
	float w10_11 = _3993;
	float _3995 = w12_3942 + w13;
	float w12_13 = _3995;
	float _3997 = w14 + w15;
	float w14_15 = _3997;
	float _3999 = w16 + w17;
	float w16_17 = _3999;
	float _4001 = w18 + w19;
	float w18_19 = _4001;
	float _4003 = w20 + w21;
	float w20_21 = _4003;
	float _4005 = w1_3898 / w0_1;
	float w0_1_ratio = _4005;
	float _4007 = w3_3906 / w2_3;
	float w2_3_ratio = _4007;
	float _4009 = w5_3914 / w4_5;
	float w4_5_ratio = _4009;
	float _4011 = w7 / w6_7;
	float w6_7_ratio = _4011;
	float _4013 = w9 / w8_9;
	float w8_9_ratio = _4013;
	float _4015 = w11 / w10_11;
	float w10_11_ratio = _4015;
	float _4017 = w13 / w12_13;
	float w12_13_ratio = _4017;
	float _4019 = w15 / w14_15;
	float w14_15_ratio = _4019;
	float _4021 = w17 / w16_17;
	float w16_17_ratio = _4021;
	float _4023 = w19 / w18_19;
	float w18_19_ratio = _4023;
	float _4025 = w21 / w20_21;
	float w20_21_ratio = _4025;
	float3 sum_4028 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4030 = 2.00000000e+01 + w20_21_ratio;
	float2 _4032 = _4030.xx * dxdy;
	float2 _4033 = tex_uv - _4032;
	float2 _4034;
	float _4035;
	_4034 = _4033;
	_4035 = input_gamma;
	float4 _4036 = F__tex2D_linearize(tex, _4034, _4035);
	float3 _4039 = w20_21.xxx * _4036.xyz;
	float3 _4040 = sum_4028 + _4039;
	sum_4028 = _4040;
	float _4042 = 1.80000000e+01 + w18_19_ratio;
	float2 _4044 = _4042.xx * dxdy;
	float2 _4045 = tex_uv - _4044;
	float2 _4046;
	float _4047;
	_4046 = _4045;
	_4047 = input_gamma;
	float4 _4048 = F__tex2D_linearize(tex, _4046, _4047);
	float3 _4051 = w18_19.xxx * _4048.xyz;
	float3 _4052 = sum_4028 + _4051;
	sum_4028 = _4052;
	float _4054 = 1.60000000e+01 + w16_17_ratio;
	float2 _4056 = _4054.xx * dxdy;
	float2 _4057 = tex_uv - _4056;
	float2 _4058;
	float _4059;
	_4058 = _4057;
	_4059 = input_gamma;
	float4 _4060 = F__tex2D_linearize(tex, _4058, _4059);
	float3 _4063 = w16_17.xxx * _4060.xyz;
	float3 _4064 = sum_4028 + _4063;
	sum_4028 = _4064;
	float _4066 = 1.40000000e+01 + w14_15_ratio;
	float2 _4068 = _4066.xx * dxdy;
	float2 _4069 = tex_uv - _4068;
	float2 _4070;
	float _4071;
	_4070 = _4069;
	_4071 = input_gamma;
	float4 _4072 = F__tex2D_linearize(tex, _4070, _4071);
	float3 _4075 = w14_15.xxx * _4072.xyz;
	float3 _4076 = sum_4028 + _4075;
	sum_4028 = _4076;
	float _4078 = 1.20000000e+01 + w12_13_ratio;
	float2 _4080 = _4078.xx * dxdy;
	float2 _4081 = tex_uv - _4080;
	float2 _4082;
	float _4083;
	_4082 = _4081;
	_4083 = input_gamma;
	float4 _4084 = F__tex2D_linearize(tex, _4082, _4083);
	float3 _4087 = w12_13.xxx * _4084.xyz;
	float3 _4088 = sum_4028 + _4087;
	sum_4028 = _4088;
	float _4090 = 1.00000000e+01 + w10_11_ratio;
	float2 _4092 = _4090.xx * dxdy;
	float2 _4093 = tex_uv - _4092;
	float2 _4094;
	float _4095;
	_4094 = _4093;
	_4095 = input_gamma;
	float4 _4096 = F__tex2D_linearize(tex, _4094, _4095);
	float3 _4099 = w10_11.xxx * _4096.xyz;
	float3 _4100 = sum_4028 + _4099;
	sum_4028 = _4100;
	float _4102 = 8.00000000e+00 + w8_9_ratio;
	float2 _4104 = _4102.xx * dxdy;
	float2 _4105 = tex_uv - _4104;
	float2 _4106;
	float _4107;
	_4106 = _4105;
	_4107 = input_gamma;
	float4 _4108 = F__tex2D_linearize(tex, _4106, _4107);
	float3 _4111 = w8_9.xxx * _4108.xyz;
	float3 _4112 = sum_4028 + _4111;
	sum_4028 = _4112;
	float _4114 = 6.00000000e+00 + w6_7_ratio;
	float2 _4116 = _4114.xx * dxdy;
	float2 _4117 = tex_uv - _4116;
	float2 _4118;
	float _4119;
	_4118 = _4117;
	_4119 = input_gamma;
	float4 _4120 = F__tex2D_linearize(tex, _4118, _4119);
	float3 _4123 = w6_7.xxx * _4120.xyz;
	float3 _4124 = sum_4028 + _4123;
	sum_4028 = _4124;
	float _4126 = 4.00000000e+00 + w4_5_ratio;
	float2 _4128 = _4126.xx * dxdy;
	float2 _4129 = tex_uv - _4128;
	float2 _4130;
	float _4131;
	_4130 = _4129;
	_4131 = input_gamma;
	float4 _4132 = F__tex2D_linearize(tex, _4130, _4131);
	float3 _4135 = w4_5.xxx * _4132.xyz;
	float3 _4136 = sum_4028 + _4135;
	sum_4028 = _4136;
	float _4138 = 2.00000000e+00 + w2_3_ratio;
	float2 _4140 = _4138.xx * dxdy;
	float2 _4141 = tex_uv - _4140;
	float2 _4142;
	float _4143;
	_4142 = _4141;
	_4143 = input_gamma;
	float4 _4144 = F__tex2D_linearize(tex, _4142, _4143);
	float3 _4147 = w2_3.xxx * _4144.xyz;
	float3 _4148 = sum_4028 + _4147;
	sum_4028 = _4148;
	float2 _4150 = w0_1_ratio.xx * dxdy;
	float2 _4151 = tex_uv - _4150;
	float2 _4152;
	float _4153;
	_4152 = _4151;
	_4153 = input_gamma;
	float4 _4154 = F__tex2D_linearize(tex, _4152, _4153);
	float3 _4157 = w0_1.xxx * _4154.xyz;
	float3 _4158 = sum_4028 + _4157;
	sum_4028 = _4158;
	float2 _4160 = w0_1_ratio.xx * dxdy;
	float2 _4161 = tex_uv + _4160;
	float2 _4162;
	float _4163;
	_4162 = _4161;
	_4163 = input_gamma;
	float4 _4164 = F__tex2D_linearize(tex, _4162, _4163);
	float3 _4167 = w0_1.xxx * _4164.xyz;
	float3 _4168 = sum_4028 + _4167;
	sum_4028 = _4168;
	float _4170 = 2.00000000e+00 + w2_3_ratio;
	float2 _4172 = _4170.xx * dxdy;
	float2 _4173 = tex_uv + _4172;
	float2 _4174;
	float _4175;
	_4174 = _4173;
	_4175 = input_gamma;
	float4 _4176 = F__tex2D_linearize(tex, _4174, _4175);
	float3 _4179 = w2_3.xxx * _4176.xyz;
	float3 _4180 = sum_4028 + _4179;
	sum_4028 = _4180;
	float _4182 = 4.00000000e+00 + w4_5_ratio;
	float2 _4184 = _4182.xx * dxdy;
	float2 _4185 = tex_uv + _4184;
	float2 _4186;
	float _4187;
	_4186 = _4185;
	_4187 = input_gamma;
	float4 _4188 = F__tex2D_linearize(tex, _4186, _4187);
	float3 _4191 = w4_5.xxx * _4188.xyz;
	float3 _4192 = sum_4028 + _4191;
	sum_4028 = _4192;
	float _4194 = 6.00000000e+00 + w6_7_ratio;
	float2 _4196 = _4194.xx * dxdy;
	float2 _4197 = tex_uv + _4196;
	float2 _4198;
	float _4199;
	_4198 = _4197;
	_4199 = input_gamma;
	float4 _4200 = F__tex2D_linearize(tex, _4198, _4199);
	float3 _4203 = w6_7.xxx * _4200.xyz;
	float3 _4204 = sum_4028 + _4203;
	sum_4028 = _4204;
	float _4206 = 8.00000000e+00 + w8_9_ratio;
	float2 _4208 = _4206.xx * dxdy;
	float2 _4209 = tex_uv + _4208;
	float2 _4210;
	float _4211;
	_4210 = _4209;
	_4211 = input_gamma;
	float4 _4212 = F__tex2D_linearize(tex, _4210, _4211);
	float3 _4215 = w8_9.xxx * _4212.xyz;
	float3 _4216 = sum_4028 + _4215;
	sum_4028 = _4216;
	float _4218 = 1.00000000e+01 + w10_11_ratio;
	float2 _4220 = _4218.xx * dxdy;
	float2 _4221 = tex_uv + _4220;
	float2 _4222;
	float _4223;
	_4222 = _4221;
	_4223 = input_gamma;
	float4 _4224 = F__tex2D_linearize(tex, _4222, _4223);
	float3 _4227 = w10_11.xxx * _4224.xyz;
	float3 _4228 = sum_4028 + _4227;
	sum_4028 = _4228;
	float _4230 = 1.20000000e+01 + w12_13_ratio;
	float2 _4232 = _4230.xx * dxdy;
	float2 _4233 = tex_uv + _4232;
	float2 _4234;
	float _4235;
	_4234 = _4233;
	_4235 = input_gamma;
	float4 _4236 = F__tex2D_linearize(tex, _4234, _4235);
	float3 _4239 = w12_13.xxx * _4236.xyz;
	float3 _4240 = sum_4028 + _4239;
	sum_4028 = _4240;
	float _4242 = 1.40000000e+01 + w14_15_ratio;
	float2 _4244 = _4242.xx * dxdy;
	float2 _4245 = tex_uv + _4244;
	float2 _4246;
	float _4247;
	_4246 = _4245;
	_4247 = input_gamma;
	float4 _4248 = F__tex2D_linearize(tex, _4246, _4247);
	float3 _4251 = w14_15.xxx * _4248.xyz;
	float3 _4252 = sum_4028 + _4251;
	sum_4028 = _4252;
	float _4254 = 1.60000000e+01 + w16_17_ratio;
	float2 _4256 = _4254.xx * dxdy;
	float2 _4257 = tex_uv + _4256;
	float2 _4258;
	float _4259;
	_4258 = _4257;
	_4259 = input_gamma;
	float4 _4260 = F__tex2D_linearize(tex, _4258, _4259);
	float3 _4263 = w16_17.xxx * _4260.xyz;
	float3 _4264 = sum_4028 + _4263;
	sum_4028 = _4264;
	float _4266 = 1.80000000e+01 + w18_19_ratio;
	float2 _4268 = _4266.xx * dxdy;
	float2 _4269 = tex_uv + _4268;
	float2 _4270;
	float _4271;
	_4270 = _4269;
	_4271 = input_gamma;
	float4 _4272 = F__tex2D_linearize(tex, _4270, _4271);
	float3 _4275 = w18_19.xxx * _4272.xyz;
	float3 _4276 = sum_4028 + _4275;
	sum_4028 = _4276;
	float _4278 = 2.00000000e+01 + w20_21_ratio;
	float2 _4280 = _4278.xx * dxdy;
	float2 _4281 = tex_uv + _4280;
	float2 _4282;
	float _4283;
	_4282 = _4281;
	_4283 = input_gamma;
	float4 _4284 = F__tex2D_linearize(tex, _4282, _4283);
	float3 _4287 = w20_21.xxx * _4284.xyz;
	float3 _4288 = sum_4028 + _4287;
	sum_4028 = _4288;
	float3 _4290 = sum_4028 * weight_sum_inv_3981.xxx;
	return _4290;
}
float3 F__tex2Dblur31fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _4298 = sigma * sigma;
	float _4300 = 5.00000000e-01 / _4298;
	float denom_inv_4301 = _4300;
	float _4303 = -1.00000000e+00 * denom_inv_4301;
	float _4304 = exp(_4303);
	float w1_4305 = _4304;
	float _4307 = -4.00000000e+00 * denom_inv_4301;
	float _4308 = exp(_4307);
	float w2_4309 = _4308;
	float _4311 = -9.00000000e+00 * denom_inv_4301;
	float _4312 = exp(_4311);
	float w3_4313 = _4312;
	float _4315 = -1.60000000e+01 * denom_inv_4301;
	float _4316 = exp(_4315);
	float w4_4317 = _4316;
	float _4319 = -2.50000000e+01 * denom_inv_4301;
	float _4320 = exp(_4319);
	float w5_4321 = _4320;
	float _4323 = -3.60000000e+01 * denom_inv_4301;
	float _4324 = exp(_4323);
	float w6_4325 = _4324;
	float _4327 = -4.90000000e+01 * denom_inv_4301;
	float _4328 = exp(_4327);
	float w7_4329 = _4328;
	float _4331 = -6.40000000e+01 * denom_inv_4301;
	float _4332 = exp(_4331);
	float w8_4333 = _4332;
	float _4335 = -8.10000000e+01 * denom_inv_4301;
	float _4336 = exp(_4335);
	float w9_4337 = _4336;
	float _4339 = -1.00000000e+02 * denom_inv_4301;
	float _4340 = exp(_4339);
	float w10_4341 = _4340;
	float _4343 = -1.21000000e+02 * denom_inv_4301;
	float _4344 = exp(_4343);
	float w11_4345 = _4344;
	float _4347 = -1.44000000e+02 * denom_inv_4301;
	float _4348 = exp(_4347);
	float w12_4349 = _4348;
	float _4351 = -1.69000000e+02 * denom_inv_4301;
	float _4352 = exp(_4351);
	float w13_4353 = _4352;
	float _4355 = -1.96000000e+02 * denom_inv_4301;
	float _4356 = exp(_4355);
	float w14_4357 = _4356;
	float _4359 = -2.25000000e+02 * denom_inv_4301;
	float _4360 = exp(_4359);
	float w15_4361 = _4360;
	float _4362;
	_4362 = sigma;
	float _4363 = F__get_fast_gaussian_weight_sum_inv(_4362);
	float weight_sum_inv_4364 = _4363;
	float _4366 = 5.00000000e-01 + w1_4305;
	float w0_1_4367 = _4366;
	float _4368 = w2_4309 + w3_4313;
	float w2_3_4369 = _4368;
	float _4370 = w4_4317 + w5_4321;
	float w4_5_4371 = _4370;
	float _4372 = w6_4325 + w7_4329;
	float w6_7_4373 = _4372;
	float _4374 = w8_4333 + w9_4337;
	float w8_9_4375 = _4374;
	float _4376 = w10_4341 + w11_4345;
	float w10_11_4377 = _4376;
	float _4378 = w12_4349 + w13_4353;
	float w12_13_4379 = _4378;
	float _4380 = w14_4357 + w15_4361;
	float w14_15_4381 = _4380;
	float _4382 = w1_4305 / w0_1_4367;
	float w0_1_ratio_4383 = _4382;
	float _4384 = w3_4313 / w2_3_4369;
	float w2_3_ratio_4385 = _4384;
	float _4386 = w5_4321 / w4_5_4371;
	float w4_5_ratio_4387 = _4386;
	float _4388 = w7_4329 / w6_7_4373;
	float w6_7_ratio_4389 = _4388;
	float _4390 = w9_4337 / w8_9_4375;
	float w8_9_ratio_4391 = _4390;
	float _4392 = w11_4345 / w10_11_4377;
	float w10_11_ratio_4393 = _4392;
	float _4394 = w13_4353 / w12_13_4379;
	float w12_13_ratio_4395 = _4394;
	float _4396 = w15_4361 / w14_15_4381;
	float w14_15_ratio_4397 = _4396;
	float3 sum_4399 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4401 = 1.40000000e+01 + w14_15_ratio_4397;
	float2 _4403 = _4401.xx * dxdy;
	float2 _4404 = tex_uv - _4403;
	float2 _4405;
	float _4406;
	_4405 = _4404;
	_4406 = input_gamma;
	float4 _4407 = F__tex2D_linearize(tex, _4405, _4406);
	float3 _4410 = w14_15_4381.xxx * _4407.xyz;
	float3 _4411 = sum_4399 + _4410;
	sum_4399 = _4411;
	float _4413 = 1.20000000e+01 + w12_13_ratio_4395;
	float2 _4415 = _4413.xx * dxdy;
	float2 _4416 = tex_uv - _4415;
	float2 _4417;
	float _4418;
	_4417 = _4416;
	_4418 = input_gamma;
	float4 _4419 = F__tex2D_linearize(tex, _4417, _4418);
	float3 _4422 = w12_13_4379.xxx * _4419.xyz;
	float3 _4423 = sum_4399 + _4422;
	sum_4399 = _4423;
	float _4425 = 1.00000000e+01 + w10_11_ratio_4393;
	float2 _4427 = _4425.xx * dxdy;
	float2 _4428 = tex_uv - _4427;
	float2 _4429;
	float _4430;
	_4429 = _4428;
	_4430 = input_gamma;
	float4 _4431 = F__tex2D_linearize(tex, _4429, _4430);
	float3 _4434 = w10_11_4377.xxx * _4431.xyz;
	float3 _4435 = sum_4399 + _4434;
	sum_4399 = _4435;
	float _4437 = 8.00000000e+00 + w8_9_ratio_4391;
	float2 _4439 = _4437.xx * dxdy;
	float2 _4440 = tex_uv - _4439;
	float2 _4441;
	float _4442;
	_4441 = _4440;
	_4442 = input_gamma;
	float4 _4443 = F__tex2D_linearize(tex, _4441, _4442);
	float3 _4446 = w8_9_4375.xxx * _4443.xyz;
	float3 _4447 = sum_4399 + _4446;
	sum_4399 = _4447;
	float _4449 = 6.00000000e+00 + w6_7_ratio_4389;
	float2 _4451 = _4449.xx * dxdy;
	float2 _4452 = tex_uv - _4451;
	float2 _4453;
	float _4454;
	_4453 = _4452;
	_4454 = input_gamma;
	float4 _4455 = F__tex2D_linearize(tex, _4453, _4454);
	float3 _4458 = w6_7_4373.xxx * _4455.xyz;
	float3 _4459 = sum_4399 + _4458;
	sum_4399 = _4459;
	float _4461 = 4.00000000e+00 + w4_5_ratio_4387;
	float2 _4463 = _4461.xx * dxdy;
	float2 _4464 = tex_uv - _4463;
	float2 _4465;
	float _4466;
	_4465 = _4464;
	_4466 = input_gamma;
	float4 _4467 = F__tex2D_linearize(tex, _4465, _4466);
	float3 _4470 = w4_5_4371.xxx * _4467.xyz;
	float3 _4471 = sum_4399 + _4470;
	sum_4399 = _4471;
	float _4473 = 2.00000000e+00 + w2_3_ratio_4385;
	float2 _4475 = _4473.xx * dxdy;
	float2 _4476 = tex_uv - _4475;
	float2 _4477;
	float _4478;
	_4477 = _4476;
	_4478 = input_gamma;
	float4 _4479 = F__tex2D_linearize(tex, _4477, _4478);
	float3 _4482 = w2_3_4369.xxx * _4479.xyz;
	float3 _4483 = sum_4399 + _4482;
	sum_4399 = _4483;
	float2 _4485 = w0_1_ratio_4383.xx * dxdy;
	float2 _4486 = tex_uv - _4485;
	float2 _4487;
	float _4488;
	_4487 = _4486;
	_4488 = input_gamma;
	float4 _4489 = F__tex2D_linearize(tex, _4487, _4488);
	float3 _4492 = w0_1_4367.xxx * _4489.xyz;
	float3 _4493 = sum_4399 + _4492;
	sum_4399 = _4493;
	float2 _4495 = w0_1_ratio_4383.xx * dxdy;
	float2 _4496 = tex_uv + _4495;
	float2 _4497;
	float _4498;
	_4497 = _4496;
	_4498 = input_gamma;
	float4 _4499 = F__tex2D_linearize(tex, _4497, _4498);
	float3 _4502 = w0_1_4367.xxx * _4499.xyz;
	float3 _4503 = sum_4399 + _4502;
	sum_4399 = _4503;
	float _4505 = 2.00000000e+00 + w2_3_ratio_4385;
	float2 _4507 = _4505.xx * dxdy;
	float2 _4508 = tex_uv + _4507;
	float2 _4509;
	float _4510;
	_4509 = _4508;
	_4510 = input_gamma;
	float4 _4511 = F__tex2D_linearize(tex, _4509, _4510);
	float3 _4514 = w2_3_4369.xxx * _4511.xyz;
	float3 _4515 = sum_4399 + _4514;
	sum_4399 = _4515;
	float _4517 = 4.00000000e+00 + w4_5_ratio_4387;
	float2 _4519 = _4517.xx * dxdy;
	float2 _4520 = tex_uv + _4519;
	float2 _4521;
	float _4522;
	_4521 = _4520;
	_4522 = input_gamma;
	float4 _4523 = F__tex2D_linearize(tex, _4521, _4522);
	float3 _4526 = w4_5_4371.xxx * _4523.xyz;
	float3 _4527 = sum_4399 + _4526;
	sum_4399 = _4527;
	float _4529 = 6.00000000e+00 + w6_7_ratio_4389;
	float2 _4531 = _4529.xx * dxdy;
	float2 _4532 = tex_uv + _4531;
	float2 _4533;
	float _4534;
	_4533 = _4532;
	_4534 = input_gamma;
	float4 _4535 = F__tex2D_linearize(tex, _4533, _4534);
	float3 _4538 = w6_7_4373.xxx * _4535.xyz;
	float3 _4539 = sum_4399 + _4538;
	sum_4399 = _4539;
	float _4541 = 8.00000000e+00 + w8_9_ratio_4391;
	float2 _4543 = _4541.xx * dxdy;
	float2 _4544 = tex_uv + _4543;
	float2 _4545;
	float _4546;
	_4545 = _4544;
	_4546 = input_gamma;
	float4 _4547 = F__tex2D_linearize(tex, _4545, _4546);
	float3 _4550 = w8_9_4375.xxx * _4547.xyz;
	float3 _4551 = sum_4399 + _4550;
	sum_4399 = _4551;
	float _4553 = 1.00000000e+01 + w10_11_ratio_4393;
	float2 _4555 = _4553.xx * dxdy;
	float2 _4556 = tex_uv + _4555;
	float2 _4557;
	float _4558;
	_4557 = _4556;
	_4558 = input_gamma;
	float4 _4559 = F__tex2D_linearize(tex, _4557, _4558);
	float3 _4562 = w10_11_4377.xxx * _4559.xyz;
	float3 _4563 = sum_4399 + _4562;
	sum_4399 = _4563;
	float _4565 = 1.20000000e+01 + w12_13_ratio_4395;
	float2 _4567 = _4565.xx * dxdy;
	float2 _4568 = tex_uv + _4567;
	float2 _4569;
	float _4570;
	_4569 = _4568;
	_4570 = input_gamma;
	float4 _4571 = F__tex2D_linearize(tex, _4569, _4570);
	float3 _4574 = w12_13_4379.xxx * _4571.xyz;
	float3 _4575 = sum_4399 + _4574;
	sum_4399 = _4575;
	float _4577 = 1.40000000e+01 + w14_15_ratio_4397;
	float2 _4579 = _4577.xx * dxdy;
	float2 _4580 = tex_uv + _4579;
	float2 _4581;
	float _4582;
	_4581 = _4580;
	_4582 = input_gamma;
	float4 _4583 = F__tex2D_linearize(tex, _4581, _4582);
	float3 _4586 = w14_15_4381.xxx * _4583.xyz;
	float3 _4587 = sum_4399 + _4586;
	sum_4399 = _4587;
	float3 _4589 = sum_4399 * weight_sum_inv_4364.xxx;
	return _4589;
}
float3 F__tex2Dblur25fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _4597 = sigma * sigma;
	float _4599 = 5.00000000e-01 / _4597;
	float denom_inv_4600 = _4599;
	float _4602 = -1.00000000e+00 * denom_inv_4600;
	float _4603 = exp(_4602);
	float w1_4604 = _4603;
	float _4606 = -4.00000000e+00 * denom_inv_4600;
	float _4607 = exp(_4606);
	float w2_4608 = _4607;
	float _4610 = -9.00000000e+00 * denom_inv_4600;
	float _4611 = exp(_4610);
	float w3_4612 = _4611;
	float _4614 = -1.60000000e+01 * denom_inv_4600;
	float _4615 = exp(_4614);
	float w4_4616 = _4615;
	float _4618 = -2.50000000e+01 * denom_inv_4600;
	float _4619 = exp(_4618);
	float w5_4620 = _4619;
	float _4622 = -3.60000000e+01 * denom_inv_4600;
	float _4623 = exp(_4622);
	float w6_4624 = _4623;
	float _4626 = -4.90000000e+01 * denom_inv_4600;
	float _4627 = exp(_4626);
	float w7_4628 = _4627;
	float _4630 = -6.40000000e+01 * denom_inv_4600;
	float _4631 = exp(_4630);
	float w8_4632 = _4631;
	float _4634 = -8.10000000e+01 * denom_inv_4600;
	float _4635 = exp(_4634);
	float w9_4636 = _4635;
	float _4638 = -1.00000000e+02 * denom_inv_4600;
	float _4639 = exp(_4638);
	float w10_4640 = _4639;
	float _4642 = -1.21000000e+02 * denom_inv_4600;
	float _4643 = exp(_4642);
	float w11_4644 = _4643;
	float _4646 = -1.44000000e+02 * denom_inv_4600;
	float _4647 = exp(_4646);
	float w12_4648 = _4647;
	float _4649;
	_4649 = sigma;
	float _4650 = F__get_fast_gaussian_weight_sum_inv(_4649);
	float weight_sum_inv_4651 = _4650;
	float _4652 = w1_4604 + w2_4608;
	float w1_2 = _4652;
	float _4654 = w3_4612 + w4_4616;
	float w3_4 = _4654;
	float _4656 = w5_4620 + w6_4624;
	float w5_6 = _4656;
	float _4658 = w7_4628 + w8_4632;
	float w7_8 = _4658;
	float _4660 = w9_4636 + w10_4640;
	float w9_10 = _4660;
	float _4662 = w11_4644 + w12_4648;
	float w11_12 = _4662;
	float _4664 = w2_4608 / w1_2;
	float w1_2_ratio = _4664;
	float _4666 = w4_4616 / w3_4;
	float w3_4_ratio = _4666;
	float _4668 = w6_4624 / w5_6;
	float w5_6_ratio = _4668;
	float _4670 = w8_4632 / w7_8;
	float w7_8_ratio = _4670;
	float _4672 = w10_4640 / w9_10;
	float w9_10_ratio = _4672;
	float _4674 = w12_4648 / w11_12;
	float w11_12_ratio = _4674;
	float3 sum_4677 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4679 = 1.10000000e+01 + w11_12_ratio;
	float2 _4681 = _4679.xx * dxdy;
	float2 _4682 = tex_uv - _4681;
	float2 _4683;
	float _4684;
	_4683 = _4682;
	_4684 = input_gamma;
	float4 _4685 = F__tex2D_linearize(tex, _4683, _4684);
	float3 _4688 = w11_12.xxx * _4685.xyz;
	float3 _4689 = sum_4677 + _4688;
	sum_4677 = _4689;
	float _4691 = 9.00000000e+00 + w9_10_ratio;
	float2 _4693 = _4691.xx * dxdy;
	float2 _4694 = tex_uv - _4693;
	float2 _4695;
	float _4696;
	_4695 = _4694;
	_4696 = input_gamma;
	float4 _4697 = F__tex2D_linearize(tex, _4695, _4696);
	float3 _4700 = w9_10.xxx * _4697.xyz;
	float3 _4701 = sum_4677 + _4700;
	sum_4677 = _4701;
	float _4703 = 7.00000000e+00 + w7_8_ratio;
	float2 _4705 = _4703.xx * dxdy;
	float2 _4706 = tex_uv - _4705;
	float2 _4707;
	float _4708;
	_4707 = _4706;
	_4708 = input_gamma;
	float4 _4709 = F__tex2D_linearize(tex, _4707, _4708);
	float3 _4712 = w7_8.xxx * _4709.xyz;
	float3 _4713 = sum_4677 + _4712;
	sum_4677 = _4713;
	float _4715 = 5.00000000e+00 + w5_6_ratio;
	float2 _4717 = _4715.xx * dxdy;
	float2 _4718 = tex_uv - _4717;
	float2 _4719;
	float _4720;
	_4719 = _4718;
	_4720 = input_gamma;
	float4 _4721 = F__tex2D_linearize(tex, _4719, _4720);
	float3 _4724 = w5_6.xxx * _4721.xyz;
	float3 _4725 = sum_4677 + _4724;
	sum_4677 = _4725;
	float _4727 = 3.00000000e+00 + w3_4_ratio;
	float2 _4729 = _4727.xx * dxdy;
	float2 _4730 = tex_uv - _4729;
	float2 _4731;
	float _4732;
	_4731 = _4730;
	_4732 = input_gamma;
	float4 _4733 = F__tex2D_linearize(tex, _4731, _4732);
	float3 _4736 = w3_4.xxx * _4733.xyz;
	float3 _4737 = sum_4677 + _4736;
	sum_4677 = _4737;
	float _4739 = 1.00000000e+00 + w1_2_ratio;
	float2 _4741 = _4739.xx * dxdy;
	float2 _4742 = tex_uv - _4741;
	float2 _4743;
	float _4744;
	_4743 = _4742;
	_4744 = input_gamma;
	float4 _4745 = F__tex2D_linearize(tex, _4743, _4744);
	float3 _4748 = w1_2.xxx * _4745.xyz;
	float3 _4749 = sum_4677 + _4748;
	sum_4677 = _4749;
	float2 _4750;
	float _4751;
	_4750 = tex_uv;
	_4751 = input_gamma;
	float4 _4752 = F__tex2D_linearize(tex, _4750, _4751);
	float3 _4755 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _4752.xyz;
	float3 _4756 = sum_4677 + _4755;
	sum_4677 = _4756;
	float _4758 = 1.00000000e+00 + w1_2_ratio;
	float2 _4760 = _4758.xx * dxdy;
	float2 _4761 = tex_uv + _4760;
	float2 _4762;
	float _4763;
	_4762 = _4761;
	_4763 = input_gamma;
	float4 _4764 = F__tex2D_linearize(tex, _4762, _4763);
	float3 _4767 = w1_2.xxx * _4764.xyz;
	float3 _4768 = sum_4677 + _4767;
	sum_4677 = _4768;
	float _4770 = 3.00000000e+00 + w3_4_ratio;
	float2 _4772 = _4770.xx * dxdy;
	float2 _4773 = tex_uv + _4772;
	float2 _4774;
	float _4775;
	_4774 = _4773;
	_4775 = input_gamma;
	float4 _4776 = F__tex2D_linearize(tex, _4774, _4775);
	float3 _4779 = w3_4.xxx * _4776.xyz;
	float3 _4780 = sum_4677 + _4779;
	sum_4677 = _4780;
	float _4782 = 5.00000000e+00 + w5_6_ratio;
	float2 _4784 = _4782.xx * dxdy;
	float2 _4785 = tex_uv + _4784;
	float2 _4786;
	float _4787;
	_4786 = _4785;
	_4787 = input_gamma;
	float4 _4788 = F__tex2D_linearize(tex, _4786, _4787);
	float3 _4791 = w5_6.xxx * _4788.xyz;
	float3 _4792 = sum_4677 + _4791;
	sum_4677 = _4792;
	float _4794 = 7.00000000e+00 + w7_8_ratio;
	float2 _4796 = _4794.xx * dxdy;
	float2 _4797 = tex_uv + _4796;
	float2 _4798;
	float _4799;
	_4798 = _4797;
	_4799 = input_gamma;
	float4 _4800 = F__tex2D_linearize(tex, _4798, _4799);
	float3 _4803 = w7_8.xxx * _4800.xyz;
	float3 _4804 = sum_4677 + _4803;
	sum_4677 = _4804;
	float _4806 = 9.00000000e+00 + w9_10_ratio;
	float2 _4808 = _4806.xx * dxdy;
	float2 _4809 = tex_uv + _4808;
	float2 _4810;
	float _4811;
	_4810 = _4809;
	_4811 = input_gamma;
	float4 _4812 = F__tex2D_linearize(tex, _4810, _4811);
	float3 _4815 = w9_10.xxx * _4812.xyz;
	float3 _4816 = sum_4677 + _4815;
	sum_4677 = _4816;
	float _4818 = 1.10000000e+01 + w11_12_ratio;
	float2 _4820 = _4818.xx * dxdy;
	float2 _4821 = tex_uv + _4820;
	float2 _4822;
	float _4823;
	_4822 = _4821;
	_4823 = input_gamma;
	float4 _4824 = F__tex2D_linearize(tex, _4822, _4823);
	float3 _4827 = w11_12.xxx * _4824.xyz;
	float3 _4828 = sum_4677 + _4827;
	sum_4677 = _4828;
	float3 _4830 = sum_4677 * weight_sum_inv_4651.xxx;
	return _4830;
}
float3 F__tex2Dblur17fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _4838 = sigma * sigma;
	float _4840 = 5.00000000e-01 / _4838;
	float denom_inv_4841 = _4840;
	float _4843 = -1.00000000e+00 * denom_inv_4841;
	float _4844 = exp(_4843);
	float w1_4845 = _4844;
	float _4847 = -4.00000000e+00 * denom_inv_4841;
	float _4848 = exp(_4847);
	float w2_4849 = _4848;
	float _4851 = -9.00000000e+00 * denom_inv_4841;
	float _4852 = exp(_4851);
	float w3_4853 = _4852;
	float _4855 = -1.60000000e+01 * denom_inv_4841;
	float _4856 = exp(_4855);
	float w4_4857 = _4856;
	float _4859 = -2.50000000e+01 * denom_inv_4841;
	float _4860 = exp(_4859);
	float w5_4861 = _4860;
	float _4863 = -3.60000000e+01 * denom_inv_4841;
	float _4864 = exp(_4863);
	float w6_4865 = _4864;
	float _4867 = -4.90000000e+01 * denom_inv_4841;
	float _4868 = exp(_4867);
	float w7_4869 = _4868;
	float _4871 = -6.40000000e+01 * denom_inv_4841;
	float _4872 = exp(_4871);
	float w8_4873 = _4872;
	float _4874;
	_4874 = sigma;
	float _4875 = F__get_fast_gaussian_weight_sum_inv(_4874);
	float weight_sum_inv_4876 = _4875;
	float _4877 = w1_4845 + w2_4849;
	float w1_2_4878 = _4877;
	float _4879 = w3_4853 + w4_4857;
	float w3_4_4880 = _4879;
	float _4881 = w5_4861 + w6_4865;
	float w5_6_4882 = _4881;
	float _4883 = w7_4869 + w8_4873;
	float w7_8_4884 = _4883;
	float _4885 = w2_4849 / w1_2_4878;
	float w1_2_ratio_4886 = _4885;
	float _4887 = w4_4857 / w3_4_4880;
	float w3_4_ratio_4888 = _4887;
	float _4889 = w6_4865 / w5_6_4882;
	float w5_6_ratio_4890 = _4889;
	float _4891 = w8_4873 / w7_8_4884;
	float w7_8_ratio_4892 = _4891;
	float3 sum_4894 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4896 = 7.00000000e+00 + w7_8_ratio_4892;
	float2 _4898 = _4896.xx * dxdy;
	float2 _4899 = tex_uv - _4898;
	float2 _4900;
	float _4901;
	_4900 = _4899;
	_4901 = input_gamma;
	float4 _4902 = F__tex2D_linearize(tex, _4900, _4901);
	float3 _4905 = w7_8_4884.xxx * _4902.xyz;
	float3 _4906 = sum_4894 + _4905;
	sum_4894 = _4906;
	float _4908 = 5.00000000e+00 + w5_6_ratio_4890;
	float2 _4910 = _4908.xx * dxdy;
	float2 _4911 = tex_uv - _4910;
	float2 _4912;
	float _4913;
	_4912 = _4911;
	_4913 = input_gamma;
	float4 _4914 = F__tex2D_linearize(tex, _4912, _4913);
	float3 _4917 = w5_6_4882.xxx * _4914.xyz;
	float3 _4918 = sum_4894 + _4917;
	sum_4894 = _4918;
	float _4920 = 3.00000000e+00 + w3_4_ratio_4888;
	float2 _4922 = _4920.xx * dxdy;
	float2 _4923 = tex_uv - _4922;
	float2 _4924;
	float _4925;
	_4924 = _4923;
	_4925 = input_gamma;
	float4 _4926 = F__tex2D_linearize(tex, _4924, _4925);
	float3 _4929 = w3_4_4880.xxx * _4926.xyz;
	float3 _4930 = sum_4894 + _4929;
	sum_4894 = _4930;
	float _4932 = 1.00000000e+00 + w1_2_ratio_4886;
	float2 _4934 = _4932.xx * dxdy;
	float2 _4935 = tex_uv - _4934;
	float2 _4936;
	float _4937;
	_4936 = _4935;
	_4937 = input_gamma;
	float4 _4938 = F__tex2D_linearize(tex, _4936, _4937);
	float3 _4941 = w1_2_4878.xxx * _4938.xyz;
	float3 _4942 = sum_4894 + _4941;
	sum_4894 = _4942;
	float2 _4943;
	float _4944;
	_4943 = tex_uv;
	_4944 = input_gamma;
	float4 _4945 = F__tex2D_linearize(tex, _4943, _4944);
	float3 _4948 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _4945.xyz;
	float3 _4949 = sum_4894 + _4948;
	sum_4894 = _4949;
	float _4951 = 1.00000000e+00 + w1_2_ratio_4886;
	float2 _4953 = _4951.xx * dxdy;
	float2 _4954 = tex_uv + _4953;
	float2 _4955;
	float _4956;
	_4955 = _4954;
	_4956 = input_gamma;
	float4 _4957 = F__tex2D_linearize(tex, _4955, _4956);
	float3 _4960 = w1_2_4878.xxx * _4957.xyz;
	float3 _4961 = sum_4894 + _4960;
	sum_4894 = _4961;
	float _4963 = 3.00000000e+00 + w3_4_ratio_4888;
	float2 _4965 = _4963.xx * dxdy;
	float2 _4966 = tex_uv + _4965;
	float2 _4967;
	float _4968;
	_4967 = _4966;
	_4968 = input_gamma;
	float4 _4969 = F__tex2D_linearize(tex, _4967, _4968);
	float3 _4972 = w3_4_4880.xxx * _4969.xyz;
	float3 _4973 = sum_4894 + _4972;
	sum_4894 = _4973;
	float _4975 = 5.00000000e+00 + w5_6_ratio_4890;
	float2 _4977 = _4975.xx * dxdy;
	float2 _4978 = tex_uv + _4977;
	float2 _4979;
	float _4980;
	_4979 = _4978;
	_4980 = input_gamma;
	float4 _4981 = F__tex2D_linearize(tex, _4979, _4980);
	float3 _4984 = w5_6_4882.xxx * _4981.xyz;
	float3 _4985 = sum_4894 + _4984;
	sum_4894 = _4985;
	float _4987 = 7.00000000e+00 + w7_8_ratio_4892;
	float2 _4989 = _4987.xx * dxdy;
	float2 _4990 = tex_uv + _4989;
	float2 _4991;
	float _4992;
	_4991 = _4990;
	_4992 = input_gamma;
	float4 _4993 = F__tex2D_linearize(tex, _4991, _4992);
	float3 _4996 = w7_8_4884.xxx * _4993.xyz;
	float3 _4997 = sum_4894 + _4996;
	sum_4894 = _4997;
	float3 _4999 = sum_4894 * weight_sum_inv_4876.xxx;
	return _4999;
}
float3 F__tex2Dblur3x3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5007 = sigma * sigma;
	float _5009 = 5.00000000e-01 / _5007;
	float denom_inv_5010 = _5009;
	float2 sample4_uv = tex_uv;
	float2 _5014 = float2(dxdy.x, 0.00000000e+00);
	float2 dx = _5014;
	float2 _5018 = float2(0.00000000e+00, dxdy.y);
	float2 dy = _5018;
	float2 _5020 = sample4_uv - dy;
	float2 sample1_uv = _5020;
	float2 _5022 = sample4_uv + dy;
	float2 sample7_uv = _5022;
	float2 _5024 = sample1_uv - dx;
	float2 _5025;
	float _5026;
	_5025 = _5024;
	_5026 = input_gamma;
	float4 _5027 = F__tex2D_linearize(tex, _5025, _5026);
	float3 sample0 = _5027.xyz;
	float2 _5030;
	float _5031;
	_5030 = sample1_uv;
	_5031 = input_gamma;
	float4 _5032 = F__tex2D_linearize(tex, _5030, _5031);
	float3 sample1 = _5032.xyz;
	float2 _5035 = sample1_uv + dx;
	float2 _5036;
	float _5037;
	_5036 = _5035;
	_5037 = input_gamma;
	float4 _5038 = F__tex2D_linearize(tex, _5036, _5037);
	float3 sample2 = _5038.xyz;
	float2 _5041 = sample4_uv - dx;
	float2 _5042;
	float _5043;
	_5042 = _5041;
	_5043 = input_gamma;
	float4 _5044 = F__tex2D_linearize(tex, _5042, _5043);
	float3 sample3 = _5044.xyz;
	float2 _5047;
	float _5048;
	_5047 = sample4_uv;
	_5048 = input_gamma;
	float4 _5049 = F__tex2D_linearize(tex, _5047, _5048);
	float3 sample4 = _5049.xyz;
	float2 _5052 = sample4_uv + dx;
	float2 _5053;
	float _5054;
	_5053 = _5052;
	_5054 = input_gamma;
	float4 _5055 = F__tex2D_linearize(tex, _5053, _5054);
	float3 sample5 = _5055.xyz;
	float2 _5058 = sample7_uv - dx;
	float2 _5059;
	float _5060;
	_5059 = _5058;
	_5060 = input_gamma;
	float4 _5061 = F__tex2D_linearize(tex, _5059, _5060);
	float3 sample6 = _5061.xyz;
	float2 _5064;
	float _5065;
	_5064 = sample7_uv;
	_5065 = input_gamma;
	float4 _5066 = F__tex2D_linearize(tex, _5064, _5065);
	float3 sample7 = _5066.xyz;
	float2 _5069 = sample7_uv + dx;
	float2 _5070;
	float _5071;
	_5070 = _5069;
	_5071 = input_gamma;
	float4 _5072 = F__tex2D_linearize(tex, _5070, _5071);
	float3 sample8 = _5072.xyz;
	float _5077 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _5078 = -_5077;
	float _5079 = _5078 * denom_inv_5010;
	float _5080 = exp(_5079);
	float w1_3_5_7 = _5080;
	float _5084 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5085 = -_5084;
	float _5086 = _5085 * denom_inv_5010;
	float _5087 = exp(_5086);
	float w0_2_6_8 = _5087;
	float _5089 = w1_3_5_7 + w0_2_6_8;
	float _5091 = 4.00000000e+00 * _5089;
	float _5093 = 1.00000000e+00 + _5091;
	float _5095 = 1.00000000e+00 / _5093;
	float weight_sum_inv_5096 = _5095;
	float3 _5098 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * sample4;
	float3 _5099 = sample1 + sample3;
	float3 _5100 = _5099 + sample5;
	float3 _5101 = _5100 + sample7;
	float3 _5103 = w1_3_5_7.xxx * _5101;
	float3 _5104 = _5098 + _5103;
	float3 _5105 = sample0 + sample2;
	float3 _5106 = _5105 + sample6;
	float3 _5107 = _5106 + sample8;
	float3 _5109 = w0_2_6_8.xxx * _5107;
	float3 _5110 = _5104 + _5109;
	float3 sum_5111 = _5110;
	float3 _5113 = sum_5111 * weight_sum_inv_5096.xxx;
	return _5113;
}
float3 F__tex2Dblur9x9(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5121 = sigma * sigma;
	float _5123 = 5.00000000e-01 / _5121;
	float denom_inv_5124 = _5123;
	float _5126 = -1.00000000e+00 * denom_inv_5124;
	float _5127 = exp(_5126);
	float w1off = _5127;
	float _5130 = -4.00000000e+00 * denom_inv_5124;
	float _5131 = exp(_5130);
	float w2off = _5131;
	float _5134 = -9.00000000e+00 * denom_inv_5124;
	float _5135 = exp(_5134);
	float w3off = _5135;
	float _5138 = -1.60000000e+01 * denom_inv_5124;
	float _5139 = exp(_5138);
	float w4off = _5139;
	float _5141 = w1off + w2off;
	float _5142 = w2off / _5141;
	float texel1to2ratio = _5142;
	float _5144 = w3off + w4off;
	float _5145 = w4off / _5144;
	float texel3to4ratio = _5145;
	float2 _5148 = float2(texel1to2ratio, 0.00000000e+00);
	float2 _5150 = float2(1.00000000e+00, 0.00000000e+00) + _5148;
	float2 sample1R_texel_offset = _5150;
	float2 _5153 = float2(texel3to4ratio, 0.00000000e+00);
	float2 _5155 = float2(3.00000000e+00, 0.00000000e+00) + _5153;
	float2 sample2R_texel_offset = _5155;
	float2 _5157 = float2(texel1to2ratio, texel1to2ratio);
	float2 _5159 = float2(1.00000000e+00, 1.00000000e+00) + _5157;
	float2 sample3d_texel_offset = _5159;
	float2 _5161 = float2(texel3to4ratio, texel1to2ratio);
	float2 _5163 = float2(3.00000000e+00, 1.00000000e+00) + _5161;
	float2 sample4d_texel_offset = _5163;
	float2 _5165 = float2(texel1to2ratio, texel3to4ratio);
	float2 _5167 = float2(1.00000000e+00, 3.00000000e+00) + _5165;
	float2 sample5d_texel_offset = _5167;
	float2 _5169 = float2(texel3to4ratio, texel3to4ratio);
	float2 _5171 = float2(3.00000000e+00, 3.00000000e+00) + _5169;
	float2 sample6d_texel_offset = _5171;
	float w1R1 = w1off;
	float w1R2 = w2off;
	float w2R1 = w3off;
	float w2R2 = w4off;
	float _5179 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5180 = -_5179;
	float _5181 = _5180 * denom_inv_5124;
	float _5182 = exp(_5181);
	float w3d1 = _5182;
	float _5186 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _5187 = -_5186;
	float _5188 = _5187 * denom_inv_5124;
	float _5189 = exp(_5188);
	float w3d2_3d3 = _5189;
	float _5193 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _5194 = -_5193;
	float _5195 = _5194 * denom_inv_5124;
	float _5196 = exp(_5195);
	float w3d4 = _5196;
	float _5200 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _5201 = -_5200;
	float _5202 = _5201 * denom_inv_5124;
	float _5203 = exp(_5202);
	float w4d1_5d1 = _5203;
	float _5207 = dot(float2(4.00000000e+00, 1.00000000e+00), float2(4.00000000e+00, 1.00000000e+00));
	float _5208 = -_5207;
	float _5209 = _5208 * denom_inv_5124;
	float _5210 = exp(_5209);
	float w4d2_5d3 = _5210;
	float _5214 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _5215 = -_5214;
	float _5216 = _5215 * denom_inv_5124;
	float _5217 = exp(_5216);
	float w4d3_5d2 = _5217;
	float _5221 = dot(float2(4.00000000e+00, 2.00000000e+00), float2(4.00000000e+00, 2.00000000e+00));
	float _5222 = -_5221;
	float _5223 = _5222 * denom_inv_5124;
	float _5224 = exp(_5223);
	float w4d4_5d4 = _5224;
	float _5228 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _5229 = -_5228;
	float _5230 = _5229 * denom_inv_5124;
	float _5231 = exp(_5230);
	float w6d1 = _5231;
	float _5235 = dot(float2(4.00000000e+00, 3.00000000e+00), float2(4.00000000e+00, 3.00000000e+00));
	float _5236 = -_5235;
	float _5237 = _5236 * denom_inv_5124;
	float _5238 = exp(_5237);
	float w6d2_6d3 = _5238;
	float _5242 = dot(float2(4.00000000e+00, 4.00000000e+00), float2(4.00000000e+00, 4.00000000e+00));
	float _5243 = -_5242;
	float _5244 = _5243 * denom_inv_5124;
	float _5245 = exp(_5244);
	float w6d4 = _5245;
	float _5247 = w1R1 + w1R2;
	float w1_5248 = _5247;
	float _5249 = w2R1 + w2R2;
	float w2_5250 = _5249;
	float _5252 = 2.00000000e+00 * w3d2_3d3;
	float _5253 = w3d1 + _5252;
	float _5254 = _5253 + w3d4;
	float w3_5255 = _5254;
	float _5256 = w4d1_5d1 + w4d2_5d3;
	float _5257 = _5256 + w4d3_5d2;
	float _5258 = _5257 + w4d4_5d4;
	float w4_5259 = _5258;
	float w5_5260 = w4_5259;
	float _5262 = 2.00000000e+00 * w6d2_6d3;
	float _5263 = w6d1 + _5262;
	float _5264 = _5263 + w6d4;
	float w6_5265 = _5264;
	float _5266 = w1_5248 + w2_5250;
	float _5267 = _5266 + w3_5255;
	float _5268 = _5267 + w4_5259;
	float _5269 = _5268 + w5_5260;
	float _5270 = _5269 + w6_5265;
	float _5272 = 4.00000000e+00 * _5270;
	float _5274 = 1.00000000e+00 + _5272;
	float _5276 = 1.00000000e+00 / _5274;
	float weight_sum_inv_5277 = _5276;
	float2 _5279 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x = _5279;
	float2 _5282 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y = _5282;
	float2 _5285 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy = _5285;
	float2 _5287;
	float _5288;
	_5287 = tex_uv;
	_5288 = input_gamma;
	float4 _5289 = F__tex2D_linearize(tex, _5287, _5288);
	float3 sample0C = _5289.xyz;
	float2 _5292 = dxdy * sample1R_texel_offset;
	float2 _5293 = tex_uv + _5292;
	float2 _5294;
	float _5295;
	_5294 = _5293;
	_5295 = input_gamma;
	float4 _5296 = F__tex2D_linearize(tex, _5294, _5295);
	float3 sample1R = _5296.xyz;
	float2 _5300 = dxdy * sample1R_texel_offset.yx;
	float2 _5301 = tex_uv + _5300;
	float2 _5302;
	float _5303;
	_5302 = _5301;
	_5303 = input_gamma;
	float4 _5304 = F__tex2D_linearize(tex, _5302, _5303);
	float3 sample1D = _5304.xyz;
	float2 _5307 = dxdy * sample1R_texel_offset;
	float2 _5308 = tex_uv - _5307;
	float2 _5309;
	float _5310;
	_5309 = _5308;
	_5310 = input_gamma;
	float4 _5311 = F__tex2D_linearize(tex, _5309, _5310);
	float3 sample1L = _5311.xyz;
	float2 _5315 = dxdy * sample1R_texel_offset.yx;
	float2 _5316 = tex_uv - _5315;
	float2 _5317;
	float _5318;
	_5317 = _5316;
	_5318 = input_gamma;
	float4 _5319 = F__tex2D_linearize(tex, _5317, _5318);
	float3 sample1U = _5319.xyz;
	float2 _5322 = dxdy * sample2R_texel_offset;
	float2 _5323 = tex_uv + _5322;
	float2 _5324;
	float _5325;
	_5324 = _5323;
	_5325 = input_gamma;
	float4 _5326 = F__tex2D_linearize(tex, _5324, _5325);
	float3 sample2R = _5326.xyz;
	float2 _5330 = dxdy * sample2R_texel_offset.yx;
	float2 _5331 = tex_uv + _5330;
	float2 _5332;
	float _5333;
	_5332 = _5331;
	_5333 = input_gamma;
	float4 _5334 = F__tex2D_linearize(tex, _5332, _5333);
	float3 sample2D = _5334.xyz;
	float2 _5337 = dxdy * sample2R_texel_offset;
	float2 _5338 = tex_uv - _5337;
	float2 _5339;
	float _5340;
	_5339 = _5338;
	_5340 = input_gamma;
	float4 _5341 = F__tex2D_linearize(tex, _5339, _5340);
	float3 sample2L = _5341.xyz;
	float2 _5345 = dxdy * sample2R_texel_offset.yx;
	float2 _5346 = tex_uv - _5345;
	float2 _5347;
	float _5348;
	_5347 = _5346;
	_5348 = input_gamma;
	float4 _5349 = F__tex2D_linearize(tex, _5347, _5348);
	float3 sample2U = _5349.xyz;
	float2 _5352 = dxdy * sample3d_texel_offset;
	float2 _5353 = tex_uv + _5352;
	float2 _5354;
	float _5355;
	_5354 = _5353;
	_5355 = input_gamma;
	float4 _5356 = F__tex2D_linearize(tex, _5354, _5355);
	float3 sample3d = _5356.xyz;
	float2 _5359 = dxdy_mirror_x * sample3d_texel_offset;
	float2 _5360 = tex_uv + _5359;
	float2 _5361;
	float _5362;
	_5361 = _5360;
	_5362 = input_gamma;
	float4 _5363 = F__tex2D_linearize(tex, _5361, _5362);
	float3 sample3c = _5363.xyz;
	float2 _5366 = dxdy_mirror_y * sample3d_texel_offset;
	float2 _5367 = tex_uv + _5366;
	float2 _5368;
	float _5369;
	_5368 = _5367;
	_5369 = input_gamma;
	float4 _5370 = F__tex2D_linearize(tex, _5368, _5369);
	float3 sample3b = _5370.xyz;
	float2 _5373 = dxdy_mirror_xy * sample3d_texel_offset;
	float2 _5374 = tex_uv + _5373;
	float2 _5375;
	float _5376;
	_5375 = _5374;
	_5376 = input_gamma;
	float4 _5377 = F__tex2D_linearize(tex, _5375, _5376);
	float3 sample3a = _5377.xyz;
	float2 _5380 = dxdy * sample4d_texel_offset;
	float2 _5381 = tex_uv + _5380;
	float2 _5382;
	float _5383;
	_5382 = _5381;
	_5383 = input_gamma;
	float4 _5384 = F__tex2D_linearize(tex, _5382, _5383);
	float3 sample4d = _5384.xyz;
	float2 _5387 = dxdy_mirror_x * sample4d_texel_offset;
	float2 _5388 = tex_uv + _5387;
	float2 _5389;
	float _5390;
	_5389 = _5388;
	_5390 = input_gamma;
	float4 _5391 = F__tex2D_linearize(tex, _5389, _5390);
	float3 sample4c = _5391.xyz;
	float2 _5394 = dxdy_mirror_y * sample4d_texel_offset;
	float2 _5395 = tex_uv + _5394;
	float2 _5396;
	float _5397;
	_5396 = _5395;
	_5397 = input_gamma;
	float4 _5398 = F__tex2D_linearize(tex, _5396, _5397);
	float3 sample4b = _5398.xyz;
	float2 _5401 = dxdy_mirror_xy * sample4d_texel_offset;
	float2 _5402 = tex_uv + _5401;
	float2 _5403;
	float _5404;
	_5403 = _5402;
	_5404 = input_gamma;
	float4 _5405 = F__tex2D_linearize(tex, _5403, _5404);
	float3 sample4a = _5405.xyz;
	float2 _5408 = dxdy * sample5d_texel_offset;
	float2 _5409 = tex_uv + _5408;
	float2 _5410;
	float _5411;
	_5410 = _5409;
	_5411 = input_gamma;
	float4 _5412 = F__tex2D_linearize(tex, _5410, _5411);
	float3 sample5d = _5412.xyz;
	float2 _5415 = dxdy_mirror_x * sample5d_texel_offset;
	float2 _5416 = tex_uv + _5415;
	float2 _5417;
	float _5418;
	_5417 = _5416;
	_5418 = input_gamma;
	float4 _5419 = F__tex2D_linearize(tex, _5417, _5418);
	float3 sample5c = _5419.xyz;
	float2 _5422 = dxdy_mirror_y * sample5d_texel_offset;
	float2 _5423 = tex_uv + _5422;
	float2 _5424;
	float _5425;
	_5424 = _5423;
	_5425 = input_gamma;
	float4 _5426 = F__tex2D_linearize(tex, _5424, _5425);
	float3 sample5b = _5426.xyz;
	float2 _5429 = dxdy_mirror_xy * sample5d_texel_offset;
	float2 _5430 = tex_uv + _5429;
	float2 _5431;
	float _5432;
	_5431 = _5430;
	_5432 = input_gamma;
	float4 _5433 = F__tex2D_linearize(tex, _5431, _5432);
	float3 sample5a = _5433.xyz;
	float2 _5436 = dxdy * sample6d_texel_offset;
	float2 _5437 = tex_uv + _5436;
	float2 _5438;
	float _5439;
	_5438 = _5437;
	_5439 = input_gamma;
	float4 _5440 = F__tex2D_linearize(tex, _5438, _5439);
	float3 sample6d = _5440.xyz;
	float2 _5443 = dxdy_mirror_x * sample6d_texel_offset;
	float2 _5444 = tex_uv + _5443;
	float2 _5445;
	float _5446;
	_5445 = _5444;
	_5446 = input_gamma;
	float4 _5447 = F__tex2D_linearize(tex, _5445, _5446);
	float3 sample6c = _5447.xyz;
	float2 _5450 = dxdy_mirror_y * sample6d_texel_offset;
	float2 _5451 = tex_uv + _5450;
	float2 _5452;
	float _5453;
	_5452 = _5451;
	_5453 = input_gamma;
	float4 _5454 = F__tex2D_linearize(tex, _5452, _5453);
	float3 sample6b = _5454.xyz;
	float2 _5457 = dxdy_mirror_xy * sample6d_texel_offset;
	float2 _5458 = tex_uv + _5457;
	float2 _5459;
	float _5460;
	_5459 = _5458;
	_5460 = input_gamma;
	float4 _5461 = F__tex2D_linearize(tex, _5459, _5460);
	float3 sample6a = _5461.xyz;
	float3 _5465 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * sample0C;
	float3 sum_5466 = _5465;
	float3 _5467 = sample1R + sample1D;
	float3 _5468 = _5467 + sample1L;
	float3 _5469 = _5468 + sample1U;
	float3 _5471 = w1_5248.xxx * _5469;
	float3 _5472 = sum_5466 + _5471;
	sum_5466 = _5472;
	float3 _5473 = sample2R + sample2D;
	float3 _5474 = _5473 + sample2L;
	float3 _5475 = _5474 + sample2U;
	float3 _5477 = w2_5250.xxx * _5475;
	float3 _5478 = sum_5466 + _5477;
	sum_5466 = _5478;
	float3 _5479 = sample3d + sample3c;
	float3 _5480 = _5479 + sample3b;
	float3 _5481 = _5480 + sample3a;
	float3 _5483 = w3_5255.xxx * _5481;
	float3 _5484 = sum_5466 + _5483;
	sum_5466 = _5484;
	float3 _5485 = sample4d + sample4c;
	float3 _5486 = _5485 + sample4b;
	float3 _5487 = _5486 + sample4a;
	float3 _5489 = w4_5259.xxx * _5487;
	float3 _5490 = sum_5466 + _5489;
	sum_5466 = _5490;
	float3 _5491 = sample5d + sample5c;
	float3 _5492 = _5491 + sample5b;
	float3 _5493 = _5492 + sample5a;
	float3 _5495 = w5_5260.xxx * _5493;
	float3 _5496 = sum_5466 + _5495;
	sum_5466 = _5496;
	float3 _5497 = sample6d + sample6c;
	float3 _5498 = _5497 + sample6b;
	float3 _5499 = _5498 + sample6a;
	float3 _5501 = w6_5265.xxx * _5499;
	float3 _5502 = sum_5466 + _5501;
	sum_5466 = _5502;
	float3 _5504 = sum_5466 * weight_sum_inv_5277.xxx;
	return _5504;
}
float3 F__tex2Dblur7x7(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5512 = sigma * sigma;
	float _5514 = 5.00000000e-01 / _5512;
	float denom_inv_5515 = _5514;
	float _5517 = -1.00000000e+00 * denom_inv_5515;
	float _5518 = exp(_5517);
	float w1off_5519 = _5518;
	float _5521 = -4.00000000e+00 * denom_inv_5515;
	float _5522 = exp(_5521);
	float w2off_5523 = _5522;
	float _5525 = -9.00000000e+00 * denom_inv_5515;
	float _5526 = exp(_5525);
	float w3off_5527 = _5526;
	float _5529 = 5.00000000e-01 + w1off_5519;
	float _5530 = w1off_5519 / _5529;
	float texel0to1ratio = _5530;
	float _5532 = w2off_5523 + w3off_5527;
	float _5533 = w3off_5527 / _5532;
	float texel2to3ratio = _5533;
	float2 _5535 = float2(texel0to1ratio, texel0to1ratio);
	float2 sample1d_texel_offset = _5535;
	float2 _5537 = float2(texel2to3ratio, texel0to1ratio);
	float2 _5539 = float2(2.00000000e+00, 0.00000000e+00) + _5537;
	float2 sample2d_texel_offset = _5539;
	float2 _5541 = float2(texel0to1ratio, texel2to3ratio);
	float2 _5543 = float2(0.00000000e+00, 2.00000000e+00) + _5541;
	float2 sample3d_texel_offset_5544 = _5543;
	float2 _5545 = float2(texel2to3ratio, texel2to3ratio);
	float2 _5547 = float2(2.00000000e+00, 2.00000000e+00) + _5545;
	float2 sample4d_texel_offset_5548 = _5547;
	float _5551 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _5552 = -_5551;
	float _5553 = _5552 * denom_inv_5515;
	float _5554 = exp(_5553);
	float w1bd2_1cd3 = _5554;
	float _5558 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _5559 = -_5558;
	float _5560 = _5559 * denom_inv_5515;
	float _5561 = exp(_5560);
	float w2bd1_3cd1 = _5561;
	float _5565 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _5566 = -_5565;
	float _5567 = _5566 * denom_inv_5515;
	float _5568 = exp(_5567);
	float w2bd2_3cd2 = _5568;
	float _5572 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5573 = -_5572;
	float _5574 = _5573 * denom_inv_5515;
	float _5575 = exp(_5574);
	float w1d4 = _5575;
	float _5579 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _5580 = -_5579;
	float _5581 = _5580 * denom_inv_5515;
	float _5582 = exp(_5581);
	float w2d3_3d2 = _5582;
	float _5586 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _5587 = -_5586;
	float _5588 = _5587 * denom_inv_5515;
	float _5589 = exp(_5588);
	float w2d4_3d4 = _5589;
	float _5593 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _5594 = -_5593;
	float _5595 = _5594 * denom_inv_5515;
	float _5596 = exp(_5595);
	float w4d1 = _5596;
	float _5600 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _5601 = -_5600;
	float _5602 = _5601 * denom_inv_5515;
	float _5603 = exp(_5602);
	float w4d2_4d3 = _5603;
	float _5607 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _5608 = -_5607;
	float _5609 = _5608 * denom_inv_5515;
	float _5610 = exp(_5609);
	float w4d4 = _5610;
	float _5613 = 2.50000000e-01 + w1bd2_1cd3;
	float _5614 = _5613 + w1d4;
	float w1_5615 = _5614;
	float _5616 = w2bd1_3cd1 + w2bd2_3cd2;
	float _5618 = _5616 * 5.00000000e-01;
	float _5619 = _5618 + w2d3_3d2;
	float _5620 = _5619 + w2d4_3d4;
	float w2_3_5621 = _5620;
	float _5623 = 2.00000000e+00 * w4d2_4d3;
	float _5624 = w4d1 + _5623;
	float _5625 = _5624 + w4d4;
	float w4_5626 = _5625;
	float _5628 = 2.00000000e+00 * w2_3_5621;
	float _5629 = w1_5615 + _5628;
	float _5630 = _5629 + w4_5626;
	float _5632 = 4.00000000e+00 * _5630;
	float _5634 = 1.00000000e+00 / _5632;
	float weight_sum_inv_5635 = _5634;
	float2 _5637 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x_5638 = _5637;
	float2 _5640 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y_5641 = _5640;
	float2 _5643 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy_5644 = _5643;
	float2 _5645 = dxdy_mirror_xy_5644 * sample1d_texel_offset;
	float2 _5646 = tex_uv + _5645;
	float2 _5647;
	float _5648;
	_5647 = _5646;
	_5648 = input_gamma;
	float4 _5649 = F__tex2D_linearize(tex, _5647, _5648);
	float3 sample1a = _5649.xyz;
	float2 _5652 = dxdy_mirror_xy_5644 * sample2d_texel_offset;
	float2 _5653 = tex_uv + _5652;
	float2 _5654;
	float _5655;
	_5654 = _5653;
	_5655 = input_gamma;
	float4 _5656 = F__tex2D_linearize(tex, _5654, _5655);
	float3 sample2a = _5656.xyz;
	float2 _5659 = dxdy_mirror_xy_5644 * sample3d_texel_offset_5544;
	float2 _5660 = tex_uv + _5659;
	float2 _5661;
	float _5662;
	_5661 = _5660;
	_5662 = input_gamma;
	float4 _5663 = F__tex2D_linearize(tex, _5661, _5662);
	float3 sample3a_5665 = _5663.xyz;
	float2 _5666 = dxdy_mirror_xy_5644 * sample4d_texel_offset_5548;
	float2 _5667 = tex_uv + _5666;
	float2 _5668;
	float _5669;
	_5668 = _5667;
	_5669 = input_gamma;
	float4 _5670 = F__tex2D_linearize(tex, _5668, _5669);
	float3 sample4a_5672 = _5670.xyz;
	float2 _5673 = dxdy_mirror_y_5641 * sample1d_texel_offset;
	float2 _5674 = tex_uv + _5673;
	float2 _5675;
	float _5676;
	_5675 = _5674;
	_5676 = input_gamma;
	float4 _5677 = F__tex2D_linearize(tex, _5675, _5676);
	float3 sample1b = _5677.xyz;
	float2 _5680 = dxdy_mirror_y_5641 * sample2d_texel_offset;
	float2 _5681 = tex_uv + _5680;
	float2 _5682;
	float _5683;
	_5682 = _5681;
	_5683 = input_gamma;
	float4 _5684 = F__tex2D_linearize(tex, _5682, _5683);
	float3 sample2b = _5684.xyz;
	float2 _5687 = dxdy_mirror_y_5641 * sample3d_texel_offset_5544;
	float2 _5688 = tex_uv + _5687;
	float2 _5689;
	float _5690;
	_5689 = _5688;
	_5690 = input_gamma;
	float4 _5691 = F__tex2D_linearize(tex, _5689, _5690);
	float3 sample3b_5693 = _5691.xyz;
	float2 _5694 = dxdy_mirror_y_5641 * sample4d_texel_offset_5548;
	float2 _5695 = tex_uv + _5694;
	float2 _5696;
	float _5697;
	_5696 = _5695;
	_5697 = input_gamma;
	float4 _5698 = F__tex2D_linearize(tex, _5696, _5697);
	float3 sample4b_5700 = _5698.xyz;
	float2 _5701 = dxdy_mirror_x_5638 * sample1d_texel_offset;
	float2 _5702 = tex_uv + _5701;
	float2 _5703;
	float _5704;
	_5703 = _5702;
	_5704 = input_gamma;
	float4 _5705 = F__tex2D_linearize(tex, _5703, _5704);
	float3 sample1c = _5705.xyz;
	float2 _5708 = dxdy_mirror_x_5638 * sample2d_texel_offset;
	float2 _5709 = tex_uv + _5708;
	float2 _5710;
	float _5711;
	_5710 = _5709;
	_5711 = input_gamma;
	float4 _5712 = F__tex2D_linearize(tex, _5710, _5711);
	float3 sample2c = _5712.xyz;
	float2 _5715 = dxdy_mirror_x_5638 * sample3d_texel_offset_5544;
	float2 _5716 = tex_uv + _5715;
	float2 _5717;
	float _5718;
	_5717 = _5716;
	_5718 = input_gamma;
	float4 _5719 = F__tex2D_linearize(tex, _5717, _5718);
	float3 sample3c_5721 = _5719.xyz;
	float2 _5722 = dxdy_mirror_x_5638 * sample4d_texel_offset_5548;
	float2 _5723 = tex_uv + _5722;
	float2 _5724;
	float _5725;
	_5724 = _5723;
	_5725 = input_gamma;
	float4 _5726 = F__tex2D_linearize(tex, _5724, _5725);
	float3 sample4c_5728 = _5726.xyz;
	float2 _5729 = dxdy * sample1d_texel_offset;
	float2 _5730 = tex_uv + _5729;
	float2 _5731;
	float _5732;
	_5731 = _5730;
	_5732 = input_gamma;
	float4 _5733 = F__tex2D_linearize(tex, _5731, _5732);
	float3 sample1d = _5733.xyz;
	float2 _5736 = dxdy * sample2d_texel_offset;
	float2 _5737 = tex_uv + _5736;
	float2 _5738;
	float _5739;
	_5738 = _5737;
	_5739 = input_gamma;
	float4 _5740 = F__tex2D_linearize(tex, _5738, _5739);
	float3 sample2d = _5740.xyz;
	float2 _5743 = dxdy * sample3d_texel_offset_5544;
	float2 _5744 = tex_uv + _5743;
	float2 _5745;
	float _5746;
	_5745 = _5744;
	_5746 = input_gamma;
	float4 _5747 = F__tex2D_linearize(tex, _5745, _5746);
	float3 sample3d_5749 = _5747.xyz;
	float2 _5750 = dxdy * sample4d_texel_offset_5548;
	float2 _5751 = tex_uv + _5750;
	float2 _5752;
	float _5753;
	_5752 = _5751;
	_5753 = input_gamma;
	float4 _5754 = F__tex2D_linearize(tex, _5752, _5753);
	float3 sample4d_5756 = _5754.xyz;
	float3 sum_5758 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 _5759 = sample1a + sample1b;
	float3 _5760 = _5759 + sample1c;
	float3 _5761 = _5760 + sample1d;
	float3 _5763 = w1_5615.xxx * _5761;
	float3 _5764 = sum_5758 + _5763;
	sum_5758 = _5764;
	float3 _5765 = sample2a + sample2b;
	float3 _5766 = _5765 + sample2c;
	float3 _5767 = _5766 + sample2d;
	float3 _5769 = w2_3_5621.xxx * _5767;
	float3 _5770 = sum_5758 + _5769;
	sum_5758 = _5770;
	float3 _5771 = sample3a_5665 + sample3b_5693;
	float3 _5772 = _5771 + sample3c_5721;
	float3 _5773 = _5772 + sample3d_5749;
	float3 _5775 = w2_3_5621.xxx * _5773;
	float3 _5776 = sum_5758 + _5775;
	sum_5758 = _5776;
	float3 _5777 = sample4a_5672 + sample4b_5700;
	float3 _5778 = _5777 + sample4c_5728;
	float3 _5779 = _5778 + sample4d_5756;
	float3 _5781 = w4_5626.xxx * _5779;
	float3 _5782 = sum_5758 + _5781;
	sum_5758 = _5782;
	float3 _5784 = sum_5758 * weight_sum_inv_5635.xxx;
	return _5784;
}
float3 F__tex2Dblur5x5(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5792 = sigma * sigma;
	float _5794 = 5.00000000e-01 / _5792;
	float denom_inv_5795 = _5794;
	float _5797 = -1.00000000e+00 * denom_inv_5795;
	float _5798 = exp(_5797);
	float w1off_5799 = _5798;
	float _5801 = -4.00000000e+00 * denom_inv_5795;
	float _5802 = exp(_5801);
	float w2off_5803 = _5802;
	float _5804 = w1off_5799 + w2off_5803;
	float _5805 = w2off_5803 / _5804;
	float texel1to2ratio_5806 = _5805;
	float2 _5808 = float2(texel1to2ratio_5806, 0.00000000e+00);
	float2 _5810 = float2(1.00000000e+00, 0.00000000e+00) + _5808;
	float2 sample1R_texel_offset_5811 = _5810;
	float2 _5812 = float2(texel1to2ratio_5806, texel1to2ratio_5806);
	float2 _5814 = float2(1.00000000e+00, 1.00000000e+00) + _5812;
	float2 sample2d_texel_offset_5815 = _5814;
	float w1R1_5816 = w1off_5799;
	float w1R2_5817 = w2off_5803;
	float _5820 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5821 = -_5820;
	float _5822 = _5821 * denom_inv_5795;
	float _5823 = exp(_5822);
	float w2d1 = _5823;
	float _5827 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _5828 = -_5827;
	float _5829 = _5828 * denom_inv_5795;
	float _5830 = exp(_5829);
	float w2d2_3 = _5830;
	float _5834 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _5835 = -_5834;
	float _5836 = _5835 * denom_inv_5795;
	float _5837 = exp(_5836);
	float w2d4 = _5837;
	float _5839 = w1R1_5816 + w1R2_5817;
	float w1_5840 = _5839;
	float _5842 = 2.00000000e+00 * w2d2_3;
	float _5843 = w2d1 + _5842;
	float _5844 = _5843 + w2d4;
	float w2_5845 = _5844;
	float _5846 = w1_5840 + w2_5845;
	float _5848 = 4.00000000e+00 * _5846;
	float _5850 = 1.00000000e+00 + _5848;
	float _5852 = 1.00000000e+00 / _5850;
	float weight_sum_inv_5853 = _5852;
	float2 _5855 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x_5856 = _5855;
	float2 _5858 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y_5859 = _5858;
	float2 _5861 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy_5862 = _5861;
	float2 _5863;
	float _5864;
	_5863 = tex_uv;
	_5864 = input_gamma;
	float4 _5865 = F__tex2D_linearize(tex, _5863, _5864);
	float3 sample0C_5867 = _5865.xyz;
	float2 _5868 = dxdy * sample1R_texel_offset_5811;
	float2 _5869 = tex_uv + _5868;
	float2 _5870;
	float _5871;
	_5870 = _5869;
	_5871 = input_gamma;
	float4 _5872 = F__tex2D_linearize(tex, _5870, _5871);
	float3 sample1R_5874 = _5872.xyz;
	float2 _5876 = dxdy * sample1R_texel_offset_5811.yx;
	float2 _5877 = tex_uv + _5876;
	float2 _5878;
	float _5879;
	_5878 = _5877;
	_5879 = input_gamma;
	float4 _5880 = F__tex2D_linearize(tex, _5878, _5879);
	float3 sample1D_5882 = _5880.xyz;
	float2 _5883 = dxdy * sample1R_texel_offset_5811;
	float2 _5884 = tex_uv - _5883;
	float2 _5885;
	float _5886;
	_5885 = _5884;
	_5886 = input_gamma;
	float4 _5887 = F__tex2D_linearize(tex, _5885, _5886);
	float3 sample1L_5889 = _5887.xyz;
	float2 _5891 = dxdy * sample1R_texel_offset_5811.yx;
	float2 _5892 = tex_uv - _5891;
	float2 _5893;
	float _5894;
	_5893 = _5892;
	_5894 = input_gamma;
	float4 _5895 = F__tex2D_linearize(tex, _5893, _5894);
	float3 sample1U_5897 = _5895.xyz;
	float2 _5898 = dxdy * sample2d_texel_offset_5815;
	float2 _5899 = tex_uv + _5898;
	float2 _5900;
	float _5901;
	_5900 = _5899;
	_5901 = input_gamma;
	float4 _5902 = F__tex2D_linearize(tex, _5900, _5901);
	float3 sample2d_5904 = _5902.xyz;
	float2 _5905 = dxdy_mirror_x_5856 * sample2d_texel_offset_5815;
	float2 _5906 = tex_uv + _5905;
	float2 _5907;
	float _5908;
	_5907 = _5906;
	_5908 = input_gamma;
	float4 _5909 = F__tex2D_linearize(tex, _5907, _5908);
	float3 sample2c_5911 = _5909.xyz;
	float2 _5912 = dxdy_mirror_y_5859 * sample2d_texel_offset_5815;
	float2 _5913 = tex_uv + _5912;
	float2 _5914;
	float _5915;
	_5914 = _5913;
	_5915 = input_gamma;
	float4 _5916 = F__tex2D_linearize(tex, _5914, _5915);
	float3 sample2b_5918 = _5916.xyz;
	float2 _5919 = dxdy_mirror_xy_5862 * sample2d_texel_offset_5815;
	float2 _5920 = tex_uv + _5919;
	float2 _5921;
	float _5922;
	_5921 = _5920;
	_5922 = input_gamma;
	float4 _5923 = F__tex2D_linearize(tex, _5921, _5922);
	float3 sample2a_5925 = _5923.xyz;
	float3 _5927 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * sample0C_5867;
	float3 sum_5928 = _5927;
	float3 _5929 = sample1R_5874 + sample1D_5882;
	float3 _5930 = _5929 + sample1L_5889;
	float3 _5931 = _5930 + sample1U_5897;
	float3 _5933 = w1_5840.xxx * _5931;
	float3 _5934 = sum_5928 + _5933;
	sum_5928 = _5934;
	float3 _5935 = sample2a_5925 + sample2b_5918;
	float3 _5936 = _5935 + sample2c_5911;
	float3 _5937 = _5936 + sample2d_5904;
	float3 _5939 = w2_5845.xxx * _5937;
	float3 _5940 = sum_5928 + _5939;
	sum_5928 = _5940;
	float3 _5942 = sum_5928 * weight_sum_inv_5853.xxx;
	return _5942;
}
float3 F__tex2Dblur3x3(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5950 = sigma * sigma;
	float _5952 = 5.00000000e-01 / _5950;
	float denom_inv_5953 = _5952;
	float _5955 = -1.00000000e+00 * denom_inv_5953;
	float _5956 = exp(_5955);
	float w1off_5957 = _5956;
	float _5959 = 5.00000000e-01 + w1off_5957;
	float _5960 = w1off_5957 / _5959;
	float texel0to1ratio_5961 = _5960;
	float2 _5962 = float2(texel0to1ratio_5961, texel0to1ratio_5961);
	float2 sample0d_texel_offset = _5962;
	float2 _5965 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x_5966 = _5965;
	float2 _5968 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y_5969 = _5968;
	float2 _5971 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy_5972 = _5971;
	float2 _5973 = dxdy_mirror_xy_5972 * sample0d_texel_offset;
	float2 _5974 = tex_uv + _5973;
	float2 _5975;
	float _5976;
	_5975 = _5974;
	_5976 = input_gamma;
	float4 _5977 = F__tex2D_linearize(tex, _5975, _5976);
	float3 sample0a = _5977.xyz;
	float2 _5980 = dxdy_mirror_y_5969 * sample0d_texel_offset;
	float2 _5981 = tex_uv + _5980;
	float2 _5982;
	float _5983;
	_5982 = _5981;
	_5983 = input_gamma;
	float4 _5984 = F__tex2D_linearize(tex, _5982, _5983);
	float3 sample0b = _5984.xyz;
	float2 _5987 = dxdy_mirror_x_5966 * sample0d_texel_offset;
	float2 _5988 = tex_uv + _5987;
	float2 _5989;
	float _5990;
	_5989 = _5988;
	_5990 = input_gamma;
	float4 _5991 = F__tex2D_linearize(tex, _5989, _5990);
	float3 sample0c = _5991.xyz;
	float2 _5994 = dxdy * sample0d_texel_offset;
	float2 _5995 = tex_uv + _5994;
	float2 _5996;
	float _5997;
	_5996 = _5995;
	_5997 = input_gamma;
	float4 _5998 = F__tex2D_linearize(tex, _5996, _5997);
	float3 sample0d = _5998.xyz;
	float3 _6001 = sample0a + sample0b;
	float3 _6002 = _6001 + sample0c;
	float3 _6003 = _6002 + sample0d;
	float3 _6005 = float3(2.50000000e-01, 2.50000000e-01, 2.50000000e-01) * _6003;
	return _6005;
}
float3 F__tex2Dblur12x12shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _6014 = sigma * sigma;
	float _6016 = 5.00000000e-01 / _6014;
	float denom_inv_6017 = _6016;
	float _6019 = -2.50000000e-01 * denom_inv_6017;
	float _6020 = exp(_6019);
	float w0_5off = _6020;
	float _6023 = -1.00000000e+00 * denom_inv_6017;
	float _6024 = exp(_6023);
	float w1off_6025 = _6024;
	float _6027 = -2.25000000e+00 * denom_inv_6017;
	float _6028 = exp(_6027);
	float w1_5off = _6028;
	float _6031 = -4.00000000e+00 * denom_inv_6017;
	float _6032 = exp(_6031);
	float w2off_6033 = _6032;
	float _6035 = -6.25000000e+00 * denom_inv_6017;
	float _6036 = exp(_6035);
	float w2_5off = _6036;
	float _6039 = -1.22500000e+01 * denom_inv_6017;
	float _6040 = exp(_6039);
	float w3_5off = _6040;
	float _6043 = -2.02500000e+01 * denom_inv_6017;
	float _6044 = exp(_6043);
	float w4_5off = _6044;
	float _6047 = -3.02500000e+01 * denom_inv_6017;
	float _6048 = exp(_6047);
	float w5_5off = _6048;
	float _6050 = w0_5off + w1_5off;
	float _6051 = w1_5off / _6050;
	float _6054 = lerp(_6051, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_6055 = _6054;
	float _6056 = w2_5off + w3_5off;
	float _6057 = w3_5off / _6056;
	float _6060 = lerp(_6057, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_6061 = _6060;
	float _6062 = w4_5off + w5_5off;
	float _6063 = w5_5off / _6062;
	float _6066 = lerp(_6063, 5.00000000e-01, 5.00000000e-01);
	float texel4to5ratio = _6066;
	float _6069 = 1.00000000e+00 + w1off_6025;
	float _6070 = w1off_6025 / _6069;
	float texel0to1ratio_nearest = _6070;
	float _6072 = w1off_6025 + w2off_6033;
	float _6073 = w2off_6033 / _6072;
	float texel1to2ratio_nearest = _6073;
	float2 _6075 = float2(texel0to1ratio_nearest, texel0to1ratio_nearest);
	float2 _6077 = float2(0.00000000e+00, 0.00000000e+00) + _6075;
	float2 sample0curr_texel_offset = _6077;
	float _6079 = -texel1to2ratio_nearest;
	float2 _6080 = float2(_6079, texel0to1ratio_nearest);
	float2 _6082 = float2(-1.00000000e+00, 0.00000000e+00) + _6080;
	float2 sample0adjx_texel_offset = _6082;
	float _6084 = -texel1to2ratio_nearest;
	float2 _6085 = float2(texel0to1ratio_nearest, _6084);
	float2 _6087 = float2(0.00000000e+00, -1.00000000e+00) + _6085;
	float2 sample0adjy_texel_offset = _6087;
	float _6089 = -texel1to2ratio_nearest;
	float _6090 = -texel1to2ratio_nearest;
	float2 _6091 = float2(_6089, _6090);
	float2 _6093 = float2(-1.00000000e+00, -1.00000000e+00) + _6091;
	float2 sample0diag_texel_offset = _6093;
	float2 _6095 = float2(texel2to3ratio_6061, texel0to1ratio_6055);
	float2 _6097 = float2(2.00000000e+00, 0.00000000e+00) + _6095;
	float2 sample1_texel_offset = _6097;
	float2 _6099 = float2(texel4to5ratio, texel0to1ratio_6055);
	float2 _6101 = float2(4.00000000e+00, 0.00000000e+00) + _6099;
	float2 sample2_texel_offset = _6101;
	float2 _6103 = float2(texel0to1ratio_6055, texel2to3ratio_6061);
	float2 _6105 = float2(0.00000000e+00, 2.00000000e+00) + _6103;
	float2 sample3_texel_offset = _6105;
	float2 _6107 = float2(texel2to3ratio_6061, texel2to3ratio_6061);
	float2 _6109 = float2(2.00000000e+00, 2.00000000e+00) + _6107;
	float2 sample4_texel_offset = _6109;
	float2 _6111 = float2(texel4to5ratio, texel2to3ratio_6061);
	float2 _6113 = float2(4.00000000e+00, 2.00000000e+00) + _6111;
	float2 sample5_texel_offset = _6113;
	float2 _6115 = float2(texel0to1ratio_6055, texel4to5ratio);
	float2 _6117 = float2(0.00000000e+00, 4.00000000e+00) + _6115;
	float2 sample6_texel_offset = _6117;
	float2 _6119 = float2(texel2to3ratio_6061, texel4to5ratio);
	float2 _6121 = float2(2.00000000e+00, 4.00000000e+00) + _6119;
	float2 sample7_texel_offset = _6121;
	float2 _6123 = float2(texel4to5ratio, texel4to5ratio);
	float2 _6125 = float2(4.00000000e+00, 4.00000000e+00) + _6123;
	float2 sample8_texel_offset = _6125;
	float _6129 = dot(float2(-6.00000000e+00, -6.00000000e+00), float2(-6.00000000e+00, -6.00000000e+00));
	float _6130 = -_6129;
	float _6131 = _6130 * denom_inv_6017;
	float _6132 = exp(_6131);
	float _6135 = dot(float2(-5.00000000e+00, -6.00000000e+00), float2(-5.00000000e+00, -6.00000000e+00));
	float _6136 = -_6135;
	float _6137 = _6136 * denom_inv_6017;
	float _6138 = exp(_6137);
	float _6139 = _6132 + _6138;
	float _6142 = dot(float2(-6.00000000e+00, -5.00000000e+00), float2(-6.00000000e+00, -5.00000000e+00));
	float _6143 = -_6142;
	float _6144 = _6143 * denom_inv_6017;
	float _6145 = exp(_6144);
	float _6146 = _6139 + _6145;
	float _6149 = dot(float2(-5.00000000e+00, -5.00000000e+00), float2(-5.00000000e+00, -5.00000000e+00));
	float _6150 = -_6149;
	float _6151 = _6150 * denom_inv_6017;
	float _6152 = exp(_6151);
	float _6153 = _6146 + _6152;
	float w8diag = _6153;
	float _6157 = dot(float2(-4.00000000e+00, -6.00000000e+00), float2(-4.00000000e+00, -6.00000000e+00));
	float _6158 = -_6157;
	float _6159 = _6158 * denom_inv_6017;
	float _6160 = exp(_6159);
	float _6163 = dot(float2(-3.00000000e+00, -6.00000000e+00), float2(-3.00000000e+00, -6.00000000e+00));
	float _6164 = -_6163;
	float _6165 = _6164 * denom_inv_6017;
	float _6166 = exp(_6165);
	float _6167 = _6160 + _6166;
	float _6170 = dot(float2(-4.00000000e+00, -5.00000000e+00), float2(-4.00000000e+00, -5.00000000e+00));
	float _6171 = -_6170;
	float _6172 = _6171 * denom_inv_6017;
	float _6173 = exp(_6172);
	float _6174 = _6167 + _6173;
	float _6177 = dot(float2(-3.00000000e+00, -5.00000000e+00), float2(-3.00000000e+00, -5.00000000e+00));
	float _6178 = -_6177;
	float _6179 = _6178 * denom_inv_6017;
	float _6180 = exp(_6179);
	float _6181 = _6174 + _6180;
	float w7diag = _6181;
	float _6185 = dot(float2(-2.00000000e+00, -6.00000000e+00), float2(-2.00000000e+00, -6.00000000e+00));
	float _6186 = -_6185;
	float _6187 = _6186 * denom_inv_6017;
	float _6188 = exp(_6187);
	float _6191 = dot(float2(-1.00000000e+00, -6.00000000e+00), float2(-1.00000000e+00, -6.00000000e+00));
	float _6192 = -_6191;
	float _6193 = _6192 * denom_inv_6017;
	float _6194 = exp(_6193);
	float _6195 = _6188 + _6194;
	float _6198 = dot(float2(-2.00000000e+00, -5.00000000e+00), float2(-2.00000000e+00, -5.00000000e+00));
	float _6199 = -_6198;
	float _6200 = _6199 * denom_inv_6017;
	float _6201 = exp(_6200);
	float _6202 = _6195 + _6201;
	float _6205 = dot(float2(-1.00000000e+00, -5.00000000e+00), float2(-1.00000000e+00, -5.00000000e+00));
	float _6206 = -_6205;
	float _6207 = _6206 * denom_inv_6017;
	float _6208 = exp(_6207);
	float _6209 = _6202 + _6208;
	float w6diag = _6209;
	float _6213 = dot(float2(0.00000000e+00, -6.00000000e+00), float2(0.00000000e+00, -6.00000000e+00));
	float _6214 = -_6213;
	float _6215 = _6214 * denom_inv_6017;
	float _6216 = exp(_6215);
	float _6219 = dot(float2(1.00000000e+00, -6.00000000e+00), float2(1.00000000e+00, -6.00000000e+00));
	float _6220 = -_6219;
	float _6221 = _6220 * denom_inv_6017;
	float _6222 = exp(_6221);
	float _6223 = _6216 + _6222;
	float _6226 = dot(float2(0.00000000e+00, -5.00000000e+00), float2(0.00000000e+00, -5.00000000e+00));
	float _6227 = -_6226;
	float _6228 = _6227 * denom_inv_6017;
	float _6229 = exp(_6228);
	float _6230 = _6223 + _6229;
	float _6233 = dot(float2(1.00000000e+00, -5.00000000e+00), float2(1.00000000e+00, -5.00000000e+00));
	float _6234 = -_6233;
	float _6235 = _6234 * denom_inv_6017;
	float _6236 = exp(_6235);
	float _6237 = _6230 + _6236;
	float w6adjy = _6237;
	float _6241 = dot(float2(2.00000000e+00, -6.00000000e+00), float2(2.00000000e+00, -6.00000000e+00));
	float _6242 = -_6241;
	float _6243 = _6242 * denom_inv_6017;
	float _6244 = exp(_6243);
	float _6247 = dot(float2(3.00000000e+00, -6.00000000e+00), float2(3.00000000e+00, -6.00000000e+00));
	float _6248 = -_6247;
	float _6249 = _6248 * denom_inv_6017;
	float _6250 = exp(_6249);
	float _6251 = _6244 + _6250;
	float _6254 = dot(float2(2.00000000e+00, -5.00000000e+00), float2(2.00000000e+00, -5.00000000e+00));
	float _6255 = -_6254;
	float _6256 = _6255 * denom_inv_6017;
	float _6257 = exp(_6256);
	float _6258 = _6251 + _6257;
	float _6261 = dot(float2(3.00000000e+00, -5.00000000e+00), float2(3.00000000e+00, -5.00000000e+00));
	float _6262 = -_6261;
	float _6263 = _6262 * denom_inv_6017;
	float _6264 = exp(_6263);
	float _6265 = _6258 + _6264;
	float w7adjy = _6265;
	float _6269 = dot(float2(4.00000000e+00, -6.00000000e+00), float2(4.00000000e+00, -6.00000000e+00));
	float _6270 = -_6269;
	float _6271 = _6270 * denom_inv_6017;
	float _6272 = exp(_6271);
	float _6275 = dot(float2(5.00000000e+00, -6.00000000e+00), float2(5.00000000e+00, -6.00000000e+00));
	float _6276 = -_6275;
	float _6277 = _6276 * denom_inv_6017;
	float _6278 = exp(_6277);
	float _6279 = _6272 + _6278;
	float _6282 = dot(float2(4.00000000e+00, -5.00000000e+00), float2(4.00000000e+00, -5.00000000e+00));
	float _6283 = -_6282;
	float _6284 = _6283 * denom_inv_6017;
	float _6285 = exp(_6284);
	float _6286 = _6279 + _6285;
	float _6289 = dot(float2(5.00000000e+00, -5.00000000e+00), float2(5.00000000e+00, -5.00000000e+00));
	float _6290 = -_6289;
	float _6291 = _6290 * denom_inv_6017;
	float _6292 = exp(_6291);
	float _6293 = _6286 + _6292;
	float w8adjy = _6293;
	float _6297 = dot(float2(-6.00000000e+00, -4.00000000e+00), float2(-6.00000000e+00, -4.00000000e+00));
	float _6298 = -_6297;
	float _6299 = _6298 * denom_inv_6017;
	float _6300 = exp(_6299);
	float _6303 = dot(float2(-5.00000000e+00, -4.00000000e+00), float2(-5.00000000e+00, -4.00000000e+00));
	float _6304 = -_6303;
	float _6305 = _6304 * denom_inv_6017;
	float _6306 = exp(_6305);
	float _6307 = _6300 + _6306;
	float _6310 = dot(float2(-6.00000000e+00, -3.00000000e+00), float2(-6.00000000e+00, -3.00000000e+00));
	float _6311 = -_6310;
	float _6312 = _6311 * denom_inv_6017;
	float _6313 = exp(_6312);
	float _6314 = _6307 + _6313;
	float _6317 = dot(float2(-5.00000000e+00, -3.00000000e+00), float2(-5.00000000e+00, -3.00000000e+00));
	float _6318 = -_6317;
	float _6319 = _6318 * denom_inv_6017;
	float _6320 = exp(_6319);
	float _6321 = _6314 + _6320;
	float w5diag = _6321;
	float _6325 = dot(float2(-4.00000000e+00, -4.00000000e+00), float2(-4.00000000e+00, -4.00000000e+00));
	float _6326 = -_6325;
	float _6327 = _6326 * denom_inv_6017;
	float _6328 = exp(_6327);
	float _6331 = dot(float2(-3.00000000e+00, -4.00000000e+00), float2(-3.00000000e+00, -4.00000000e+00));
	float _6332 = -_6331;
	float _6333 = _6332 * denom_inv_6017;
	float _6334 = exp(_6333);
	float _6335 = _6328 + _6334;
	float _6338 = dot(float2(-4.00000000e+00, -3.00000000e+00), float2(-4.00000000e+00, -3.00000000e+00));
	float _6339 = -_6338;
	float _6340 = _6339 * denom_inv_6017;
	float _6341 = exp(_6340);
	float _6342 = _6335 + _6341;
	float _6345 = dot(float2(-3.00000000e+00, -3.00000000e+00), float2(-3.00000000e+00, -3.00000000e+00));
	float _6346 = -_6345;
	float _6347 = _6346 * denom_inv_6017;
	float _6348 = exp(_6347);
	float _6349 = _6342 + _6348;
	float w4diag = _6349;
	float _6353 = dot(float2(-2.00000000e+00, -4.00000000e+00), float2(-2.00000000e+00, -4.00000000e+00));
	float _6354 = -_6353;
	float _6355 = _6354 * denom_inv_6017;
	float _6356 = exp(_6355);
	float _6359 = dot(float2(-1.00000000e+00, -4.00000000e+00), float2(-1.00000000e+00, -4.00000000e+00));
	float _6360 = -_6359;
	float _6361 = _6360 * denom_inv_6017;
	float _6362 = exp(_6361);
	float _6363 = _6356 + _6362;
	float _6366 = dot(float2(-2.00000000e+00, -3.00000000e+00), float2(-2.00000000e+00, -3.00000000e+00));
	float _6367 = -_6366;
	float _6368 = _6367 * denom_inv_6017;
	float _6369 = exp(_6368);
	float _6370 = _6363 + _6369;
	float _6373 = dot(float2(-1.00000000e+00, -3.00000000e+00), float2(-1.00000000e+00, -3.00000000e+00));
	float _6374 = -_6373;
	float _6375 = _6374 * denom_inv_6017;
	float _6376 = exp(_6375);
	float _6377 = _6370 + _6376;
	float w3diag = _6377;
	float _6381 = dot(float2(0.00000000e+00, -4.00000000e+00), float2(0.00000000e+00, -4.00000000e+00));
	float _6382 = -_6381;
	float _6383 = _6382 * denom_inv_6017;
	float _6384 = exp(_6383);
	float _6387 = dot(float2(1.00000000e+00, -4.00000000e+00), float2(1.00000000e+00, -4.00000000e+00));
	float _6388 = -_6387;
	float _6389 = _6388 * denom_inv_6017;
	float _6390 = exp(_6389);
	float _6391 = _6384 + _6390;
	float _6394 = dot(float2(0.00000000e+00, -3.00000000e+00), float2(0.00000000e+00, -3.00000000e+00));
	float _6395 = -_6394;
	float _6396 = _6395 * denom_inv_6017;
	float _6397 = exp(_6396);
	float _6398 = _6391 + _6397;
	float _6401 = dot(float2(1.00000000e+00, -3.00000000e+00), float2(1.00000000e+00, -3.00000000e+00));
	float _6402 = -_6401;
	float _6403 = _6402 * denom_inv_6017;
	float _6404 = exp(_6403);
	float _6405 = _6398 + _6404;
	float w3adjy = _6405;
	float _6409 = dot(float2(2.00000000e+00, -4.00000000e+00), float2(2.00000000e+00, -4.00000000e+00));
	float _6410 = -_6409;
	float _6411 = _6410 * denom_inv_6017;
	float _6412 = exp(_6411);
	float _6415 = dot(float2(3.00000000e+00, -4.00000000e+00), float2(3.00000000e+00, -4.00000000e+00));
	float _6416 = -_6415;
	float _6417 = _6416 * denom_inv_6017;
	float _6418 = exp(_6417);
	float _6419 = _6412 + _6418;
	float _6422 = dot(float2(2.00000000e+00, -3.00000000e+00), float2(2.00000000e+00, -3.00000000e+00));
	float _6423 = -_6422;
	float _6424 = _6423 * denom_inv_6017;
	float _6425 = exp(_6424);
	float _6426 = _6419 + _6425;
	float _6429 = dot(float2(3.00000000e+00, -3.00000000e+00), float2(3.00000000e+00, -3.00000000e+00));
	float _6430 = -_6429;
	float _6431 = _6430 * denom_inv_6017;
	float _6432 = exp(_6431);
	float _6433 = _6426 + _6432;
	float w4adjy = _6433;
	float _6437 = dot(float2(4.00000000e+00, -4.00000000e+00), float2(4.00000000e+00, -4.00000000e+00));
	float _6438 = -_6437;
	float _6439 = _6438 * denom_inv_6017;
	float _6440 = exp(_6439);
	float _6443 = dot(float2(5.00000000e+00, -4.00000000e+00), float2(5.00000000e+00, -4.00000000e+00));
	float _6444 = -_6443;
	float _6445 = _6444 * denom_inv_6017;
	float _6446 = exp(_6445);
	float _6447 = _6440 + _6446;
	float _6450 = dot(float2(4.00000000e+00, -3.00000000e+00), float2(4.00000000e+00, -3.00000000e+00));
	float _6451 = -_6450;
	float _6452 = _6451 * denom_inv_6017;
	float _6453 = exp(_6452);
	float _6454 = _6447 + _6453;
	float _6457 = dot(float2(5.00000000e+00, -3.00000000e+00), float2(5.00000000e+00, -3.00000000e+00));
	float _6458 = -_6457;
	float _6459 = _6458 * denom_inv_6017;
	float _6460 = exp(_6459);
	float _6461 = _6454 + _6460;
	float w5adjy = _6461;
	float _6465 = dot(float2(-6.00000000e+00, -2.00000000e+00), float2(-6.00000000e+00, -2.00000000e+00));
	float _6466 = -_6465;
	float _6467 = _6466 * denom_inv_6017;
	float _6468 = exp(_6467);
	float _6471 = dot(float2(-5.00000000e+00, -2.00000000e+00), float2(-5.00000000e+00, -2.00000000e+00));
	float _6472 = -_6471;
	float _6473 = _6472 * denom_inv_6017;
	float _6474 = exp(_6473);
	float _6475 = _6468 + _6474;
	float _6478 = dot(float2(-6.00000000e+00, -1.00000000e+00), float2(-6.00000000e+00, -1.00000000e+00));
	float _6479 = -_6478;
	float _6480 = _6479 * denom_inv_6017;
	float _6481 = exp(_6480);
	float _6482 = _6475 + _6481;
	float _6485 = dot(float2(-5.00000000e+00, -1.00000000e+00), float2(-5.00000000e+00, -1.00000000e+00));
	float _6486 = -_6485;
	float _6487 = _6486 * denom_inv_6017;
	float _6488 = exp(_6487);
	float _6489 = _6482 + _6488;
	float w2diag = _6489;
	float _6493 = dot(float2(-4.00000000e+00, -2.00000000e+00), float2(-4.00000000e+00, -2.00000000e+00));
	float _6494 = -_6493;
	float _6495 = _6494 * denom_inv_6017;
	float _6496 = exp(_6495);
	float _6499 = dot(float2(-3.00000000e+00, -2.00000000e+00), float2(-3.00000000e+00, -2.00000000e+00));
	float _6500 = -_6499;
	float _6501 = _6500 * denom_inv_6017;
	float _6502 = exp(_6501);
	float _6503 = _6496 + _6502;
	float _6506 = dot(float2(-4.00000000e+00, -1.00000000e+00), float2(-4.00000000e+00, -1.00000000e+00));
	float _6507 = -_6506;
	float _6508 = _6507 * denom_inv_6017;
	float _6509 = exp(_6508);
	float _6510 = _6503 + _6509;
	float _6513 = dot(float2(-3.00000000e+00, -1.00000000e+00), float2(-3.00000000e+00, -1.00000000e+00));
	float _6514 = -_6513;
	float _6515 = _6514 * denom_inv_6017;
	float _6516 = exp(_6515);
	float _6517 = _6510 + _6516;
	float w1diag = _6517;
	float _6521 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _6522 = -_6521;
	float _6523 = _6522 * denom_inv_6017;
	float _6524 = exp(_6523);
	float _6527 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _6528 = -_6527;
	float _6529 = _6528 * denom_inv_6017;
	float _6530 = exp(_6529);
	float _6531 = _6524 + _6530;
	float _6534 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _6535 = -_6534;
	float _6536 = _6535 * denom_inv_6017;
	float _6537 = exp(_6536);
	float _6538 = _6531 + _6537;
	float _6541 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _6542 = -_6541;
	float _6543 = _6542 * denom_inv_6017;
	float _6544 = exp(_6543);
	float _6545 = _6538 + _6544;
	float w0diag = _6545;
	float _6549 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _6550 = -_6549;
	float _6551 = _6550 * denom_inv_6017;
	float _6552 = exp(_6551);
	float _6555 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _6556 = -_6555;
	float _6557 = _6556 * denom_inv_6017;
	float _6558 = exp(_6557);
	float _6559 = _6552 + _6558;
	float _6562 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _6563 = -_6562;
	float _6564 = _6563 * denom_inv_6017;
	float _6565 = exp(_6564);
	float _6566 = _6559 + _6565;
	float _6569 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _6570 = -_6569;
	float _6571 = _6570 * denom_inv_6017;
	float _6572 = exp(_6571);
	float _6573 = _6566 + _6572;
	float w0adjy = _6573;
	float _6577 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _6578 = -_6577;
	float _6579 = _6578 * denom_inv_6017;
	float _6580 = exp(_6579);
	float _6583 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _6584 = -_6583;
	float _6585 = _6584 * denom_inv_6017;
	float _6586 = exp(_6585);
	float _6587 = _6580 + _6586;
	float _6590 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _6591 = -_6590;
	float _6592 = _6591 * denom_inv_6017;
	float _6593 = exp(_6592);
	float _6594 = _6587 + _6593;
	float _6597 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _6598 = -_6597;
	float _6599 = _6598 * denom_inv_6017;
	float _6600 = exp(_6599);
	float _6601 = _6594 + _6600;
	float w1adjy = _6601;
	float _6605 = dot(float2(4.00000000e+00, -2.00000000e+00), float2(4.00000000e+00, -2.00000000e+00));
	float _6606 = -_6605;
	float _6607 = _6606 * denom_inv_6017;
	float _6608 = exp(_6607);
	float _6611 = dot(float2(5.00000000e+00, -2.00000000e+00), float2(5.00000000e+00, -2.00000000e+00));
	float _6612 = -_6611;
	float _6613 = _6612 * denom_inv_6017;
	float _6614 = exp(_6613);
	float _6615 = _6608 + _6614;
	float _6618 = dot(float2(4.00000000e+00, -1.00000000e+00), float2(4.00000000e+00, -1.00000000e+00));
	float _6619 = -_6618;
	float _6620 = _6619 * denom_inv_6017;
	float _6621 = exp(_6620);
	float _6622 = _6615 + _6621;
	float _6625 = dot(float2(5.00000000e+00, -1.00000000e+00), float2(5.00000000e+00, -1.00000000e+00));
	float _6626 = -_6625;
	float _6627 = _6626 * denom_inv_6017;
	float _6628 = exp(_6627);
	float _6629 = _6622 + _6628;
	float w2adjy = _6629;
	float _6633 = dot(float2(-6.00000000e+00, 0.00000000e+00), float2(-6.00000000e+00, 0.00000000e+00));
	float _6634 = -_6633;
	float _6635 = _6634 * denom_inv_6017;
	float _6636 = exp(_6635);
	float _6639 = dot(float2(-5.00000000e+00, 0.00000000e+00), float2(-5.00000000e+00, 0.00000000e+00));
	float _6640 = -_6639;
	float _6641 = _6640 * denom_inv_6017;
	float _6642 = exp(_6641);
	float _6643 = _6636 + _6642;
	float _6646 = dot(float2(-6.00000000e+00, 1.00000000e+00), float2(-6.00000000e+00, 1.00000000e+00));
	float _6647 = -_6646;
	float _6648 = _6647 * denom_inv_6017;
	float _6649 = exp(_6648);
	float _6650 = _6643 + _6649;
	float _6653 = dot(float2(-5.00000000e+00, 1.00000000e+00), float2(-5.00000000e+00, 1.00000000e+00));
	float _6654 = -_6653;
	float _6655 = _6654 * denom_inv_6017;
	float _6656 = exp(_6655);
	float _6657 = _6650 + _6656;
	float w2adjx = _6657;
	float _6661 = dot(float2(-4.00000000e+00, 0.00000000e+00), float2(-4.00000000e+00, 0.00000000e+00));
	float _6662 = -_6661;
	float _6663 = _6662 * denom_inv_6017;
	float _6664 = exp(_6663);
	float _6667 = dot(float2(-3.00000000e+00, 0.00000000e+00), float2(-3.00000000e+00, 0.00000000e+00));
	float _6668 = -_6667;
	float _6669 = _6668 * denom_inv_6017;
	float _6670 = exp(_6669);
	float _6671 = _6664 + _6670;
	float _6674 = dot(float2(-4.00000000e+00, 1.00000000e+00), float2(-4.00000000e+00, 1.00000000e+00));
	float _6675 = -_6674;
	float _6676 = _6675 * denom_inv_6017;
	float _6677 = exp(_6676);
	float _6678 = _6671 + _6677;
	float _6681 = dot(float2(-3.00000000e+00, 1.00000000e+00), float2(-3.00000000e+00, 1.00000000e+00));
	float _6682 = -_6681;
	float _6683 = _6682 * denom_inv_6017;
	float _6684 = exp(_6683);
	float _6685 = _6678 + _6684;
	float w1adjx = _6685;
	float _6689 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _6690 = -_6689;
	float _6691 = _6690 * denom_inv_6017;
	float _6692 = exp(_6691);
	float _6695 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _6696 = -_6695;
	float _6697 = _6696 * denom_inv_6017;
	float _6698 = exp(_6697);
	float _6699 = _6692 + _6698;
	float _6702 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _6703 = -_6702;
	float _6704 = _6703 * denom_inv_6017;
	float _6705 = exp(_6704);
	float _6706 = _6699 + _6705;
	float _6709 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _6710 = -_6709;
	float _6711 = _6710 * denom_inv_6017;
	float _6712 = exp(_6711);
	float _6713 = _6706 + _6712;
	float w0adjx = _6713;
	float _6717 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _6718 = -_6717;
	float _6719 = _6718 * denom_inv_6017;
	float _6720 = exp(_6719);
	float _6723 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _6724 = -_6723;
	float _6725 = _6724 * denom_inv_6017;
	float _6726 = exp(_6725);
	float _6727 = _6720 + _6726;
	float _6730 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _6731 = -_6730;
	float _6732 = _6731 * denom_inv_6017;
	float _6733 = exp(_6732);
	float _6734 = _6727 + _6733;
	float _6737 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _6738 = -_6737;
	float _6739 = _6738 * denom_inv_6017;
	float _6740 = exp(_6739);
	float _6741 = _6734 + _6740;
	float w0curr = _6741;
	float _6745 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _6746 = -_6745;
	float _6747 = _6746 * denom_inv_6017;
	float _6748 = exp(_6747);
	float _6751 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _6752 = -_6751;
	float _6753 = _6752 * denom_inv_6017;
	float _6754 = exp(_6753);
	float _6755 = _6748 + _6754;
	float _6758 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _6759 = -_6758;
	float _6760 = _6759 * denom_inv_6017;
	float _6761 = exp(_6760);
	float _6762 = _6755 + _6761;
	float _6765 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _6766 = -_6765;
	float _6767 = _6766 * denom_inv_6017;
	float _6768 = exp(_6767);
	float _6769 = _6762 + _6768;
	float w1curr = _6769;
	float _6773 = dot(float2(4.00000000e+00, 0.00000000e+00), float2(4.00000000e+00, 0.00000000e+00));
	float _6774 = -_6773;
	float _6775 = _6774 * denom_inv_6017;
	float _6776 = exp(_6775);
	float _6779 = dot(float2(5.00000000e+00, 0.00000000e+00), float2(5.00000000e+00, 0.00000000e+00));
	float _6780 = -_6779;
	float _6781 = _6780 * denom_inv_6017;
	float _6782 = exp(_6781);
	float _6783 = _6776 + _6782;
	float _6786 = dot(float2(4.00000000e+00, 1.00000000e+00), float2(4.00000000e+00, 1.00000000e+00));
	float _6787 = -_6786;
	float _6788 = _6787 * denom_inv_6017;
	float _6789 = exp(_6788);
	float _6790 = _6783 + _6789;
	float _6793 = dot(float2(5.00000000e+00, 1.00000000e+00), float2(5.00000000e+00, 1.00000000e+00));
	float _6794 = -_6793;
	float _6795 = _6794 * denom_inv_6017;
	float _6796 = exp(_6795);
	float _6797 = _6790 + _6796;
	float w2curr = _6797;
	float _6801 = dot(float2(-6.00000000e+00, 2.00000000e+00), float2(-6.00000000e+00, 2.00000000e+00));
	float _6802 = -_6801;
	float _6803 = _6802 * denom_inv_6017;
	float _6804 = exp(_6803);
	float _6807 = dot(float2(-5.00000000e+00, 2.00000000e+00), float2(-5.00000000e+00, 2.00000000e+00));
	float _6808 = -_6807;
	float _6809 = _6808 * denom_inv_6017;
	float _6810 = exp(_6809);
	float _6811 = _6804 + _6810;
	float _6814 = dot(float2(-6.00000000e+00, 3.00000000e+00), float2(-6.00000000e+00, 3.00000000e+00));
	float _6815 = -_6814;
	float _6816 = _6815 * denom_inv_6017;
	float _6817 = exp(_6816);
	float _6818 = _6811 + _6817;
	float _6821 = dot(float2(-5.00000000e+00, 3.00000000e+00), float2(-5.00000000e+00, 3.00000000e+00));
	float _6822 = -_6821;
	float _6823 = _6822 * denom_inv_6017;
	float _6824 = exp(_6823);
	float _6825 = _6818 + _6824;
	float w5adjx = _6825;
	float _6829 = dot(float2(-4.00000000e+00, 2.00000000e+00), float2(-4.00000000e+00, 2.00000000e+00));
	float _6830 = -_6829;
	float _6831 = _6830 * denom_inv_6017;
	float _6832 = exp(_6831);
	float _6835 = dot(float2(-3.00000000e+00, 2.00000000e+00), float2(-3.00000000e+00, 2.00000000e+00));
	float _6836 = -_6835;
	float _6837 = _6836 * denom_inv_6017;
	float _6838 = exp(_6837);
	float _6839 = _6832 + _6838;
	float _6842 = dot(float2(-4.00000000e+00, 3.00000000e+00), float2(-4.00000000e+00, 3.00000000e+00));
	float _6843 = -_6842;
	float _6844 = _6843 * denom_inv_6017;
	float _6845 = exp(_6844);
	float _6846 = _6839 + _6845;
	float _6849 = dot(float2(-3.00000000e+00, 3.00000000e+00), float2(-3.00000000e+00, 3.00000000e+00));
	float _6850 = -_6849;
	float _6851 = _6850 * denom_inv_6017;
	float _6852 = exp(_6851);
	float _6853 = _6846 + _6852;
	float w4adjx = _6853;
	float _6857 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _6858 = -_6857;
	float _6859 = _6858 * denom_inv_6017;
	float _6860 = exp(_6859);
	float _6863 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _6864 = -_6863;
	float _6865 = _6864 * denom_inv_6017;
	float _6866 = exp(_6865);
	float _6867 = _6860 + _6866;
	float _6870 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _6871 = -_6870;
	float _6872 = _6871 * denom_inv_6017;
	float _6873 = exp(_6872);
	float _6874 = _6867 + _6873;
	float _6877 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _6878 = -_6877;
	float _6879 = _6878 * denom_inv_6017;
	float _6880 = exp(_6879);
	float _6881 = _6874 + _6880;
	float w3adjx = _6881;
	float _6885 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _6886 = -_6885;
	float _6887 = _6886 * denom_inv_6017;
	float _6888 = exp(_6887);
	float _6891 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _6892 = -_6891;
	float _6893 = _6892 * denom_inv_6017;
	float _6894 = exp(_6893);
	float _6895 = _6888 + _6894;
	float _6898 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _6899 = -_6898;
	float _6900 = _6899 * denom_inv_6017;
	float _6901 = exp(_6900);
	float _6902 = _6895 + _6901;
	float _6905 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _6906 = -_6905;
	float _6907 = _6906 * denom_inv_6017;
	float _6908 = exp(_6907);
	float _6909 = _6902 + _6908;
	float w3curr = _6909;
	float _6913 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _6914 = -_6913;
	float _6915 = _6914 * denom_inv_6017;
	float _6916 = exp(_6915);
	float _6919 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _6920 = -_6919;
	float _6921 = _6920 * denom_inv_6017;
	float _6922 = exp(_6921);
	float _6923 = _6916 + _6922;
	float _6926 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _6927 = -_6926;
	float _6928 = _6927 * denom_inv_6017;
	float _6929 = exp(_6928);
	float _6930 = _6923 + _6929;
	float _6933 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _6934 = -_6933;
	float _6935 = _6934 * denom_inv_6017;
	float _6936 = exp(_6935);
	float _6937 = _6930 + _6936;
	float w4curr = _6937;
	float _6941 = dot(float2(4.00000000e+00, 2.00000000e+00), float2(4.00000000e+00, 2.00000000e+00));
	float _6942 = -_6941;
	float _6943 = _6942 * denom_inv_6017;
	float _6944 = exp(_6943);
	float _6947 = dot(float2(5.00000000e+00, 2.00000000e+00), float2(5.00000000e+00, 2.00000000e+00));
	float _6948 = -_6947;
	float _6949 = _6948 * denom_inv_6017;
	float _6950 = exp(_6949);
	float _6951 = _6944 + _6950;
	float _6954 = dot(float2(4.00000000e+00, 3.00000000e+00), float2(4.00000000e+00, 3.00000000e+00));
	float _6955 = -_6954;
	float _6956 = _6955 * denom_inv_6017;
	float _6957 = exp(_6956);
	float _6958 = _6951 + _6957;
	float _6961 = dot(float2(5.00000000e+00, 3.00000000e+00), float2(5.00000000e+00, 3.00000000e+00));
	float _6962 = -_6961;
	float _6963 = _6962 * denom_inv_6017;
	float _6964 = exp(_6963);
	float _6965 = _6958 + _6964;
	float w5curr = _6965;
	float _6969 = dot(float2(-6.00000000e+00, 4.00000000e+00), float2(-6.00000000e+00, 4.00000000e+00));
	float _6970 = -_6969;
	float _6971 = _6970 * denom_inv_6017;
	float _6972 = exp(_6971);
	float _6975 = dot(float2(-5.00000000e+00, 4.00000000e+00), float2(-5.00000000e+00, 4.00000000e+00));
	float _6976 = -_6975;
	float _6977 = _6976 * denom_inv_6017;
	float _6978 = exp(_6977);
	float _6979 = _6972 + _6978;
	float _6982 = dot(float2(-6.00000000e+00, 5.00000000e+00), float2(-6.00000000e+00, 5.00000000e+00));
	float _6983 = -_6982;
	float _6984 = _6983 * denom_inv_6017;
	float _6985 = exp(_6984);
	float _6986 = _6979 + _6985;
	float _6989 = dot(float2(-5.00000000e+00, 5.00000000e+00), float2(-5.00000000e+00, 5.00000000e+00));
	float _6990 = -_6989;
	float _6991 = _6990 * denom_inv_6017;
	float _6992 = exp(_6991);
	float _6993 = _6986 + _6992;
	float w8adjx = _6993;
	float _6997 = dot(float2(-4.00000000e+00, 4.00000000e+00), float2(-4.00000000e+00, 4.00000000e+00));
	float _6998 = -_6997;
	float _6999 = _6998 * denom_inv_6017;
	float _7000 = exp(_6999);
	float _7003 = dot(float2(-3.00000000e+00, 4.00000000e+00), float2(-3.00000000e+00, 4.00000000e+00));
	float _7004 = -_7003;
	float _7005 = _7004 * denom_inv_6017;
	float _7006 = exp(_7005);
	float _7007 = _7000 + _7006;
	float _7010 = dot(float2(-4.00000000e+00, 5.00000000e+00), float2(-4.00000000e+00, 5.00000000e+00));
	float _7011 = -_7010;
	float _7012 = _7011 * denom_inv_6017;
	float _7013 = exp(_7012);
	float _7014 = _7007 + _7013;
	float _7017 = dot(float2(-3.00000000e+00, 5.00000000e+00), float2(-3.00000000e+00, 5.00000000e+00));
	float _7018 = -_7017;
	float _7019 = _7018 * denom_inv_6017;
	float _7020 = exp(_7019);
	float _7021 = _7014 + _7020;
	float w7adjx = _7021;
	float _7025 = dot(float2(-2.00000000e+00, 4.00000000e+00), float2(-2.00000000e+00, 4.00000000e+00));
	float _7026 = -_7025;
	float _7027 = _7026 * denom_inv_6017;
	float _7028 = exp(_7027);
	float _7031 = dot(float2(-1.00000000e+00, 4.00000000e+00), float2(-1.00000000e+00, 4.00000000e+00));
	float _7032 = -_7031;
	float _7033 = _7032 * denom_inv_6017;
	float _7034 = exp(_7033);
	float _7035 = _7028 + _7034;
	float _7038 = dot(float2(-2.00000000e+00, 5.00000000e+00), float2(-2.00000000e+00, 5.00000000e+00));
	float _7039 = -_7038;
	float _7040 = _7039 * denom_inv_6017;
	float _7041 = exp(_7040);
	float _7042 = _7035 + _7041;
	float _7045 = dot(float2(-1.00000000e+00, 5.00000000e+00), float2(-1.00000000e+00, 5.00000000e+00));
	float _7046 = -_7045;
	float _7047 = _7046 * denom_inv_6017;
	float _7048 = exp(_7047);
	float _7049 = _7042 + _7048;
	float w6adjx = _7049;
	float _7053 = dot(float2(0.00000000e+00, 4.00000000e+00), float2(0.00000000e+00, 4.00000000e+00));
	float _7054 = -_7053;
	float _7055 = _7054 * denom_inv_6017;
	float _7056 = exp(_7055);
	float _7059 = dot(float2(1.00000000e+00, 4.00000000e+00), float2(1.00000000e+00, 4.00000000e+00));
	float _7060 = -_7059;
	float _7061 = _7060 * denom_inv_6017;
	float _7062 = exp(_7061);
	float _7063 = _7056 + _7062;
	float _7066 = dot(float2(0.00000000e+00, 5.00000000e+00), float2(0.00000000e+00, 5.00000000e+00));
	float _7067 = -_7066;
	float _7068 = _7067 * denom_inv_6017;
	float _7069 = exp(_7068);
	float _7070 = _7063 + _7069;
	float _7073 = dot(float2(1.00000000e+00, 5.00000000e+00), float2(1.00000000e+00, 5.00000000e+00));
	float _7074 = -_7073;
	float _7075 = _7074 * denom_inv_6017;
	float _7076 = exp(_7075);
	float _7077 = _7070 + _7076;
	float w6curr = _7077;
	float _7081 = dot(float2(2.00000000e+00, 4.00000000e+00), float2(2.00000000e+00, 4.00000000e+00));
	float _7082 = -_7081;
	float _7083 = _7082 * denom_inv_6017;
	float _7084 = exp(_7083);
	float _7087 = dot(float2(3.00000000e+00, 4.00000000e+00), float2(3.00000000e+00, 4.00000000e+00));
	float _7088 = -_7087;
	float _7089 = _7088 * denom_inv_6017;
	float _7090 = exp(_7089);
	float _7091 = _7084 + _7090;
	float _7094 = dot(float2(2.00000000e+00, 5.00000000e+00), float2(2.00000000e+00, 5.00000000e+00));
	float _7095 = -_7094;
	float _7096 = _7095 * denom_inv_6017;
	float _7097 = exp(_7096);
	float _7098 = _7091 + _7097;
	float _7101 = dot(float2(3.00000000e+00, 5.00000000e+00), float2(3.00000000e+00, 5.00000000e+00));
	float _7102 = -_7101;
	float _7103 = _7102 * denom_inv_6017;
	float _7104 = exp(_7103);
	float _7105 = _7098 + _7104;
	float w7curr = _7105;
	float _7109 = dot(float2(4.00000000e+00, 4.00000000e+00), float2(4.00000000e+00, 4.00000000e+00));
	float _7110 = -_7109;
	float _7111 = _7110 * denom_inv_6017;
	float _7112 = exp(_7111);
	float _7115 = dot(float2(5.00000000e+00, 4.00000000e+00), float2(5.00000000e+00, 4.00000000e+00));
	float _7116 = -_7115;
	float _7117 = _7116 * denom_inv_6017;
	float _7118 = exp(_7117);
	float _7119 = _7112 + _7118;
	float _7122 = dot(float2(4.00000000e+00, 5.00000000e+00), float2(4.00000000e+00, 5.00000000e+00));
	float _7123 = -_7122;
	float _7124 = _7123 * denom_inv_6017;
	float _7125 = exp(_7124);
	float _7126 = _7119 + _7125;
	float _7129 = dot(float2(5.00000000e+00, 5.00000000e+00), float2(5.00000000e+00, 5.00000000e+00));
	float _7130 = -_7129;
	float _7131 = _7130 * denom_inv_6017;
	float _7132 = exp(_7131);
	float _7133 = _7126 + _7132;
	float w8curr = _7133;
	float4 _7135 = float4(w0curr, w0adjx, w0adjy, w0diag);
	float4 w0 = _7135;
	float4 _7137 = float4(w1curr, w1adjx, w1adjy, w1diag);
	float4 w1_7138 = _7137;
	float4 _7139 = float4(w2curr, w2adjx, w2adjy, w2diag);
	float4 w2_7140 = _7139;
	float4 _7141 = float4(w3curr, w3adjx, w3adjy, w3diag);
	float4 w3_7142 = _7141;
	float4 _7143 = float4(w4curr, w4adjx, w4adjy, w4diag);
	float4 w4_7144 = _7143;
	float4 _7145 = float4(w5curr, w5adjx, w5adjy, w5diag);
	float4 w5_7146 = _7145;
	float4 _7147 = float4(w6curr, w6adjx, w6adjy, w6diag);
	float4 w6_7148 = _7147;
	float4 _7149 = float4(w7curr, w7adjx, w7adjy, w7diag);
	float4 w7_7150 = _7149;
	float4 _7151 = float4(w8curr, w8adjx, w8adjy, w8diag);
	float4 w8_7152 = _7151;
	float4 _7153 = w0 + w1_7138;
	float4 _7154 = _7153 + w2_7140;
	float4 _7155 = _7154 + w3_7142;
	float4 _7156 = _7155 + w4_7144;
	float4 _7157 = _7156 + w5_7146;
	float4 _7158 = _7157 + w6_7148;
	float4 _7159 = _7158 + w7_7150;
	float4 _7160 = _7159 + w8_7152;
	float4 weight_sum4 = _7160;
	float2 _7164 = weight_sum4.xy + weight_sum4.zw;
	float2 weight_sum2 = _7164;
	float _7168 = weight_sum2.x + weight_sum2.y;
	float weight_sum = _7168;
	float _7171 = 1.00000000e+00 / weight_sum;
	float weight_sum_inv_7172 = _7171;
	float2 _7174 = dxdy * quad_vector.xy;
	float2 dxdy_curr = _7174;
	float2 _7176 = dxdy_curr * sample0curr_texel_offset;
	float2 _7178 = tex_uv.xy + _7176;
	float2 _7179;
	float _7180;
	_7179 = _7178;
	_7180 = input_gamma;
	float4 _7181 = F__tex2D_linearize(tex, _7179, _7180);
	float3 sample0curr = _7181.xyz;
	float2 _7184 = dxdy_curr * sample0adjx_texel_offset;
	float2 _7186 = tex_uv.xy + _7184;
	float2 _7187;
	float _7188;
	_7187 = _7186;
	_7188 = input_gamma;
	float4 _7189 = F__tex2D_linearize(tex, _7187, _7188);
	float3 sample0adjx = _7189.xyz;
	float2 _7192 = dxdy_curr * sample0adjy_texel_offset;
	float2 _7194 = tex_uv.xy + _7192;
	float2 _7195;
	float _7196;
	_7195 = _7194;
	_7196 = input_gamma;
	float4 _7197 = F__tex2D_linearize(tex, _7195, _7196);
	float3 sample0adjy = _7197.xyz;
	float2 _7200 = dxdy_curr * sample0diag_texel_offset;
	float2 _7202 = tex_uv.xy + _7200;
	float2 _7203;
	float _7204;
	_7203 = _7202;
	_7204 = input_gamma;
	float4 _7205 = F__tex2D_linearize(tex, _7203, _7204);
	float3 sample0diag = _7205.xyz;
	float2 _7208 = dxdy_curr * sample1_texel_offset;
	float2 _7209;
	_7209 = _7208;
	float4 _7210 = F__uv2_to_uv4(_7209);
	float4 _7211 = tex_uv + _7210;
	float4 _7212;
	float _7213;
	_7212 = _7211;
	_7213 = input_gamma;
	float4 _7214 = F__tex2Dlod_linearize(tex, _7212, _7213);
	float3 sample1curr = _7214.xyz;
	float2 _7217 = dxdy_curr * sample2_texel_offset;
	float2 _7218;
	_7218 = _7217;
	float4 _7219 = F__uv2_to_uv4(_7218);
	float4 _7220 = tex_uv + _7219;
	float4 _7221;
	float _7222;
	_7221 = _7220;
	_7222 = input_gamma;
	float4 _7223 = F__tex2Dlod_linearize(tex, _7221, _7222);
	float3 sample2curr = _7223.xyz;
	float2 _7226 = dxdy_curr * sample3_texel_offset;
	float2 _7227;
	_7227 = _7226;
	float4 _7228 = F__uv2_to_uv4(_7227);
	float4 _7229 = tex_uv + _7228;
	float4 _7230;
	float _7231;
	_7230 = _7229;
	_7231 = input_gamma;
	float4 _7232 = F__tex2Dlod_linearize(tex, _7230, _7231);
	float3 sample3curr = _7232.xyz;
	float2 _7235 = dxdy_curr * sample4_texel_offset;
	float2 _7236;
	_7236 = _7235;
	float4 _7237 = F__uv2_to_uv4(_7236);
	float4 _7238 = tex_uv + _7237;
	float4 _7239;
	float _7240;
	_7239 = _7238;
	_7240 = input_gamma;
	float4 _7241 = F__tex2Dlod_linearize(tex, _7239, _7240);
	float3 sample4curr = _7241.xyz;
	float2 _7244 = dxdy_curr * sample5_texel_offset;
	float2 _7245;
	_7245 = _7244;
	float4 _7246 = F__uv2_to_uv4(_7245);
	float4 _7247 = tex_uv + _7246;
	float4 _7248;
	float _7249;
	_7248 = _7247;
	_7249 = input_gamma;
	float4 _7250 = F__tex2Dlod_linearize(tex, _7248, _7249);
	float3 sample5curr = _7250.xyz;
	float2 _7253 = dxdy_curr * sample6_texel_offset;
	float2 _7254;
	_7254 = _7253;
	float4 _7255 = F__uv2_to_uv4(_7254);
	float4 _7256 = tex_uv + _7255;
	float4 _7257;
	float _7258;
	_7257 = _7256;
	_7258 = input_gamma;
	float4 _7259 = F__tex2Dlod_linearize(tex, _7257, _7258);
	float3 sample6curr = _7259.xyz;
	float2 _7262 = dxdy_curr * sample7_texel_offset;
	float2 _7263;
	_7263 = _7262;
	float4 _7264 = F__uv2_to_uv4(_7263);
	float4 _7265 = tex_uv + _7264;
	float4 _7266;
	float _7267;
	_7266 = _7265;
	_7267 = input_gamma;
	float4 _7268 = F__tex2Dlod_linearize(tex, _7266, _7267);
	float3 sample7curr = _7268.xyz;
	float2 _7271 = dxdy_curr * sample8_texel_offset;
	float2 _7272;
	_7272 = _7271;
	float4 _7273 = F__uv2_to_uv4(_7272);
	float4 _7274 = tex_uv + _7273;
	float4 _7275;
	float _7276;
	_7275 = _7274;
	_7276 = input_gamma;
	float4 _7277 = F__tex2Dlod_linearize(tex, _7275, _7276);
	float3 sample8curr = _7277.xyz;
	float3 sample1adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample8adjx = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample8adjy = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample8diag = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _7328;
	float3 _7329;
	float3 _7330;
	float3 _7331;
	float3 _7332;
	_7328 = quad_vector;
	_7329 = sample1curr;
	F__quad_gather(_7328, _7329, _7330, _7331, _7332);
	sample1adjx = _7330;
	sample1adjy = _7331;
	sample1diag = _7332;
	float4 _7334;
	float3 _7335;
	float3 _7336;
	float3 _7337;
	float3 _7338;
	_7334 = quad_vector;
	_7335 = sample2curr;
	F__quad_gather(_7334, _7335, _7336, _7337, _7338);
	sample2adjx = _7336;
	sample2adjy = _7337;
	sample2diag = _7338;
	float4 _7340;
	float3 _7341;
	float3 _7342;
	float3 _7343;
	float3 _7344;
	_7340 = quad_vector;
	_7341 = sample3curr;
	F__quad_gather(_7340, _7341, _7342, _7343, _7344);
	sample3adjx = _7342;
	sample3adjy = _7343;
	sample3diag = _7344;
	float4 _7346;
	float3 _7347;
	float3 _7348;
	float3 _7349;
	float3 _7350;
	_7346 = quad_vector;
	_7347 = sample4curr;
	F__quad_gather(_7346, _7347, _7348, _7349, _7350);
	sample4adjx = _7348;
	sample4adjy = _7349;
	sample4diag = _7350;
	float4 _7352;
	float3 _7353;
	float3 _7354;
	float3 _7355;
	float3 _7356;
	_7352 = quad_vector;
	_7353 = sample5curr;
	F__quad_gather(_7352, _7353, _7354, _7355, _7356);
	sample5adjx = _7354;
	sample5adjy = _7355;
	sample5diag = _7356;
	float4 _7358;
	float3 _7359;
	float3 _7360;
	float3 _7361;
	float3 _7362;
	_7358 = quad_vector;
	_7359 = sample6curr;
	F__quad_gather(_7358, _7359, _7360, _7361, _7362);
	sample6adjx = _7360;
	sample6adjy = _7361;
	sample6diag = _7362;
	float4 _7364;
	float3 _7365;
	float3 _7366;
	float3 _7367;
	float3 _7368;
	_7364 = quad_vector;
	_7365 = sample7curr;
	F__quad_gather(_7364, _7365, _7366, _7367, _7368);
	sample7adjx = _7366;
	sample7adjy = _7367;
	sample7diag = _7368;
	float4 _7370;
	float3 _7371;
	float3 _7372;
	float3 _7373;
	float3 _7374;
	_7370 = quad_vector;
	_7371 = sample8curr;
	F__quad_gather(_7370, _7371, _7372, _7373, _7374);
	sample8adjx = _7372;
	sample8adjy = _7373;
	sample8diag = _7374;
	float3 sum_7377 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _7390 = float4x3(sample0curr.x, sample0curr.y, sample0curr.z, sample0adjx.x, sample0adjx.y, sample0adjx.z, sample0adjy.x, sample0adjy.y, sample0adjy.z, sample0diag.x, sample0diag.y, sample0diag.z);
	float3 _7391 = mul(w0, _7390);
	float3 _7392 = sum_7377 + _7391;
	sum_7377 = _7392;
	float4x3 _7405 = float4x3(sample1curr.x, sample1curr.y, sample1curr.z, sample1adjx.x, sample1adjx.y, sample1adjx.z, sample1adjy.x, sample1adjy.y, sample1adjy.z, sample1diag.x, sample1diag.y, sample1diag.z);
	float3 _7406 = mul(w1_7138, _7405);
	float3 _7407 = sum_7377 + _7406;
	sum_7377 = _7407;
	float4x3 _7420 = float4x3(sample2curr.x, sample2curr.y, sample2curr.z, sample2adjx.x, sample2adjx.y, sample2adjx.z, sample2adjy.x, sample2adjy.y, sample2adjy.z, sample2diag.x, sample2diag.y, sample2diag.z);
	float3 _7421 = mul(w2_7140, _7420);
	float3 _7422 = sum_7377 + _7421;
	sum_7377 = _7422;
	float4x3 _7435 = float4x3(sample3curr.x, sample3curr.y, sample3curr.z, sample3adjx.x, sample3adjx.y, sample3adjx.z, sample3adjy.x, sample3adjy.y, sample3adjy.z, sample3diag.x, sample3diag.y, sample3diag.z);
	float3 _7436 = mul(w3_7142, _7435);
	float3 _7437 = sum_7377 + _7436;
	sum_7377 = _7437;
	float4x3 _7450 = float4x3(sample4curr.x, sample4curr.y, sample4curr.z, sample4adjx.x, sample4adjx.y, sample4adjx.z, sample4adjy.x, sample4adjy.y, sample4adjy.z, sample4diag.x, sample4diag.y, sample4diag.z);
	float3 _7451 = mul(w4_7144, _7450);
	float3 _7452 = sum_7377 + _7451;
	sum_7377 = _7452;
	float4x3 _7465 = float4x3(sample5curr.x, sample5curr.y, sample5curr.z, sample5adjx.x, sample5adjx.y, sample5adjx.z, sample5adjy.x, sample5adjy.y, sample5adjy.z, sample5diag.x, sample5diag.y, sample5diag.z);
	float3 _7466 = mul(w5_7146, _7465);
	float3 _7467 = sum_7377 + _7466;
	sum_7377 = _7467;
	float4x3 _7480 = float4x3(sample6curr.x, sample6curr.y, sample6curr.z, sample6adjx.x, sample6adjx.y, sample6adjx.z, sample6adjy.x, sample6adjy.y, sample6adjy.z, sample6diag.x, sample6diag.y, sample6diag.z);
	float3 _7481 = mul(w6_7148, _7480);
	float3 _7482 = sum_7377 + _7481;
	sum_7377 = _7482;
	float4x3 _7495 = float4x3(sample7curr.x, sample7curr.y, sample7curr.z, sample7adjx.x, sample7adjx.y, sample7adjx.z, sample7adjy.x, sample7adjy.y, sample7adjy.z, sample7diag.x, sample7diag.y, sample7diag.z);
	float3 _7496 = mul(w7_7150, _7495);
	float3 _7497 = sum_7377 + _7496;
	sum_7377 = _7497;
	float4x3 _7510 = float4x3(sample8curr.x, sample8curr.y, sample8curr.z, sample8adjx.x, sample8adjx.y, sample8adjx.z, sample8adjy.x, sample8adjy.y, sample8adjy.z, sample8diag.x, sample8diag.y, sample8diag.z);
	float3 _7511 = mul(w8_7152, _7510);
	float3 _7512 = sum_7377 + _7511;
	sum_7377 = _7512;
	float3 _7514 = sum_7377 * weight_sum_inv_7172.xxx;
	return _7514;
}
float3 F__tex2Dblur10x10shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _7523 = sigma * sigma;
	float _7525 = 5.00000000e-01 / _7523;
	float denom_inv_7526 = _7525;
	float _7528 = -2.50000000e-01 * denom_inv_7526;
	float _7529 = exp(_7528);
	float w0_5off_7530 = _7529;
	float _7532 = -1.00000000e+00 * denom_inv_7526;
	float _7533 = exp(_7532);
	float w1off_7534 = _7533;
	float _7536 = -2.25000000e+00 * denom_inv_7526;
	float _7537 = exp(_7536);
	float w1_5off_7538 = _7537;
	float _7540 = -4.00000000e+00 * denom_inv_7526;
	float _7541 = exp(_7540);
	float w2off_7542 = _7541;
	float _7544 = -6.25000000e+00 * denom_inv_7526;
	float _7545 = exp(_7544);
	float w2_5off_7546 = _7545;
	float _7548 = -1.22500000e+01 * denom_inv_7526;
	float _7549 = exp(_7548);
	float w3_5off_7550 = _7549;
	float _7552 = -2.02500000e+01 * denom_inv_7526;
	float _7553 = exp(_7552);
	float w4_5off_7554 = _7553;
	float _7556 = -3.02500000e+01 * denom_inv_7526;
	float _7557 = exp(_7556);
	float w5_5off_7558 = _7557;
	float _7559 = w0_5off_7530 + w1_5off_7538;
	float _7560 = w1_5off_7538 / _7559;
	float _7563 = lerp(_7560, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_7564 = _7563;
	float _7565 = w2_5off_7546 + w3_5off_7550;
	float _7566 = w3_5off_7550 / _7565;
	float _7569 = lerp(_7566, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_7570 = _7569;
	float _7571 = w4_5off_7554 + w5_5off_7558;
	float _7572 = w5_5off_7558 / _7571;
	float _7575 = lerp(_7572, 5.00000000e-01, 5.00000000e-01);
	float texel4to5ratio_7576 = _7575;
	float _7578 = 1.00000000e+00 + w1off_7534;
	float _7579 = w1off_7534 / _7578;
	float texel0to1ratio_nearest_7580 = _7579;
	float _7581 = w1off_7534 + w2off_7542;
	float _7582 = w2off_7542 / _7581;
	float texel1to2ratio_nearest_7583 = _7582;
	float2 _7584 = float2(texel0to1ratio_nearest_7580, texel0to1ratio_nearest_7580);
	float2 _7586 = float2(0.00000000e+00, 0.00000000e+00) + _7584;
	float2 sample0curr_texel_offset_7587 = _7586;
	float _7588 = -texel1to2ratio_nearest_7583;
	float2 _7589 = float2(_7588, texel0to1ratio_nearest_7580);
	float2 _7591 = float2(-1.00000000e+00, 0.00000000e+00) + _7589;
	float2 sample0adjx_texel_offset_7592 = _7591;
	float _7593 = -texel1to2ratio_nearest_7583;
	float2 _7594 = float2(texel0to1ratio_nearest_7580, _7593);
	float2 _7596 = float2(0.00000000e+00, -1.00000000e+00) + _7594;
	float2 sample0adjy_texel_offset_7597 = _7596;
	float _7598 = -texel1to2ratio_nearest_7583;
	float _7599 = -texel1to2ratio_nearest_7583;
	float2 _7600 = float2(_7598, _7599);
	float2 _7602 = float2(-1.00000000e+00, -1.00000000e+00) + _7600;
	float2 sample0diag_texel_offset_7603 = _7602;
	float2 _7604 = float2(texel2to3ratio_7570, texel0to1ratio_7564);
	float2 _7606 = float2(2.00000000e+00, 0.00000000e+00) + _7604;
	float2 sample1_texel_offset_7607 = _7606;
	float2 _7608 = float2(texel4to5ratio_7576, texel0to1ratio_7564);
	float2 _7610 = float2(4.00000000e+00, 0.00000000e+00) + _7608;
	float2 sample2_texel_offset_7611 = _7610;
	float2 _7612 = float2(texel0to1ratio_7564, texel2to3ratio_7570);
	float2 _7614 = float2(0.00000000e+00, 2.00000000e+00) + _7612;
	float2 sample3_texel_offset_7615 = _7614;
	float2 _7616 = float2(texel2to3ratio_7570, texel2to3ratio_7570);
	float2 _7618 = float2(2.00000000e+00, 2.00000000e+00) + _7616;
	float2 sample4_texel_offset_7619 = _7618;
	float2 _7620 = float2(texel4to5ratio_7576, texel2to3ratio_7570);
	float2 _7622 = float2(4.00000000e+00, 2.00000000e+00) + _7620;
	float2 sample5_texel_offset_7623 = _7622;
	float2 _7624 = float2(texel0to1ratio_7564, texel4to5ratio_7576);
	float2 _7626 = float2(0.00000000e+00, 4.00000000e+00) + _7624;
	float2 sample6_texel_offset_7627 = _7626;
	float2 _7628 = float2(texel2to3ratio_7570, texel4to5ratio_7576);
	float2 _7630 = float2(2.00000000e+00, 4.00000000e+00) + _7628;
	float2 sample7_texel_offset_7631 = _7630;
	float2 _7632 = float2(texel4to5ratio_7576, texel4to5ratio_7576);
	float2 _7634 = float2(4.00000000e+00, 4.00000000e+00) + _7632;
	float2 sample8_texel_offset_7635 = _7634;
	float _7638 = dot(float2(-4.00000000e+00, -4.00000000e+00), float2(-4.00000000e+00, -4.00000000e+00));
	float _7639 = -_7638;
	float _7640 = _7639 * denom_inv_7526;
	float _7641 = exp(_7640);
	float _7644 = dot(float2(-3.00000000e+00, -4.00000000e+00), float2(-3.00000000e+00, -4.00000000e+00));
	float _7645 = -_7644;
	float _7646 = _7645 * denom_inv_7526;
	float _7647 = exp(_7646);
	float _7648 = _7641 + _7647;
	float _7651 = dot(float2(-4.00000000e+00, -3.00000000e+00), float2(-4.00000000e+00, -3.00000000e+00));
	float _7652 = -_7651;
	float _7653 = _7652 * denom_inv_7526;
	float _7654 = exp(_7653);
	float _7655 = _7648 + _7654;
	float _7658 = dot(float2(-3.00000000e+00, -3.00000000e+00), float2(-3.00000000e+00, -3.00000000e+00));
	float _7659 = -_7658;
	float _7660 = _7659 * denom_inv_7526;
	float _7661 = exp(_7660);
	float _7662 = _7655 + _7661;
	float w4diag_7663 = _7662;
	float _7666 = dot(float2(-2.00000000e+00, -4.00000000e+00), float2(-2.00000000e+00, -4.00000000e+00));
	float _7667 = -_7666;
	float _7668 = _7667 * denom_inv_7526;
	float _7669 = exp(_7668);
	float _7672 = dot(float2(-1.00000000e+00, -4.00000000e+00), float2(-1.00000000e+00, -4.00000000e+00));
	float _7673 = -_7672;
	float _7674 = _7673 * denom_inv_7526;
	float _7675 = exp(_7674);
	float _7676 = _7669 + _7675;
	float _7679 = dot(float2(-2.00000000e+00, -3.00000000e+00), float2(-2.00000000e+00, -3.00000000e+00));
	float _7680 = -_7679;
	float _7681 = _7680 * denom_inv_7526;
	float _7682 = exp(_7681);
	float _7683 = _7676 + _7682;
	float _7686 = dot(float2(-1.00000000e+00, -3.00000000e+00), float2(-1.00000000e+00, -3.00000000e+00));
	float _7687 = -_7686;
	float _7688 = _7687 * denom_inv_7526;
	float _7689 = exp(_7688);
	float _7690 = _7683 + _7689;
	float w3diag_7691 = _7690;
	float _7694 = dot(float2(0.00000000e+00, -4.00000000e+00), float2(0.00000000e+00, -4.00000000e+00));
	float _7695 = -_7694;
	float _7696 = _7695 * denom_inv_7526;
	float _7697 = exp(_7696);
	float _7700 = dot(float2(1.00000000e+00, -4.00000000e+00), float2(1.00000000e+00, -4.00000000e+00));
	float _7701 = -_7700;
	float _7702 = _7701 * denom_inv_7526;
	float _7703 = exp(_7702);
	float _7704 = _7697 + _7703;
	float _7707 = dot(float2(0.00000000e+00, -3.00000000e+00), float2(0.00000000e+00, -3.00000000e+00));
	float _7708 = -_7707;
	float _7709 = _7708 * denom_inv_7526;
	float _7710 = exp(_7709);
	float _7711 = _7704 + _7710;
	float _7714 = dot(float2(1.00000000e+00, -3.00000000e+00), float2(1.00000000e+00, -3.00000000e+00));
	float _7715 = -_7714;
	float _7716 = _7715 * denom_inv_7526;
	float _7717 = exp(_7716);
	float _7718 = _7711 + _7717;
	float w3adjy_7719 = _7718;
	float _7722 = dot(float2(2.00000000e+00, -4.00000000e+00), float2(2.00000000e+00, -4.00000000e+00));
	float _7723 = -_7722;
	float _7724 = _7723 * denom_inv_7526;
	float _7725 = exp(_7724);
	float _7728 = dot(float2(3.00000000e+00, -4.00000000e+00), float2(3.00000000e+00, -4.00000000e+00));
	float _7729 = -_7728;
	float _7730 = _7729 * denom_inv_7526;
	float _7731 = exp(_7730);
	float _7732 = _7725 + _7731;
	float _7735 = dot(float2(2.00000000e+00, -3.00000000e+00), float2(2.00000000e+00, -3.00000000e+00));
	float _7736 = -_7735;
	float _7737 = _7736 * denom_inv_7526;
	float _7738 = exp(_7737);
	float _7739 = _7732 + _7738;
	float _7742 = dot(float2(3.00000000e+00, -3.00000000e+00), float2(3.00000000e+00, -3.00000000e+00));
	float _7743 = -_7742;
	float _7744 = _7743 * denom_inv_7526;
	float _7745 = exp(_7744);
	float _7746 = _7739 + _7745;
	float w4adjy_7747 = _7746;
	float _7750 = dot(float2(4.00000000e+00, -4.00000000e+00), float2(4.00000000e+00, -4.00000000e+00));
	float _7751 = -_7750;
	float _7752 = _7751 * denom_inv_7526;
	float _7753 = exp(_7752);
	float _7756 = dot(float2(5.00000000e+00, -4.00000000e+00), float2(5.00000000e+00, -4.00000000e+00));
	float _7757 = -_7756;
	float _7758 = _7757 * denom_inv_7526;
	float _7759 = exp(_7758);
	float _7760 = _7753 + _7759;
	float _7763 = dot(float2(4.00000000e+00, -3.00000000e+00), float2(4.00000000e+00, -3.00000000e+00));
	float _7764 = -_7763;
	float _7765 = _7764 * denom_inv_7526;
	float _7766 = exp(_7765);
	float _7767 = _7760 + _7766;
	float _7770 = dot(float2(5.00000000e+00, -3.00000000e+00), float2(5.00000000e+00, -3.00000000e+00));
	float _7771 = -_7770;
	float _7772 = _7771 * denom_inv_7526;
	float _7773 = exp(_7772);
	float _7774 = _7767 + _7773;
	float w5adjy_7775 = _7774;
	float _7778 = dot(float2(-4.00000000e+00, -2.00000000e+00), float2(-4.00000000e+00, -2.00000000e+00));
	float _7779 = -_7778;
	float _7780 = _7779 * denom_inv_7526;
	float _7781 = exp(_7780);
	float _7784 = dot(float2(-3.00000000e+00, -2.00000000e+00), float2(-3.00000000e+00, -2.00000000e+00));
	float _7785 = -_7784;
	float _7786 = _7785 * denom_inv_7526;
	float _7787 = exp(_7786);
	float _7788 = _7781 + _7787;
	float _7791 = dot(float2(-4.00000000e+00, -1.00000000e+00), float2(-4.00000000e+00, -1.00000000e+00));
	float _7792 = -_7791;
	float _7793 = _7792 * denom_inv_7526;
	float _7794 = exp(_7793);
	float _7795 = _7788 + _7794;
	float _7798 = dot(float2(-3.00000000e+00, -1.00000000e+00), float2(-3.00000000e+00, -1.00000000e+00));
	float _7799 = -_7798;
	float _7800 = _7799 * denom_inv_7526;
	float _7801 = exp(_7800);
	float _7802 = _7795 + _7801;
	float w1diag_7803 = _7802;
	float _7806 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _7807 = -_7806;
	float _7808 = _7807 * denom_inv_7526;
	float _7809 = exp(_7808);
	float _7812 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _7813 = -_7812;
	float _7814 = _7813 * denom_inv_7526;
	float _7815 = exp(_7814);
	float _7816 = _7809 + _7815;
	float _7819 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _7820 = -_7819;
	float _7821 = _7820 * denom_inv_7526;
	float _7822 = exp(_7821);
	float _7823 = _7816 + _7822;
	float _7826 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _7827 = -_7826;
	float _7828 = _7827 * denom_inv_7526;
	float _7829 = exp(_7828);
	float _7830 = _7823 + _7829;
	float w0diag_7831 = _7830;
	float _7834 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _7835 = -_7834;
	float _7836 = _7835 * denom_inv_7526;
	float _7837 = exp(_7836);
	float _7840 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _7841 = -_7840;
	float _7842 = _7841 * denom_inv_7526;
	float _7843 = exp(_7842);
	float _7844 = _7837 + _7843;
	float _7847 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _7848 = -_7847;
	float _7849 = _7848 * denom_inv_7526;
	float _7850 = exp(_7849);
	float _7851 = _7844 + _7850;
	float _7854 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _7855 = -_7854;
	float _7856 = _7855 * denom_inv_7526;
	float _7857 = exp(_7856);
	float _7858 = _7851 + _7857;
	float w0adjy_7859 = _7858;
	float _7862 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _7863 = -_7862;
	float _7864 = _7863 * denom_inv_7526;
	float _7865 = exp(_7864);
	float _7868 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _7869 = -_7868;
	float _7870 = _7869 * denom_inv_7526;
	float _7871 = exp(_7870);
	float _7872 = _7865 + _7871;
	float _7875 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _7876 = -_7875;
	float _7877 = _7876 * denom_inv_7526;
	float _7878 = exp(_7877);
	float _7879 = _7872 + _7878;
	float _7882 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _7883 = -_7882;
	float _7884 = _7883 * denom_inv_7526;
	float _7885 = exp(_7884);
	float _7886 = _7879 + _7885;
	float w1adjy_7887 = _7886;
	float _7890 = dot(float2(4.00000000e+00, -2.00000000e+00), float2(4.00000000e+00, -2.00000000e+00));
	float _7891 = -_7890;
	float _7892 = _7891 * denom_inv_7526;
	float _7893 = exp(_7892);
	float _7896 = dot(float2(5.00000000e+00, -2.00000000e+00), float2(5.00000000e+00, -2.00000000e+00));
	float _7897 = -_7896;
	float _7898 = _7897 * denom_inv_7526;
	float _7899 = exp(_7898);
	float _7900 = _7893 + _7899;
	float _7903 = dot(float2(4.00000000e+00, -1.00000000e+00), float2(4.00000000e+00, -1.00000000e+00));
	float _7904 = -_7903;
	float _7905 = _7904 * denom_inv_7526;
	float _7906 = exp(_7905);
	float _7907 = _7900 + _7906;
	float _7910 = dot(float2(5.00000000e+00, -1.00000000e+00), float2(5.00000000e+00, -1.00000000e+00));
	float _7911 = -_7910;
	float _7912 = _7911 * denom_inv_7526;
	float _7913 = exp(_7912);
	float _7914 = _7907 + _7913;
	float w2adjy_7915 = _7914;
	float _7918 = dot(float2(-4.00000000e+00, 0.00000000e+00), float2(-4.00000000e+00, 0.00000000e+00));
	float _7919 = -_7918;
	float _7920 = _7919 * denom_inv_7526;
	float _7921 = exp(_7920);
	float _7924 = dot(float2(-3.00000000e+00, 0.00000000e+00), float2(-3.00000000e+00, 0.00000000e+00));
	float _7925 = -_7924;
	float _7926 = _7925 * denom_inv_7526;
	float _7927 = exp(_7926);
	float _7928 = _7921 + _7927;
	float _7931 = dot(float2(-4.00000000e+00, 1.00000000e+00), float2(-4.00000000e+00, 1.00000000e+00));
	float _7932 = -_7931;
	float _7933 = _7932 * denom_inv_7526;
	float _7934 = exp(_7933);
	float _7935 = _7928 + _7934;
	float _7938 = dot(float2(-3.00000000e+00, 1.00000000e+00), float2(-3.00000000e+00, 1.00000000e+00));
	float _7939 = -_7938;
	float _7940 = _7939 * denom_inv_7526;
	float _7941 = exp(_7940);
	float _7942 = _7935 + _7941;
	float w1adjx_7943 = _7942;
	float _7946 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _7947 = -_7946;
	float _7948 = _7947 * denom_inv_7526;
	float _7949 = exp(_7948);
	float _7952 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _7953 = -_7952;
	float _7954 = _7953 * denom_inv_7526;
	float _7955 = exp(_7954);
	float _7956 = _7949 + _7955;
	float _7959 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _7960 = -_7959;
	float _7961 = _7960 * denom_inv_7526;
	float _7962 = exp(_7961);
	float _7963 = _7956 + _7962;
	float _7966 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _7967 = -_7966;
	float _7968 = _7967 * denom_inv_7526;
	float _7969 = exp(_7968);
	float _7970 = _7963 + _7969;
	float w0adjx_7971 = _7970;
	float _7974 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _7975 = -_7974;
	float _7976 = _7975 * denom_inv_7526;
	float _7977 = exp(_7976);
	float _7980 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _7981 = -_7980;
	float _7982 = _7981 * denom_inv_7526;
	float _7983 = exp(_7982);
	float _7984 = _7977 + _7983;
	float _7987 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _7988 = -_7987;
	float _7989 = _7988 * denom_inv_7526;
	float _7990 = exp(_7989);
	float _7991 = _7984 + _7990;
	float _7994 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _7995 = -_7994;
	float _7996 = _7995 * denom_inv_7526;
	float _7997 = exp(_7996);
	float _7998 = _7991 + _7997;
	float w0curr_7999 = _7998;
	float _8002 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _8003 = -_8002;
	float _8004 = _8003 * denom_inv_7526;
	float _8005 = exp(_8004);
	float _8008 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _8009 = -_8008;
	float _8010 = _8009 * denom_inv_7526;
	float _8011 = exp(_8010);
	float _8012 = _8005 + _8011;
	float _8015 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _8016 = -_8015;
	float _8017 = _8016 * denom_inv_7526;
	float _8018 = exp(_8017);
	float _8019 = _8012 + _8018;
	float _8022 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _8023 = -_8022;
	float _8024 = _8023 * denom_inv_7526;
	float _8025 = exp(_8024);
	float _8026 = _8019 + _8025;
	float w1curr_8027 = _8026;
	float _8030 = dot(float2(4.00000000e+00, 0.00000000e+00), float2(4.00000000e+00, 0.00000000e+00));
	float _8031 = -_8030;
	float _8032 = _8031 * denom_inv_7526;
	float _8033 = exp(_8032);
	float _8036 = dot(float2(5.00000000e+00, 0.00000000e+00), float2(5.00000000e+00, 0.00000000e+00));
	float _8037 = -_8036;
	float _8038 = _8037 * denom_inv_7526;
	float _8039 = exp(_8038);
	float _8040 = _8033 + _8039;
	float _8043 = dot(float2(4.00000000e+00, 1.00000000e+00), float2(4.00000000e+00, 1.00000000e+00));
	float _8044 = -_8043;
	float _8045 = _8044 * denom_inv_7526;
	float _8046 = exp(_8045);
	float _8047 = _8040 + _8046;
	float _8050 = dot(float2(5.00000000e+00, 1.00000000e+00), float2(5.00000000e+00, 1.00000000e+00));
	float _8051 = -_8050;
	float _8052 = _8051 * denom_inv_7526;
	float _8053 = exp(_8052);
	float _8054 = _8047 + _8053;
	float w2curr_8055 = _8054;
	float _8058 = dot(float2(-4.00000000e+00, 2.00000000e+00), float2(-4.00000000e+00, 2.00000000e+00));
	float _8059 = -_8058;
	float _8060 = _8059 * denom_inv_7526;
	float _8061 = exp(_8060);
	float _8064 = dot(float2(-3.00000000e+00, 2.00000000e+00), float2(-3.00000000e+00, 2.00000000e+00));
	float _8065 = -_8064;
	float _8066 = _8065 * denom_inv_7526;
	float _8067 = exp(_8066);
	float _8068 = _8061 + _8067;
	float _8071 = dot(float2(-4.00000000e+00, 3.00000000e+00), float2(-4.00000000e+00, 3.00000000e+00));
	float _8072 = -_8071;
	float _8073 = _8072 * denom_inv_7526;
	float _8074 = exp(_8073);
	float _8075 = _8068 + _8074;
	float _8078 = dot(float2(-3.00000000e+00, 3.00000000e+00), float2(-3.00000000e+00, 3.00000000e+00));
	float _8079 = -_8078;
	float _8080 = _8079 * denom_inv_7526;
	float _8081 = exp(_8080);
	float _8082 = _8075 + _8081;
	float w4adjx_8083 = _8082;
	float _8086 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _8087 = -_8086;
	float _8088 = _8087 * denom_inv_7526;
	float _8089 = exp(_8088);
	float _8092 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _8093 = -_8092;
	float _8094 = _8093 * denom_inv_7526;
	float _8095 = exp(_8094);
	float _8096 = _8089 + _8095;
	float _8099 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _8100 = -_8099;
	float _8101 = _8100 * denom_inv_7526;
	float _8102 = exp(_8101);
	float _8103 = _8096 + _8102;
	float _8106 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _8107 = -_8106;
	float _8108 = _8107 * denom_inv_7526;
	float _8109 = exp(_8108);
	float _8110 = _8103 + _8109;
	float w3adjx_8111 = _8110;
	float _8114 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _8115 = -_8114;
	float _8116 = _8115 * denom_inv_7526;
	float _8117 = exp(_8116);
	float _8120 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _8121 = -_8120;
	float _8122 = _8121 * denom_inv_7526;
	float _8123 = exp(_8122);
	float _8124 = _8117 + _8123;
	float _8127 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _8128 = -_8127;
	float _8129 = _8128 * denom_inv_7526;
	float _8130 = exp(_8129);
	float _8131 = _8124 + _8130;
	float _8134 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _8135 = -_8134;
	float _8136 = _8135 * denom_inv_7526;
	float _8137 = exp(_8136);
	float _8138 = _8131 + _8137;
	float w3curr_8139 = _8138;
	float _8142 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _8143 = -_8142;
	float _8144 = _8143 * denom_inv_7526;
	float _8145 = exp(_8144);
	float _8148 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _8149 = -_8148;
	float _8150 = _8149 * denom_inv_7526;
	float _8151 = exp(_8150);
	float _8152 = _8145 + _8151;
	float _8155 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _8156 = -_8155;
	float _8157 = _8156 * denom_inv_7526;
	float _8158 = exp(_8157);
	float _8159 = _8152 + _8158;
	float _8162 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _8163 = -_8162;
	float _8164 = _8163 * denom_inv_7526;
	float _8165 = exp(_8164);
	float _8166 = _8159 + _8165;
	float w4curr_8167 = _8166;
	float _8170 = dot(float2(4.00000000e+00, 2.00000000e+00), float2(4.00000000e+00, 2.00000000e+00));
	float _8171 = -_8170;
	float _8172 = _8171 * denom_inv_7526;
	float _8173 = exp(_8172);
	float _8176 = dot(float2(5.00000000e+00, 2.00000000e+00), float2(5.00000000e+00, 2.00000000e+00));
	float _8177 = -_8176;
	float _8178 = _8177 * denom_inv_7526;
	float _8179 = exp(_8178);
	float _8180 = _8173 + _8179;
	float _8183 = dot(float2(4.00000000e+00, 3.00000000e+00), float2(4.00000000e+00, 3.00000000e+00));
	float _8184 = -_8183;
	float _8185 = _8184 * denom_inv_7526;
	float _8186 = exp(_8185);
	float _8187 = _8180 + _8186;
	float _8190 = dot(float2(5.00000000e+00, 3.00000000e+00), float2(5.00000000e+00, 3.00000000e+00));
	float _8191 = -_8190;
	float _8192 = _8191 * denom_inv_7526;
	float _8193 = exp(_8192);
	float _8194 = _8187 + _8193;
	float w5curr_8195 = _8194;
	float _8198 = dot(float2(-4.00000000e+00, 4.00000000e+00), float2(-4.00000000e+00, 4.00000000e+00));
	float _8199 = -_8198;
	float _8200 = _8199 * denom_inv_7526;
	float _8201 = exp(_8200);
	float _8204 = dot(float2(-3.00000000e+00, 4.00000000e+00), float2(-3.00000000e+00, 4.00000000e+00));
	float _8205 = -_8204;
	float _8206 = _8205 * denom_inv_7526;
	float _8207 = exp(_8206);
	float _8208 = _8201 + _8207;
	float _8211 = dot(float2(-4.00000000e+00, 5.00000000e+00), float2(-4.00000000e+00, 5.00000000e+00));
	float _8212 = -_8211;
	float _8213 = _8212 * denom_inv_7526;
	float _8214 = exp(_8213);
	float _8215 = _8208 + _8214;
	float _8218 = dot(float2(-3.00000000e+00, 5.00000000e+00), float2(-3.00000000e+00, 5.00000000e+00));
	float _8219 = -_8218;
	float _8220 = _8219 * denom_inv_7526;
	float _8221 = exp(_8220);
	float _8222 = _8215 + _8221;
	float w7adjx_8223 = _8222;
	float _8226 = dot(float2(-2.00000000e+00, 4.00000000e+00), float2(-2.00000000e+00, 4.00000000e+00));
	float _8227 = -_8226;
	float _8228 = _8227 * denom_inv_7526;
	float _8229 = exp(_8228);
	float _8232 = dot(float2(-1.00000000e+00, 4.00000000e+00), float2(-1.00000000e+00, 4.00000000e+00));
	float _8233 = -_8232;
	float _8234 = _8233 * denom_inv_7526;
	float _8235 = exp(_8234);
	float _8236 = _8229 + _8235;
	float _8239 = dot(float2(-2.00000000e+00, 5.00000000e+00), float2(-2.00000000e+00, 5.00000000e+00));
	float _8240 = -_8239;
	float _8241 = _8240 * denom_inv_7526;
	float _8242 = exp(_8241);
	float _8243 = _8236 + _8242;
	float _8246 = dot(float2(-1.00000000e+00, 5.00000000e+00), float2(-1.00000000e+00, 5.00000000e+00));
	float _8247 = -_8246;
	float _8248 = _8247 * denom_inv_7526;
	float _8249 = exp(_8248);
	float _8250 = _8243 + _8249;
	float w6adjx_8251 = _8250;
	float _8254 = dot(float2(0.00000000e+00, 4.00000000e+00), float2(0.00000000e+00, 4.00000000e+00));
	float _8255 = -_8254;
	float _8256 = _8255 * denom_inv_7526;
	float _8257 = exp(_8256);
	float _8260 = dot(float2(1.00000000e+00, 4.00000000e+00), float2(1.00000000e+00, 4.00000000e+00));
	float _8261 = -_8260;
	float _8262 = _8261 * denom_inv_7526;
	float _8263 = exp(_8262);
	float _8264 = _8257 + _8263;
	float _8267 = dot(float2(0.00000000e+00, 5.00000000e+00), float2(0.00000000e+00, 5.00000000e+00));
	float _8268 = -_8267;
	float _8269 = _8268 * denom_inv_7526;
	float _8270 = exp(_8269);
	float _8271 = _8264 + _8270;
	float _8274 = dot(float2(1.00000000e+00, 5.00000000e+00), float2(1.00000000e+00, 5.00000000e+00));
	float _8275 = -_8274;
	float _8276 = _8275 * denom_inv_7526;
	float _8277 = exp(_8276);
	float _8278 = _8271 + _8277;
	float w6curr_8279 = _8278;
	float _8282 = dot(float2(2.00000000e+00, 4.00000000e+00), float2(2.00000000e+00, 4.00000000e+00));
	float _8283 = -_8282;
	float _8284 = _8283 * denom_inv_7526;
	float _8285 = exp(_8284);
	float _8288 = dot(float2(3.00000000e+00, 4.00000000e+00), float2(3.00000000e+00, 4.00000000e+00));
	float _8289 = -_8288;
	float _8290 = _8289 * denom_inv_7526;
	float _8291 = exp(_8290);
	float _8292 = _8285 + _8291;
	float _8295 = dot(float2(2.00000000e+00, 5.00000000e+00), float2(2.00000000e+00, 5.00000000e+00));
	float _8296 = -_8295;
	float _8297 = _8296 * denom_inv_7526;
	float _8298 = exp(_8297);
	float _8299 = _8292 + _8298;
	float _8302 = dot(float2(3.00000000e+00, 5.00000000e+00), float2(3.00000000e+00, 5.00000000e+00));
	float _8303 = -_8302;
	float _8304 = _8303 * denom_inv_7526;
	float _8305 = exp(_8304);
	float _8306 = _8299 + _8305;
	float w7curr_8307 = _8306;
	float _8310 = dot(float2(4.00000000e+00, 4.00000000e+00), float2(4.00000000e+00, 4.00000000e+00));
	float _8311 = -_8310;
	float _8312 = _8311 * denom_inv_7526;
	float _8313 = exp(_8312);
	float _8316 = dot(float2(5.00000000e+00, 4.00000000e+00), float2(5.00000000e+00, 4.00000000e+00));
	float _8317 = -_8316;
	float _8318 = _8317 * denom_inv_7526;
	float _8319 = exp(_8318);
	float _8320 = _8313 + _8319;
	float _8323 = dot(float2(4.00000000e+00, 5.00000000e+00), float2(4.00000000e+00, 5.00000000e+00));
	float _8324 = -_8323;
	float _8325 = _8324 * denom_inv_7526;
	float _8326 = exp(_8325);
	float _8327 = _8320 + _8326;
	float _8330 = dot(float2(5.00000000e+00, 5.00000000e+00), float2(5.00000000e+00, 5.00000000e+00));
	float _8331 = -_8330;
	float _8332 = _8331 * denom_inv_7526;
	float _8333 = exp(_8332);
	float _8334 = _8327 + _8333;
	float w8curr_8335 = _8334;
	float _8336 = w0curr_7999 + w1curr_8027;
	float _8337 = _8336 + w2curr_8055;
	float _8338 = _8337 + w3curr_8139;
	float _8339 = _8338 + w4curr_8167;
	float _8340 = _8339 + w5curr_8195;
	float _8341 = _8340 + w6curr_8279;
	float _8342 = _8341 + w7curr_8307;
	float _8343 = _8342 + w8curr_8335;
	float _8344 = _8343 + w0adjx_7971;
	float _8345 = _8344 + w1adjx_7943;
	float _8346 = _8345 + w3adjx_8111;
	float _8347 = _8346 + w4adjx_8083;
	float _8348 = _8347 + w6adjx_8251;
	float _8349 = _8348 + w7adjx_8223;
	float _8350 = _8349 + w0adjy_7859;
	float _8351 = _8350 + w1adjy_7887;
	float _8352 = _8351 + w2adjy_7915;
	float _8353 = _8352 + w3adjy_7719;
	float _8354 = _8353 + w4adjy_7747;
	float _8355 = _8354 + w5adjy_7775;
	float _8356 = _8355 + w0diag_7831;
	float _8357 = _8356 + w1diag_7803;
	float _8358 = _8357 + w3diag_7691;
	float _8359 = _8358 + w4diag_7663;
	float _8361 = 1.00000000e+00 / _8359;
	float weight_sum_inv_8362 = _8361;
	float4 _8363 = float4(w0curr_7999, w0adjx_7971, w0adjy_7859, w0diag_7831);
	float4 w0_8364 = _8363;
	float4 _8365 = float4(w1curr_8027, w1adjx_7943, w1adjy_7887, w1diag_7803);
	float4 w1_8366 = _8365;
	float4 _8367 = float4(w3curr_8139, w3adjx_8111, w3adjy_7719, w3diag_7691);
	float4 w3_8368 = _8367;
	float4 _8369 = float4(w4curr_8167, w4adjx_8083, w4adjy_7747, w4diag_7663);
	float4 w4_8370 = _8369;
	float4 _8371 = float4(w2curr_8055, w2adjy_7915, w5curr_8195, w5adjy_7775);
	float4 w2and5 = _8371;
	float4 _8373 = float4(w6curr_8279, w6adjx_8251, w7curr_8307, w7adjx_8223);
	float4 w6and7 = _8373;
	float2 _8376 = dxdy * quad_vector.xy;
	float2 dxdy_curr_8377 = _8376;
	float2 _8378 = dxdy_curr_8377 * sample0curr_texel_offset_7587;
	float2 _8380 = tex_uv.xy + _8378;
	float2 _8381;
	float _8382;
	_8381 = _8380;
	_8382 = input_gamma;
	float4 _8383 = F__tex2D_linearize(tex, _8381, _8382);
	float3 sample0curr_8385 = _8383.xyz;
	float2 _8386 = dxdy_curr_8377 * sample0adjx_texel_offset_7592;
	float2 _8388 = tex_uv.xy + _8386;
	float2 _8389;
	float _8390;
	_8389 = _8388;
	_8390 = input_gamma;
	float4 _8391 = F__tex2D_linearize(tex, _8389, _8390);
	float3 sample0adjx_8393 = _8391.xyz;
	float2 _8394 = dxdy_curr_8377 * sample0adjy_texel_offset_7597;
	float2 _8396 = tex_uv.xy + _8394;
	float2 _8397;
	float _8398;
	_8397 = _8396;
	_8398 = input_gamma;
	float4 _8399 = F__tex2D_linearize(tex, _8397, _8398);
	float3 sample0adjy_8401 = _8399.xyz;
	float2 _8402 = dxdy_curr_8377 * sample0diag_texel_offset_7603;
	float2 _8404 = tex_uv.xy + _8402;
	float2 _8405;
	float _8406;
	_8405 = _8404;
	_8406 = input_gamma;
	float4 _8407 = F__tex2D_linearize(tex, _8405, _8406);
	float3 sample0diag_8409 = _8407.xyz;
	float2 _8410 = dxdy_curr_8377 * sample1_texel_offset_7607;
	float2 _8411;
	_8411 = _8410;
	float4 _8412 = F__uv2_to_uv4(_8411);
	float4 _8413 = tex_uv + _8412;
	float4 _8414;
	float _8415;
	_8414 = _8413;
	_8415 = input_gamma;
	float4 _8416 = F__tex2Dlod_linearize(tex, _8414, _8415);
	float3 sample1curr_8418 = _8416.xyz;
	float2 _8419 = dxdy_curr_8377 * sample2_texel_offset_7611;
	float2 _8420;
	_8420 = _8419;
	float4 _8421 = F__uv2_to_uv4(_8420);
	float4 _8422 = tex_uv + _8421;
	float4 _8423;
	float _8424;
	_8423 = _8422;
	_8424 = input_gamma;
	float4 _8425 = F__tex2Dlod_linearize(tex, _8423, _8424);
	float3 sample2curr_8427 = _8425.xyz;
	float2 _8428 = dxdy_curr_8377 * sample3_texel_offset_7615;
	float2 _8429;
	_8429 = _8428;
	float4 _8430 = F__uv2_to_uv4(_8429);
	float4 _8431 = tex_uv + _8430;
	float4 _8432;
	float _8433;
	_8432 = _8431;
	_8433 = input_gamma;
	float4 _8434 = F__tex2Dlod_linearize(tex, _8432, _8433);
	float3 sample3curr_8436 = _8434.xyz;
	float2 _8437 = dxdy_curr_8377 * sample4_texel_offset_7619;
	float2 _8438;
	_8438 = _8437;
	float4 _8439 = F__uv2_to_uv4(_8438);
	float4 _8440 = tex_uv + _8439;
	float4 _8441;
	float _8442;
	_8441 = _8440;
	_8442 = input_gamma;
	float4 _8443 = F__tex2Dlod_linearize(tex, _8441, _8442);
	float3 sample4curr_8445 = _8443.xyz;
	float2 _8446 = dxdy_curr_8377 * sample5_texel_offset_7623;
	float2 _8447;
	_8447 = _8446;
	float4 _8448 = F__uv2_to_uv4(_8447);
	float4 _8449 = tex_uv + _8448;
	float4 _8450;
	float _8451;
	_8450 = _8449;
	_8451 = input_gamma;
	float4 _8452 = F__tex2Dlod_linearize(tex, _8450, _8451);
	float3 sample5curr_8454 = _8452.xyz;
	float2 _8455 = dxdy_curr_8377 * sample6_texel_offset_7627;
	float2 _8456;
	_8456 = _8455;
	float4 _8457 = F__uv2_to_uv4(_8456);
	float4 _8458 = tex_uv + _8457;
	float4 _8459;
	float _8460;
	_8459 = _8458;
	_8460 = input_gamma;
	float4 _8461 = F__tex2Dlod_linearize(tex, _8459, _8460);
	float3 sample6curr_8463 = _8461.xyz;
	float2 _8464 = dxdy_curr_8377 * sample7_texel_offset_7631;
	float2 _8465;
	_8465 = _8464;
	float4 _8466 = F__uv2_to_uv4(_8465);
	float4 _8467 = tex_uv + _8466;
	float4 _8468;
	float _8469;
	_8468 = _8467;
	_8469 = input_gamma;
	float4 _8470 = F__tex2Dlod_linearize(tex, _8468, _8469);
	float3 sample7curr_8472 = _8470.xyz;
	float2 _8473 = dxdy_curr_8377 * sample8_texel_offset_7635;
	float2 _8474;
	_8474 = _8473;
	float4 _8475 = F__uv2_to_uv4(_8474);
	float4 _8476 = tex_uv + _8475;
	float4 _8477;
	float _8478;
	_8477 = _8476;
	_8478 = input_gamma;
	float4 _8479 = F__tex2Dlod_linearize(tex, _8477, _8478);
	float3 sample8curr_8481 = _8479.xyz;
	float3 sample1adjx_8483 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1adjy_8485 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1diag_8487 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjx_8489 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjy_8491 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2diag_8493 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjx_8495 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjy_8497 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3diag_8499 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4adjx_8501 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4adjy_8503 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4diag_8505 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5adjx_8507 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5adjy_8509 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5diag_8511 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6adjx_8513 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6adjy_8515 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6diag_8517 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7adjx_8519 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7adjy_8521 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7diag_8523 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _8524;
	float3 _8525;
	float3 _8526;
	float3 _8527;
	float3 _8528;
	_8524 = quad_vector;
	_8525 = sample1curr_8418;
	F__quad_gather(_8524, _8525, _8526, _8527, _8528);
	sample1adjx_8483 = _8526;
	sample1adjy_8485 = _8527;
	sample1diag_8487 = _8528;
	float4 _8530;
	float3 _8531;
	float3 _8532;
	float3 _8533;
	float3 _8534;
	_8530 = quad_vector;
	_8531 = sample2curr_8427;
	F__quad_gather(_8530, _8531, _8532, _8533, _8534);
	sample2adjx_8489 = _8532;
	sample2adjy_8491 = _8533;
	sample2diag_8493 = _8534;
	float4 _8536;
	float3 _8537;
	float3 _8538;
	float3 _8539;
	float3 _8540;
	_8536 = quad_vector;
	_8537 = sample3curr_8436;
	F__quad_gather(_8536, _8537, _8538, _8539, _8540);
	sample3adjx_8495 = _8538;
	sample3adjy_8497 = _8539;
	sample3diag_8499 = _8540;
	float4 _8542;
	float3 _8543;
	float3 _8544;
	float3 _8545;
	float3 _8546;
	_8542 = quad_vector;
	_8543 = sample4curr_8445;
	F__quad_gather(_8542, _8543, _8544, _8545, _8546);
	sample4adjx_8501 = _8544;
	sample4adjy_8503 = _8545;
	sample4diag_8505 = _8546;
	float4 _8548;
	float3 _8549;
	float3 _8550;
	float3 _8551;
	float3 _8552;
	_8548 = quad_vector;
	_8549 = sample5curr_8454;
	F__quad_gather(_8548, _8549, _8550, _8551, _8552);
	sample5adjx_8507 = _8550;
	sample5adjy_8509 = _8551;
	sample5diag_8511 = _8552;
	float4 _8554;
	float3 _8555;
	float3 _8556;
	float3 _8557;
	float3 _8558;
	_8554 = quad_vector;
	_8555 = sample6curr_8463;
	F__quad_gather(_8554, _8555, _8556, _8557, _8558);
	sample6adjx_8513 = _8556;
	sample6adjy_8515 = _8557;
	sample6diag_8517 = _8558;
	float4 _8560;
	float3 _8561;
	float3 _8562;
	float3 _8563;
	float3 _8564;
	_8560 = quad_vector;
	_8561 = sample7curr_8472;
	F__quad_gather(_8560, _8561, _8562, _8563, _8564);
	sample7adjx_8519 = _8562;
	sample7adjy_8521 = _8563;
	sample7diag_8523 = _8564;
	float3 sum_8567 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _8580 = float4x3(sample0curr_8385.x, sample0curr_8385.y, sample0curr_8385.z, sample0adjx_8393.x, sample0adjx_8393.y, sample0adjx_8393.z, sample0adjy_8401.x, sample0adjy_8401.y, sample0adjy_8401.z, sample0diag_8409.x, sample0diag_8409.y, sample0diag_8409.z);
	float3 _8581 = mul(w0_8364, _8580);
	float3 _8582 = sum_8567 + _8581;
	sum_8567 = _8582;
	float4x3 _8595 = float4x3(sample1curr_8418.x, sample1curr_8418.y, sample1curr_8418.z, sample1adjx_8483.x, sample1adjx_8483.y, sample1adjx_8483.z, sample1adjy_8485.x, sample1adjy_8485.y, sample1adjy_8485.z, sample1diag_8487.x, sample1diag_8487.y, sample1diag_8487.z);
	float3 _8596 = mul(w1_8366, _8595);
	float3 _8597 = sum_8567 + _8596;
	sum_8567 = _8597;
	float4x3 _8610 = float4x3(sample3curr_8436.x, sample3curr_8436.y, sample3curr_8436.z, sample3adjx_8495.x, sample3adjx_8495.y, sample3adjx_8495.z, sample3adjy_8497.x, sample3adjy_8497.y, sample3adjy_8497.z, sample3diag_8499.x, sample3diag_8499.y, sample3diag_8499.z);
	float3 _8611 = mul(w3_8368, _8610);
	float3 _8612 = sum_8567 + _8611;
	sum_8567 = _8612;
	float4x3 _8625 = float4x3(sample4curr_8445.x, sample4curr_8445.y, sample4curr_8445.z, sample4adjx_8501.x, sample4adjx_8501.y, sample4adjx_8501.z, sample4adjy_8503.x, sample4adjy_8503.y, sample4adjy_8503.z, sample4diag_8505.x, sample4diag_8505.y, sample4diag_8505.z);
	float3 _8626 = mul(w4_8370, _8625);
	float3 _8627 = sum_8567 + _8626;
	sum_8567 = _8627;
	float4x3 _8640 = float4x3(sample2curr_8427.x, sample2curr_8427.y, sample2curr_8427.z, sample2adjy_8491.x, sample2adjy_8491.y, sample2adjy_8491.z, sample5curr_8454.x, sample5curr_8454.y, sample5curr_8454.z, sample5adjy_8509.x, sample5adjy_8509.y, sample5adjy_8509.z);
	float3 _8641 = mul(w2and5, _8640);
	float3 _8642 = sum_8567 + _8641;
	sum_8567 = _8642;
	float4x3 _8655 = float4x3(sample6curr_8463.x, sample6curr_8463.y, sample6curr_8463.z, sample6adjx_8513.x, sample6adjx_8513.y, sample6adjx_8513.z, sample7curr_8472.x, sample7curr_8472.y, sample7curr_8472.z, sample7adjx_8519.x, sample7adjx_8519.y, sample7adjx_8519.z);
	float3 _8656 = mul(w6and7, _8655);
	float3 _8657 = sum_8567 + _8656;
	sum_8567 = _8657;
	float3 _8659 = w8curr_8335.xxx * sample8curr_8481;
	float3 _8660 = sum_8567 + _8659;
	sum_8567 = _8660;
	float3 _8662 = sum_8567 * weight_sum_inv_8362.xxx;
	return _8662;
}
float3 F__tex2Dblur8x8shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _8671 = sigma * sigma;
	float _8673 = 5.00000000e-01 / _8671;
	float denom_inv_8674 = _8673;
	float _8676 = -2.50000000e-01 * denom_inv_8674;
	float _8677 = exp(_8676);
	float w0_5off_8678 = _8677;
	float _8680 = -1.00000000e+00 * denom_inv_8674;
	float _8681 = exp(_8680);
	float w1off_8682 = _8681;
	float _8684 = -2.25000000e+00 * denom_inv_8674;
	float _8685 = exp(_8684);
	float w1_5off_8686 = _8685;
	float _8688 = -4.00000000e+00 * denom_inv_8674;
	float _8689 = exp(_8688);
	float w2off_8690 = _8689;
	float _8692 = -6.25000000e+00 * denom_inv_8674;
	float _8693 = exp(_8692);
	float w2_5off_8694 = _8693;
	float _8696 = -1.22500000e+01 * denom_inv_8674;
	float _8697 = exp(_8696);
	float w3_5off_8698 = _8697;
	float _8699 = w0_5off_8678 + w1_5off_8686;
	float _8700 = w1_5off_8686 / _8699;
	float _8703 = lerp(_8700, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_8704 = _8703;
	float _8705 = w2_5off_8694 + w3_5off_8698;
	float _8706 = w3_5off_8698 / _8705;
	float _8709 = lerp(_8706, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_8710 = _8709;
	float _8712 = 1.00000000e+00 + w1off_8682;
	float _8713 = w1off_8682 / _8712;
	float texel0to1ratio_nearest_8714 = _8713;
	float _8715 = w1off_8682 + w2off_8690;
	float _8716 = w2off_8690 / _8715;
	float texel1to2ratio_nearest_8717 = _8716;
	float2 _8718 = float2(texel0to1ratio_nearest_8714, texel0to1ratio_nearest_8714);
	float2 _8720 = float2(0.00000000e+00, 0.00000000e+00) + _8718;
	float2 sample0curr_texel_offset_8721 = _8720;
	float _8722 = -texel1to2ratio_nearest_8717;
	float2 _8723 = float2(_8722, texel0to1ratio_nearest_8714);
	float2 _8725 = float2(-1.00000000e+00, 0.00000000e+00) + _8723;
	float2 sample0adjx_texel_offset_8726 = _8725;
	float _8727 = -texel1to2ratio_nearest_8717;
	float2 _8728 = float2(texel0to1ratio_nearest_8714, _8727);
	float2 _8730 = float2(0.00000000e+00, -1.00000000e+00) + _8728;
	float2 sample0adjy_texel_offset_8731 = _8730;
	float _8732 = -texel1to2ratio_nearest_8717;
	float _8733 = -texel1to2ratio_nearest_8717;
	float2 _8734 = float2(_8732, _8733);
	float2 _8736 = float2(-1.00000000e+00, -1.00000000e+00) + _8734;
	float2 sample0diag_texel_offset_8737 = _8736;
	float2 _8738 = float2(texel2to3ratio_8710, texel0to1ratio_8704);
	float2 _8740 = float2(2.00000000e+00, 0.00000000e+00) + _8738;
	float2 sample1_texel_offset_8741 = _8740;
	float2 _8742 = float2(texel0to1ratio_8704, texel2to3ratio_8710);
	float2 _8744 = float2(0.00000000e+00, 2.00000000e+00) + _8742;
	float2 sample2_texel_offset_8745 = _8744;
	float2 _8746 = float2(texel2to3ratio_8710, texel2to3ratio_8710);
	float2 _8748 = float2(2.00000000e+00, 2.00000000e+00) + _8746;
	float2 sample3_texel_offset_8749 = _8748;
	float _8752 = dot(float2(-4.00000000e+00, -4.00000000e+00), float2(-4.00000000e+00, -4.00000000e+00));
	float _8753 = -_8752;
	float _8754 = _8753 * denom_inv_8674;
	float _8755 = exp(_8754);
	float _8758 = dot(float2(-3.00000000e+00, -4.00000000e+00), float2(-3.00000000e+00, -4.00000000e+00));
	float _8759 = -_8758;
	float _8760 = _8759 * denom_inv_8674;
	float _8761 = exp(_8760);
	float _8762 = _8755 + _8761;
	float _8765 = dot(float2(-4.00000000e+00, -3.00000000e+00), float2(-4.00000000e+00, -3.00000000e+00));
	float _8766 = -_8765;
	float _8767 = _8766 * denom_inv_8674;
	float _8768 = exp(_8767);
	float _8769 = _8762 + _8768;
	float _8772 = dot(float2(-3.00000000e+00, -3.00000000e+00), float2(-3.00000000e+00, -3.00000000e+00));
	float _8773 = -_8772;
	float _8774 = _8773 * denom_inv_8674;
	float _8775 = exp(_8774);
	float _8776 = _8769 + _8775;
	float w3diag_8777 = _8776;
	float _8780 = dot(float2(-2.00000000e+00, -4.00000000e+00), float2(-2.00000000e+00, -4.00000000e+00));
	float _8781 = -_8780;
	float _8782 = _8781 * denom_inv_8674;
	float _8783 = exp(_8782);
	float _8786 = dot(float2(-1.00000000e+00, -4.00000000e+00), float2(-1.00000000e+00, -4.00000000e+00));
	float _8787 = -_8786;
	float _8788 = _8787 * denom_inv_8674;
	float _8789 = exp(_8788);
	float _8790 = _8783 + _8789;
	float _8793 = dot(float2(-2.00000000e+00, -3.00000000e+00), float2(-2.00000000e+00, -3.00000000e+00));
	float _8794 = -_8793;
	float _8795 = _8794 * denom_inv_8674;
	float _8796 = exp(_8795);
	float _8797 = _8790 + _8796;
	float _8800 = dot(float2(-1.00000000e+00, -3.00000000e+00), float2(-1.00000000e+00, -3.00000000e+00));
	float _8801 = -_8800;
	float _8802 = _8801 * denom_inv_8674;
	float _8803 = exp(_8802);
	float _8804 = _8797 + _8803;
	float w2diag_8805 = _8804;
	float _8808 = dot(float2(0.00000000e+00, -4.00000000e+00), float2(0.00000000e+00, -4.00000000e+00));
	float _8809 = -_8808;
	float _8810 = _8809 * denom_inv_8674;
	float _8811 = exp(_8810);
	float _8814 = dot(float2(1.00000000e+00, -4.00000000e+00), float2(1.00000000e+00, -4.00000000e+00));
	float _8815 = -_8814;
	float _8816 = _8815 * denom_inv_8674;
	float _8817 = exp(_8816);
	float _8818 = _8811 + _8817;
	float _8821 = dot(float2(0.00000000e+00, -3.00000000e+00), float2(0.00000000e+00, -3.00000000e+00));
	float _8822 = -_8821;
	float _8823 = _8822 * denom_inv_8674;
	float _8824 = exp(_8823);
	float _8825 = _8818 + _8824;
	float _8828 = dot(float2(1.00000000e+00, -3.00000000e+00), float2(1.00000000e+00, -3.00000000e+00));
	float _8829 = -_8828;
	float _8830 = _8829 * denom_inv_8674;
	float _8831 = exp(_8830);
	float _8832 = _8825 + _8831;
	float w2adjy_8833 = _8832;
	float _8836 = dot(float2(2.00000000e+00, -4.00000000e+00), float2(2.00000000e+00, -4.00000000e+00));
	float _8837 = -_8836;
	float _8838 = _8837 * denom_inv_8674;
	float _8839 = exp(_8838);
	float _8842 = dot(float2(3.00000000e+00, -4.00000000e+00), float2(3.00000000e+00, -4.00000000e+00));
	float _8843 = -_8842;
	float _8844 = _8843 * denom_inv_8674;
	float _8845 = exp(_8844);
	float _8846 = _8839 + _8845;
	float _8849 = dot(float2(2.00000000e+00, -3.00000000e+00), float2(2.00000000e+00, -3.00000000e+00));
	float _8850 = -_8849;
	float _8851 = _8850 * denom_inv_8674;
	float _8852 = exp(_8851);
	float _8853 = _8846 + _8852;
	float _8856 = dot(float2(3.00000000e+00, -3.00000000e+00), float2(3.00000000e+00, -3.00000000e+00));
	float _8857 = -_8856;
	float _8858 = _8857 * denom_inv_8674;
	float _8859 = exp(_8858);
	float _8860 = _8853 + _8859;
	float w3adjy_8861 = _8860;
	float _8864 = dot(float2(-4.00000000e+00, -2.00000000e+00), float2(-4.00000000e+00, -2.00000000e+00));
	float _8865 = -_8864;
	float _8866 = _8865 * denom_inv_8674;
	float _8867 = exp(_8866);
	float _8870 = dot(float2(-3.00000000e+00, -2.00000000e+00), float2(-3.00000000e+00, -2.00000000e+00));
	float _8871 = -_8870;
	float _8872 = _8871 * denom_inv_8674;
	float _8873 = exp(_8872);
	float _8874 = _8867 + _8873;
	float _8877 = dot(float2(-4.00000000e+00, -1.00000000e+00), float2(-4.00000000e+00, -1.00000000e+00));
	float _8878 = -_8877;
	float _8879 = _8878 * denom_inv_8674;
	float _8880 = exp(_8879);
	float _8881 = _8874 + _8880;
	float _8884 = dot(float2(-3.00000000e+00, -1.00000000e+00), float2(-3.00000000e+00, -1.00000000e+00));
	float _8885 = -_8884;
	float _8886 = _8885 * denom_inv_8674;
	float _8887 = exp(_8886);
	float _8888 = _8881 + _8887;
	float w1diag_8889 = _8888;
	float _8892 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _8893 = -_8892;
	float _8894 = _8893 * denom_inv_8674;
	float _8895 = exp(_8894);
	float _8898 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _8899 = -_8898;
	float _8900 = _8899 * denom_inv_8674;
	float _8901 = exp(_8900);
	float _8902 = _8895 + _8901;
	float _8905 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _8906 = -_8905;
	float _8907 = _8906 * denom_inv_8674;
	float _8908 = exp(_8907);
	float _8909 = _8902 + _8908;
	float _8912 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _8913 = -_8912;
	float _8914 = _8913 * denom_inv_8674;
	float _8915 = exp(_8914);
	float _8916 = _8909 + _8915;
	float w0diag_8917 = _8916;
	float _8920 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _8921 = -_8920;
	float _8922 = _8921 * denom_inv_8674;
	float _8923 = exp(_8922);
	float _8926 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _8927 = -_8926;
	float _8928 = _8927 * denom_inv_8674;
	float _8929 = exp(_8928);
	float _8930 = _8923 + _8929;
	float _8933 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _8934 = -_8933;
	float _8935 = _8934 * denom_inv_8674;
	float _8936 = exp(_8935);
	float _8937 = _8930 + _8936;
	float _8940 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _8941 = -_8940;
	float _8942 = _8941 * denom_inv_8674;
	float _8943 = exp(_8942);
	float _8944 = _8937 + _8943;
	float w0adjy_8945 = _8944;
	float _8948 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _8949 = -_8948;
	float _8950 = _8949 * denom_inv_8674;
	float _8951 = exp(_8950);
	float _8954 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _8955 = -_8954;
	float _8956 = _8955 * denom_inv_8674;
	float _8957 = exp(_8956);
	float _8958 = _8951 + _8957;
	float _8961 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _8962 = -_8961;
	float _8963 = _8962 * denom_inv_8674;
	float _8964 = exp(_8963);
	float _8965 = _8958 + _8964;
	float _8968 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _8969 = -_8968;
	float _8970 = _8969 * denom_inv_8674;
	float _8971 = exp(_8970);
	float _8972 = _8965 + _8971;
	float w1adjy_8973 = _8972;
	float _8976 = dot(float2(-4.00000000e+00, 0.00000000e+00), float2(-4.00000000e+00, 0.00000000e+00));
	float _8977 = -_8976;
	float _8978 = _8977 * denom_inv_8674;
	float _8979 = exp(_8978);
	float _8982 = dot(float2(-3.00000000e+00, 0.00000000e+00), float2(-3.00000000e+00, 0.00000000e+00));
	float _8983 = -_8982;
	float _8984 = _8983 * denom_inv_8674;
	float _8985 = exp(_8984);
	float _8986 = _8979 + _8985;
	float _8989 = dot(float2(-4.00000000e+00, 1.00000000e+00), float2(-4.00000000e+00, 1.00000000e+00));
	float _8990 = -_8989;
	float _8991 = _8990 * denom_inv_8674;
	float _8992 = exp(_8991);
	float _8993 = _8986 + _8992;
	float _8996 = dot(float2(-3.00000000e+00, 1.00000000e+00), float2(-3.00000000e+00, 1.00000000e+00));
	float _8997 = -_8996;
	float _8998 = _8997 * denom_inv_8674;
	float _8999 = exp(_8998);
	float _9000 = _8993 + _8999;
	float w1adjx_9001 = _9000;
	float _9004 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _9005 = -_9004;
	float _9006 = _9005 * denom_inv_8674;
	float _9007 = exp(_9006);
	float _9010 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _9011 = -_9010;
	float _9012 = _9011 * denom_inv_8674;
	float _9013 = exp(_9012);
	float _9014 = _9007 + _9013;
	float _9017 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _9018 = -_9017;
	float _9019 = _9018 * denom_inv_8674;
	float _9020 = exp(_9019);
	float _9021 = _9014 + _9020;
	float _9024 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _9025 = -_9024;
	float _9026 = _9025 * denom_inv_8674;
	float _9027 = exp(_9026);
	float _9028 = _9021 + _9027;
	float w0adjx_9029 = _9028;
	float _9032 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _9033 = -_9032;
	float _9034 = _9033 * denom_inv_8674;
	float _9035 = exp(_9034);
	float _9038 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _9039 = -_9038;
	float _9040 = _9039 * denom_inv_8674;
	float _9041 = exp(_9040);
	float _9042 = _9035 + _9041;
	float _9045 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _9046 = -_9045;
	float _9047 = _9046 * denom_inv_8674;
	float _9048 = exp(_9047);
	float _9049 = _9042 + _9048;
	float _9052 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _9053 = -_9052;
	float _9054 = _9053 * denom_inv_8674;
	float _9055 = exp(_9054);
	float _9056 = _9049 + _9055;
	float w0curr_9057 = _9056;
	float _9060 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _9061 = -_9060;
	float _9062 = _9061 * denom_inv_8674;
	float _9063 = exp(_9062);
	float _9066 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _9067 = -_9066;
	float _9068 = _9067 * denom_inv_8674;
	float _9069 = exp(_9068);
	float _9070 = _9063 + _9069;
	float _9073 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _9074 = -_9073;
	float _9075 = _9074 * denom_inv_8674;
	float _9076 = exp(_9075);
	float _9077 = _9070 + _9076;
	float _9080 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _9081 = -_9080;
	float _9082 = _9081 * denom_inv_8674;
	float _9083 = exp(_9082);
	float _9084 = _9077 + _9083;
	float w1curr_9085 = _9084;
	float _9088 = dot(float2(-4.00000000e+00, 2.00000000e+00), float2(-4.00000000e+00, 2.00000000e+00));
	float _9089 = -_9088;
	float _9090 = _9089 * denom_inv_8674;
	float _9091 = exp(_9090);
	float _9094 = dot(float2(-3.00000000e+00, 2.00000000e+00), float2(-3.00000000e+00, 2.00000000e+00));
	float _9095 = -_9094;
	float _9096 = _9095 * denom_inv_8674;
	float _9097 = exp(_9096);
	float _9098 = _9091 + _9097;
	float _9101 = dot(float2(-4.00000000e+00, 3.00000000e+00), float2(-4.00000000e+00, 3.00000000e+00));
	float _9102 = -_9101;
	float _9103 = _9102 * denom_inv_8674;
	float _9104 = exp(_9103);
	float _9105 = _9098 + _9104;
	float _9108 = dot(float2(-3.00000000e+00, 3.00000000e+00), float2(-3.00000000e+00, 3.00000000e+00));
	float _9109 = -_9108;
	float _9110 = _9109 * denom_inv_8674;
	float _9111 = exp(_9110);
	float _9112 = _9105 + _9111;
	float w3adjx_9113 = _9112;
	float _9116 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _9117 = -_9116;
	float _9118 = _9117 * denom_inv_8674;
	float _9119 = exp(_9118);
	float _9122 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _9123 = -_9122;
	float _9124 = _9123 * denom_inv_8674;
	float _9125 = exp(_9124);
	float _9126 = _9119 + _9125;
	float _9129 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _9130 = -_9129;
	float _9131 = _9130 * denom_inv_8674;
	float _9132 = exp(_9131);
	float _9133 = _9126 + _9132;
	float _9136 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _9137 = -_9136;
	float _9138 = _9137 * denom_inv_8674;
	float _9139 = exp(_9138);
	float _9140 = _9133 + _9139;
	float w2adjx_9141 = _9140;
	float _9144 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _9145 = -_9144;
	float _9146 = _9145 * denom_inv_8674;
	float _9147 = exp(_9146);
	float _9150 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _9151 = -_9150;
	float _9152 = _9151 * denom_inv_8674;
	float _9153 = exp(_9152);
	float _9154 = _9147 + _9153;
	float _9157 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _9158 = -_9157;
	float _9159 = _9158 * denom_inv_8674;
	float _9160 = exp(_9159);
	float _9161 = _9154 + _9160;
	float _9164 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _9165 = -_9164;
	float _9166 = _9165 * denom_inv_8674;
	float _9167 = exp(_9166);
	float _9168 = _9161 + _9167;
	float w2curr_9169 = _9168;
	float _9172 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _9173 = -_9172;
	float _9174 = _9173 * denom_inv_8674;
	float _9175 = exp(_9174);
	float _9178 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _9179 = -_9178;
	float _9180 = _9179 * denom_inv_8674;
	float _9181 = exp(_9180);
	float _9182 = _9175 + _9181;
	float _9185 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _9186 = -_9185;
	float _9187 = _9186 * denom_inv_8674;
	float _9188 = exp(_9187);
	float _9189 = _9182 + _9188;
	float _9192 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _9193 = -_9192;
	float _9194 = _9193 * denom_inv_8674;
	float _9195 = exp(_9194);
	float _9196 = _9189 + _9195;
	float w3curr_9197 = _9196;
	float4 _9198 = float4(w0curr_9057, w0adjx_9029, w0adjy_8945, w0diag_8917);
	float4 w0_9199 = _9198;
	float4 _9200 = float4(w1curr_9085, w1adjx_9001, w1adjy_8973, w1diag_8889);
	float4 w1_9201 = _9200;
	float4 _9202 = float4(w2curr_9169, w2adjx_9141, w2adjy_8833, w2diag_8805);
	float4 w2_9203 = _9202;
	float4 _9204 = float4(w3curr_9197, w3adjx_9113, w3adjy_8861, w3diag_8777);
	float4 w3_9205 = _9204;
	float4 _9206 = w0_9199 + w1_9201;
	float4 _9207 = _9206 + w2_9203;
	float4 _9208 = _9207 + w3_9205;
	float4 weight_sum4_9209 = _9208;
	float2 _9212 = weight_sum4_9209.xy + weight_sum4_9209.zw;
	float2 weight_sum2_9213 = _9212;
	float _9216 = weight_sum2_9213.x + weight_sum2_9213.y;
	float weight_sum_9217 = _9216;
	float _9219 = 1.00000000e+00 / weight_sum_9217;
	float weight_sum_inv_9220 = _9219;
	float2 _9222 = dxdy * quad_vector.xy;
	float2 dxdy_curr_9223 = _9222;
	float2 _9224 = dxdy_curr_9223 * sample0curr_texel_offset_8721;
	float2 _9226 = tex_uv.xy + _9224;
	float2 _9227;
	float _9228;
	_9227 = _9226;
	_9228 = input_gamma;
	float4 _9229 = F__tex2D_linearize(tex, _9227, _9228);
	float3 sample0curr_9231 = _9229.xyz;
	float2 _9232 = dxdy_curr_9223 * sample0adjx_texel_offset_8726;
	float2 _9234 = tex_uv.xy + _9232;
	float2 _9235;
	float _9236;
	_9235 = _9234;
	_9236 = input_gamma;
	float4 _9237 = F__tex2D_linearize(tex, _9235, _9236);
	float3 sample0adjx_9239 = _9237.xyz;
	float2 _9240 = dxdy_curr_9223 * sample0adjy_texel_offset_8731;
	float2 _9242 = tex_uv.xy + _9240;
	float2 _9243;
	float _9244;
	_9243 = _9242;
	_9244 = input_gamma;
	float4 _9245 = F__tex2D_linearize(tex, _9243, _9244);
	float3 sample0adjy_9247 = _9245.xyz;
	float2 _9248 = dxdy_curr_9223 * sample0diag_texel_offset_8737;
	float2 _9250 = tex_uv.xy + _9248;
	float2 _9251;
	float _9252;
	_9251 = _9250;
	_9252 = input_gamma;
	float4 _9253 = F__tex2D_linearize(tex, _9251, _9252);
	float3 sample0diag_9255 = _9253.xyz;
	float2 _9256 = dxdy_curr_9223 * sample1_texel_offset_8741;
	float2 _9257;
	_9257 = _9256;
	float4 _9258 = F__uv2_to_uv4(_9257);
	float4 _9259 = tex_uv + _9258;
	float4 _9260;
	float _9261;
	_9260 = _9259;
	_9261 = input_gamma;
	float4 _9262 = F__tex2Dlod_linearize(tex, _9260, _9261);
	float3 sample1curr_9264 = _9262.xyz;
	float2 _9265 = dxdy_curr_9223 * sample2_texel_offset_8745;
	float2 _9266;
	_9266 = _9265;
	float4 _9267 = F__uv2_to_uv4(_9266);
	float4 _9268 = tex_uv + _9267;
	float4 _9269;
	float _9270;
	_9269 = _9268;
	_9270 = input_gamma;
	float4 _9271 = F__tex2Dlod_linearize(tex, _9269, _9270);
	float3 sample2curr_9273 = _9271.xyz;
	float2 _9274 = dxdy_curr_9223 * sample3_texel_offset_8749;
	float2 _9275;
	_9275 = _9274;
	float4 _9276 = F__uv2_to_uv4(_9275);
	float4 _9277 = tex_uv + _9276;
	float4 _9278;
	float _9279;
	_9278 = _9277;
	_9279 = input_gamma;
	float4 _9280 = F__tex2Dlod_linearize(tex, _9278, _9279);
	float3 sample3curr_9282 = _9280.xyz;
	float3 sample1adjx_9284 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1adjy_9286 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1diag_9288 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjx_9290 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjy_9292 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2diag_9294 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjx_9296 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjy_9298 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3diag_9300 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _9301;
	float3 _9302;
	float3 _9303;
	float3 _9304;
	float3 _9305;
	_9301 = quad_vector;
	_9302 = sample1curr_9264;
	F__quad_gather(_9301, _9302, _9303, _9304, _9305);
	sample1adjx_9284 = _9303;
	sample1adjy_9286 = _9304;
	sample1diag_9288 = _9305;
	float4 _9307;
	float3 _9308;
	float3 _9309;
	float3 _9310;
	float3 _9311;
	_9307 = quad_vector;
	_9308 = sample2curr_9273;
	F__quad_gather(_9307, _9308, _9309, _9310, _9311);
	sample2adjx_9290 = _9309;
	sample2adjy_9292 = _9310;
	sample2diag_9294 = _9311;
	float4 _9313;
	float3 _9314;
	float3 _9315;
	float3 _9316;
	float3 _9317;
	_9313 = quad_vector;
	_9314 = sample3curr_9282;
	F__quad_gather(_9313, _9314, _9315, _9316, _9317);
	sample3adjx_9296 = _9315;
	sample3adjy_9298 = _9316;
	sample3diag_9300 = _9317;
	float3 sum_9320 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _9333 = float4x3(sample0curr_9231.x, sample0curr_9231.y, sample0curr_9231.z, sample0adjx_9239.x, sample0adjx_9239.y, sample0adjx_9239.z, sample0adjy_9247.x, sample0adjy_9247.y, sample0adjy_9247.z, sample0diag_9255.x, sample0diag_9255.y, sample0diag_9255.z);
	float3 _9334 = mul(w0_9199, _9333);
	float3 _9335 = sum_9320 + _9334;
	sum_9320 = _9335;
	float4x3 _9348 = float4x3(sample1curr_9264.x, sample1curr_9264.y, sample1curr_9264.z, sample1adjx_9284.x, sample1adjx_9284.y, sample1adjx_9284.z, sample1adjy_9286.x, sample1adjy_9286.y, sample1adjy_9286.z, sample1diag_9288.x, sample1diag_9288.y, sample1diag_9288.z);
	float3 _9349 = mul(w1_9201, _9348);
	float3 _9350 = sum_9320 + _9349;
	sum_9320 = _9350;
	float4x3 _9363 = float4x3(sample2curr_9273.x, sample2curr_9273.y, sample2curr_9273.z, sample2adjx_9290.x, sample2adjx_9290.y, sample2adjx_9290.z, sample2adjy_9292.x, sample2adjy_9292.y, sample2adjy_9292.z, sample2diag_9294.x, sample2diag_9294.y, sample2diag_9294.z);
	float3 _9364 = mul(w2_9203, _9363);
	float3 _9365 = sum_9320 + _9364;
	sum_9320 = _9365;
	float4x3 _9378 = float4x3(sample3curr_9282.x, sample3curr_9282.y, sample3curr_9282.z, sample3adjx_9296.x, sample3adjx_9296.y, sample3adjx_9296.z, sample3adjy_9298.x, sample3adjy_9298.y, sample3adjy_9298.z, sample3diag_9300.x, sample3diag_9300.y, sample3diag_9300.z);
	float3 _9379 = mul(w3_9205, _9378);
	float3 _9380 = sum_9320 + _9379;
	sum_9320 = _9380;
	float3 _9382 = sum_9320 * weight_sum_inv_9220.xxx;
	return _9382;
}
float3 F__tex2Dblur6x6shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _9391 = sigma * sigma;
	float _9393 = 5.00000000e-01 / _9391;
	float denom_inv_9394 = _9393;
	float _9396 = -2.50000000e-01 * denom_inv_9394;
	float _9397 = exp(_9396);
	float w0_5off_9398 = _9397;
	float _9400 = -1.00000000e+00 * denom_inv_9394;
	float _9401 = exp(_9400);
	float w1off_9402 = _9401;
	float _9404 = -2.25000000e+00 * denom_inv_9394;
	float _9405 = exp(_9404);
	float w1_5off_9406 = _9405;
	float _9408 = -4.00000000e+00 * denom_inv_9394;
	float _9409 = exp(_9408);
	float w2off_9410 = _9409;
	float _9412 = -6.25000000e+00 * denom_inv_9394;
	float _9413 = exp(_9412);
	float w2_5off_9414 = _9413;
	float _9416 = -1.22500000e+01 * denom_inv_9394;
	float _9417 = exp(_9416);
	float w3_5off_9418 = _9417;
	float _9419 = w0_5off_9398 + w1_5off_9406;
	float _9420 = w1_5off_9406 / _9419;
	float _9423 = lerp(_9420, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_9424 = _9423;
	float _9425 = w2_5off_9414 + w3_5off_9418;
	float _9426 = w3_5off_9418 / _9425;
	float _9429 = lerp(_9426, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_9430 = _9429;
	float _9432 = 1.00000000e+00 + w1off_9402;
	float _9433 = w1off_9402 / _9432;
	float texel0to1ratio_nearest_9434 = _9433;
	float _9435 = w1off_9402 + w2off_9410;
	float _9436 = w2off_9410 / _9435;
	float texel1to2ratio_nearest_9437 = _9436;
	float2 _9438 = float2(texel0to1ratio_nearest_9434, texel0to1ratio_nearest_9434);
	float2 _9440 = float2(0.00000000e+00, 0.00000000e+00) + _9438;
	float2 sample0curr_texel_offset_9441 = _9440;
	float _9442 = -texel1to2ratio_nearest_9437;
	float2 _9443 = float2(_9442, texel0to1ratio_nearest_9434);
	float2 _9445 = float2(-1.00000000e+00, 0.00000000e+00) + _9443;
	float2 sample0adjx_texel_offset_9446 = _9445;
	float _9447 = -texel1to2ratio_nearest_9437;
	float2 _9448 = float2(texel0to1ratio_nearest_9434, _9447);
	float2 _9450 = float2(0.00000000e+00, -1.00000000e+00) + _9448;
	float2 sample0adjy_texel_offset_9451 = _9450;
	float _9452 = -texel1to2ratio_nearest_9437;
	float _9453 = -texel1to2ratio_nearest_9437;
	float2 _9454 = float2(_9452, _9453);
	float2 _9456 = float2(-1.00000000e+00, -1.00000000e+00) + _9454;
	float2 sample0diag_texel_offset_9457 = _9456;
	float2 _9458 = float2(texel2to3ratio_9430, texel0to1ratio_9424);
	float2 _9460 = float2(2.00000000e+00, 0.00000000e+00) + _9458;
	float2 sample1_texel_offset_9461 = _9460;
	float2 _9462 = float2(texel0to1ratio_9424, texel2to3ratio_9430);
	float2 _9464 = float2(0.00000000e+00, 2.00000000e+00) + _9462;
	float2 sample2_texel_offset_9465 = _9464;
	float2 _9466 = float2(texel2to3ratio_9430, texel2to3ratio_9430);
	float2 _9468 = float2(2.00000000e+00, 2.00000000e+00) + _9466;
	float2 sample3_texel_offset_9469 = _9468;
	float _9472 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _9473 = -_9472;
	float _9474 = _9473 * denom_inv_9394;
	float _9475 = exp(_9474);
	float _9478 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _9479 = -_9478;
	float _9480 = _9479 * denom_inv_9394;
	float _9481 = exp(_9480);
	float _9482 = _9475 + _9481;
	float _9485 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _9486 = -_9485;
	float _9487 = _9486 * denom_inv_9394;
	float _9488 = exp(_9487);
	float _9489 = _9482 + _9488;
	float _9492 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _9493 = -_9492;
	float _9494 = _9493 * denom_inv_9394;
	float _9495 = exp(_9494);
	float _9496 = _9489 + _9495;
	float w0diag_9497 = _9496;
	float _9500 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _9501 = -_9500;
	float _9502 = _9501 * denom_inv_9394;
	float _9503 = exp(_9502);
	float _9506 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _9507 = -_9506;
	float _9508 = _9507 * denom_inv_9394;
	float _9509 = exp(_9508);
	float _9510 = _9503 + _9509;
	float _9513 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _9514 = -_9513;
	float _9515 = _9514 * denom_inv_9394;
	float _9516 = exp(_9515);
	float _9517 = _9510 + _9516;
	float _9520 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _9521 = -_9520;
	float _9522 = _9521 * denom_inv_9394;
	float _9523 = exp(_9522);
	float _9524 = _9517 + _9523;
	float w0adjy_9525 = _9524;
	float _9528 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _9529 = -_9528;
	float _9530 = _9529 * denom_inv_9394;
	float _9531 = exp(_9530);
	float _9534 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _9535 = -_9534;
	float _9536 = _9535 * denom_inv_9394;
	float _9537 = exp(_9536);
	float _9538 = _9531 + _9537;
	float _9541 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _9542 = -_9541;
	float _9543 = _9542 * denom_inv_9394;
	float _9544 = exp(_9543);
	float _9545 = _9538 + _9544;
	float _9548 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _9549 = -_9548;
	float _9550 = _9549 * denom_inv_9394;
	float _9551 = exp(_9550);
	float _9552 = _9545 + _9551;
	float w1adjy_9553 = _9552;
	float _9556 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _9557 = -_9556;
	float _9558 = _9557 * denom_inv_9394;
	float _9559 = exp(_9558);
	float _9562 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _9563 = -_9562;
	float _9564 = _9563 * denom_inv_9394;
	float _9565 = exp(_9564);
	float _9566 = _9559 + _9565;
	float _9569 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _9570 = -_9569;
	float _9571 = _9570 * denom_inv_9394;
	float _9572 = exp(_9571);
	float _9573 = _9566 + _9572;
	float _9576 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _9577 = -_9576;
	float _9578 = _9577 * denom_inv_9394;
	float _9579 = exp(_9578);
	float _9580 = _9573 + _9579;
	float w0adjx_9581 = _9580;
	float _9584 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _9585 = -_9584;
	float _9586 = _9585 * denom_inv_9394;
	float _9587 = exp(_9586);
	float _9590 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _9591 = -_9590;
	float _9592 = _9591 * denom_inv_9394;
	float _9593 = exp(_9592);
	float _9594 = _9587 + _9593;
	float _9597 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _9598 = -_9597;
	float _9599 = _9598 * denom_inv_9394;
	float _9600 = exp(_9599);
	float _9601 = _9594 + _9600;
	float _9604 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _9605 = -_9604;
	float _9606 = _9605 * denom_inv_9394;
	float _9607 = exp(_9606);
	float _9608 = _9601 + _9607;
	float w0curr_9609 = _9608;
	float _9612 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _9613 = -_9612;
	float _9614 = _9613 * denom_inv_9394;
	float _9615 = exp(_9614);
	float _9618 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _9619 = -_9618;
	float _9620 = _9619 * denom_inv_9394;
	float _9621 = exp(_9620);
	float _9622 = _9615 + _9621;
	float _9625 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _9626 = -_9625;
	float _9627 = _9626 * denom_inv_9394;
	float _9628 = exp(_9627);
	float _9629 = _9622 + _9628;
	float _9632 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _9633 = -_9632;
	float _9634 = _9633 * denom_inv_9394;
	float _9635 = exp(_9634);
	float _9636 = _9629 + _9635;
	float w1curr_9637 = _9636;
	float _9640 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _9641 = -_9640;
	float _9642 = _9641 * denom_inv_9394;
	float _9643 = exp(_9642);
	float _9646 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _9647 = -_9646;
	float _9648 = _9647 * denom_inv_9394;
	float _9649 = exp(_9648);
	float _9650 = _9643 + _9649;
	float _9653 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _9654 = -_9653;
	float _9655 = _9654 * denom_inv_9394;
	float _9656 = exp(_9655);
	float _9657 = _9650 + _9656;
	float _9660 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _9661 = -_9660;
	float _9662 = _9661 * denom_inv_9394;
	float _9663 = exp(_9662);
	float _9664 = _9657 + _9663;
	float w2adjx_9665 = _9664;
	float _9668 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _9669 = -_9668;
	float _9670 = _9669 * denom_inv_9394;
	float _9671 = exp(_9670);
	float _9674 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _9675 = -_9674;
	float _9676 = _9675 * denom_inv_9394;
	float _9677 = exp(_9676);
	float _9678 = _9671 + _9677;
	float _9681 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _9682 = -_9681;
	float _9683 = _9682 * denom_inv_9394;
	float _9684 = exp(_9683);
	float _9685 = _9678 + _9684;
	float _9688 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _9689 = -_9688;
	float _9690 = _9689 * denom_inv_9394;
	float _9691 = exp(_9690);
	float _9692 = _9685 + _9691;
	float w2curr_9693 = _9692;
	float _9696 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _9697 = -_9696;
	float _9698 = _9697 * denom_inv_9394;
	float _9699 = exp(_9698);
	float _9702 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _9703 = -_9702;
	float _9704 = _9703 * denom_inv_9394;
	float _9705 = exp(_9704);
	float _9706 = _9699 + _9705;
	float _9709 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _9710 = -_9709;
	float _9711 = _9710 * denom_inv_9394;
	float _9712 = exp(_9711);
	float _9713 = _9706 + _9712;
	float _9716 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _9717 = -_9716;
	float _9718 = _9717 * denom_inv_9394;
	float _9719 = exp(_9718);
	float _9720 = _9713 + _9719;
	float w3curr_9721 = _9720;
	float _9722 = w0curr_9609 + w1curr_9637;
	float _9723 = _9722 + w2curr_9693;
	float _9724 = _9723 + w3curr_9721;
	float _9725 = _9724 + w0adjx_9581;
	float _9726 = _9725 + w2adjx_9665;
	float _9727 = _9726 + w0adjy_9525;
	float _9728 = _9727 + w1adjy_9553;
	float _9729 = _9728 + w0diag_9497;
	float _9731 = 1.00000000e+00 / _9729;
	float weight_sum_inv_9732 = _9731;
	float4 _9733 = float4(w0curr_9609, w0adjx_9581, w0adjy_9525, w0diag_9497);
	float4 w0_9734 = _9733;
	float2 _9736 = dxdy * quad_vector.xy;
	float2 dxdy_curr_9737 = _9736;
	float2 _9738 = dxdy_curr_9737 * sample0curr_texel_offset_9441;
	float2 _9740 = tex_uv.xy + _9738;
	float2 _9741;
	float _9742;
	_9741 = _9740;
	_9742 = input_gamma;
	float4 _9743 = F__tex2D_linearize(tex, _9741, _9742);
	float3 sample0curr_9745 = _9743.xyz;
	float2 _9746 = dxdy_curr_9737 * sample0adjx_texel_offset_9446;
	float2 _9748 = tex_uv.xy + _9746;
	float2 _9749;
	float _9750;
	_9749 = _9748;
	_9750 = input_gamma;
	float4 _9751 = F__tex2D_linearize(tex, _9749, _9750);
	float3 sample0adjx_9753 = _9751.xyz;
	float2 _9754 = dxdy_curr_9737 * sample0adjy_texel_offset_9451;
	float2 _9756 = tex_uv.xy + _9754;
	float2 _9757;
	float _9758;
	_9757 = _9756;
	_9758 = input_gamma;
	float4 _9759 = F__tex2D_linearize(tex, _9757, _9758);
	float3 sample0adjy_9761 = _9759.xyz;
	float2 _9762 = dxdy_curr_9737 * sample0diag_texel_offset_9457;
	float2 _9764 = tex_uv.xy + _9762;
	float2 _9765;
	float _9766;
	_9765 = _9764;
	_9766 = input_gamma;
	float4 _9767 = F__tex2D_linearize(tex, _9765, _9766);
	float3 sample0diag_9769 = _9767.xyz;
	float2 _9770 = dxdy_curr_9737 * sample1_texel_offset_9461;
	float2 _9771;
	_9771 = _9770;
	float4 _9772 = F__uv2_to_uv4(_9771);
	float4 _9773 = tex_uv + _9772;
	float4 _9774;
	float _9775;
	_9774 = _9773;
	_9775 = input_gamma;
	float4 _9776 = F__tex2Dlod_linearize(tex, _9774, _9775);
	float3 sample1curr_9778 = _9776.xyz;
	float2 _9779 = dxdy_curr_9737 * sample2_texel_offset_9465;
	float2 _9780;
	_9780 = _9779;
	float4 _9781 = F__uv2_to_uv4(_9780);
	float4 _9782 = tex_uv + _9781;
	float4 _9783;
	float _9784;
	_9783 = _9782;
	_9784 = input_gamma;
	float4 _9785 = F__tex2Dlod_linearize(tex, _9783, _9784);
	float3 sample2curr_9787 = _9785.xyz;
	float2 _9788 = dxdy_curr_9737 * sample3_texel_offset_9469;
	float2 _9789;
	_9789 = _9788;
	float4 _9790 = F__uv2_to_uv4(_9789);
	float4 _9791 = tex_uv + _9790;
	float4 _9792;
	float _9793;
	_9792 = _9791;
	_9793 = input_gamma;
	float4 _9794 = F__tex2Dlod_linearize(tex, _9792, _9793);
	float3 sample3curr_9796 = _9794.xyz;
	float3 sample1adjx_9798 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1adjy_9800 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1diag_9802 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjx_9804 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjy_9806 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2diag_9808 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _9809;
	float3 _9810;
	float3 _9811;
	float3 _9812;
	float3 _9813;
	_9809 = quad_vector;
	_9810 = sample1curr_9778;
	F__quad_gather(_9809, _9810, _9811, _9812, _9813);
	sample1adjx_9798 = _9811;
	sample1adjy_9800 = _9812;
	sample1diag_9802 = _9813;
	float4 _9815;
	float3 _9816;
	float3 _9817;
	float3 _9818;
	float3 _9819;
	_9815 = quad_vector;
	_9816 = sample2curr_9787;
	F__quad_gather(_9815, _9816, _9817, _9818, _9819);
	sample2adjx_9804 = _9817;
	sample2adjy_9806 = _9818;
	sample2diag_9808 = _9819;
	float3 sum_9822 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _9835 = float4x3(sample0curr_9745.x, sample0curr_9745.y, sample0curr_9745.z, sample0adjx_9753.x, sample0adjx_9753.y, sample0adjx_9753.z, sample0adjy_9761.x, sample0adjy_9761.y, sample0adjy_9761.z, sample0diag_9769.x, sample0diag_9769.y, sample0diag_9769.z);
	float3 _9836 = mul(w0_9734, _9835);
	float3 _9837 = sum_9822 + _9836;
	sum_9822 = _9837;
	float3 _9839 = w1curr_9637.xxx * sample1curr_9778;
	float3 _9841 = w1adjy_9553.xxx * sample1adjy_9800;
	float3 _9842 = _9839 + _9841;
	float3 _9844 = w2curr_9693.xxx * sample2curr_9787;
	float3 _9845 = _9842 + _9844;
	float3 _9847 = w2adjx_9665.xxx * sample2adjx_9804;
	float3 _9848 = _9845 + _9847;
	float3 _9850 = w3curr_9721.xxx * sample3curr_9796;
	float3 _9851 = _9848 + _9850;
	float3 _9852 = sum_9822 + _9851;
	sum_9822 = _9852;
	float3 _9854 = sum_9822 * weight_sum_inv_9732.xxx;
	return _9854;
}
float3 F__tex2Dblur11resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9861;
	float2 _9862;
	float _9863;
	float _9864;
	_9861 = tex_uv;
	_9862 = dxdy;
	_9863 = 2.15986323e+00;
	_9864 = input_gamma;
	float3 _9866 = F__tex2Dblur11resize(tex, _9861, _9862, _9863, _9864);
	return _9866;
}
float3 F__tex2Dblur9resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9873;
	float2 _9874;
	float _9875;
	float _9876;
	_9873 = tex_uv;
	_9874 = dxdy;
	_9875 = 1.75332034e+00;
	_9876 = input_gamma;
	float3 _9878 = F__tex2Dblur9resize(tex, _9873, _9874, _9875, _9876);
	return _9878;
}
float3 F__tex2Dblur7resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9885;
	float2 _9886;
	float _9887;
	float _9888;
	_9885 = tex_uv;
	_9886 = dxdy;
	_9887 = 1.36103511e+00;
	_9888 = input_gamma;
	float3 _9890 = F__tex2Dblur7resize(tex, _9885, _9886, _9887, _9888);
	return _9890;
}
float3 F__tex2Dblur5resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9897;
	float2 _9898;
	float _9899;
	float _9900;
	_9897 = tex_uv;
	_9898 = dxdy;
	_9899 = 9.84570324e-01;
	_9900 = input_gamma;
	float3 _9902 = F__tex2Dblur5resize(tex, _9897, _9898, _9899, _9900);
	return _9902;
}
float3 F__tex2Dblur3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9909;
	float2 _9910;
	float _9911;
	float _9912;
	_9909 = tex_uv;
	_9910 = dxdy;
	_9911 = 6.26660168e-01;
	_9912 = input_gamma;
	float3 _9914 = F__tex2Dblur3resize(tex, _9909, _9910, _9911, _9912);
	return _9914;
}
float3 F__tex2Dblur11fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9921;
	float2 _9922;
	float _9923;
	float _9924;
	_9921 = tex_uv;
	_9922 = dxdy;
	_9923 = 2.15986323e+00;
	_9924 = input_gamma;
	float3 _9926 = F__tex2Dblur11fast(tex, _9921, _9922, _9923, _9924);
	return _9926;
}
float3 F__tex2Dblur9fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9933;
	float2 _9934;
	float _9935;
	float _9936;
	_9933 = tex_uv;
	_9934 = dxdy;
	_9935 = 1.75332034e+00;
	_9936 = input_gamma;
	float3 _9938 = F__tex2Dblur9fast(tex, _9933, _9934, _9935, _9936);
	return _9938;
}
float3 F__tex2Dblur7fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9945;
	float2 _9946;
	float _9947;
	float _9948;
	_9945 = tex_uv;
	_9946 = dxdy;
	_9947 = 1.36103511e+00;
	_9948 = input_gamma;
	float3 _9950 = F__tex2Dblur7fast(tex, _9945, _9946, _9947, _9948);
	return _9950;
}
float3 F__tex2Dblur5fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9957;
	float2 _9958;
	float _9959;
	float _9960;
	_9957 = tex_uv;
	_9958 = dxdy;
	_9959 = 9.84570324e-01;
	_9960 = input_gamma;
	float3 _9962 = F__tex2Dblur5fast(tex, _9957, _9958, _9959, _9960);
	return _9962;
}
float3 F__tex2Dblur3fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9969;
	float2 _9970;
	float _9971;
	float _9972;
	_9969 = tex_uv;
	_9970 = dxdy;
	_9971 = 6.26660168e-01;
	_9972 = input_gamma;
	float3 _9974 = F__tex2Dblur3fast(tex, _9969, _9970, _9971, _9972);
	return _9974;
}
float3 F__tex2Dblur43fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9981;
	float2 _9982;
	float _9983;
	float _9984;
	_9981 = tex_uv;
	_9982 = dxdy;
	_9983 = 1.01852055e+01;
	_9984 = input_gamma;
	float3 _9986 = F__tex2Dblur43fast(tex, _9981, _9982, _9983, _9984);
	return _9986;
}
float3 F__tex2Dblur31fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9993;
	float2 _9994;
	float _9995;
	float _9996;
	_9993 = tex_uv;
	_9994 = dxdy;
	_9995 = 6.86488056e+00;
	_9996 = input_gamma;
	float3 _9998 = F__tex2Dblur31fast(tex, _9993, _9994, _9995, _9996);
	return _9998;
}
float3 F__tex2Dblur25fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10005;
	float2 _10006;
	float _10007;
	float _10008;
	_10005 = tex_uv;
	_10006 = dxdy;
	_10007 = 5.34095764e+00;
	_10008 = input_gamma;
	float3 _10010 = F__tex2Dblur25fast(tex, _10005, _10006, _10007, _10008);
	return _10010;
}
float3 F__tex2Dblur17fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10017;
	float2 _10018;
	float _10019;
	float _10020;
	_10017 = tex_uv;
	_10018 = dxdy;
	_10019 = 3.45535588e+00;
	_10020 = input_gamma;
	float3 _10022 = F__tex2Dblur17fast(tex, _10017, _10018, _10019, _10020);
	return _10022;
}
float3 F__tex2Dblur3x3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10029;
	float2 _10030;
	float _10031;
	float _10032;
	_10029 = tex_uv;
	_10030 = dxdy;
	_10031 = 6.26660168e-01;
	_10032 = input_gamma;
	float3 _10034 = F__tex2Dblur3x3resize(tex, _10029, _10030, _10031, _10032);
	return _10034;
}
float3 F__tex2Dblur9x9(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10041;
	float2 _10042;
	float _10043;
	float _10044;
	_10041 = tex_uv;
	_10042 = dxdy;
	_10043 = 1.75332034e+00;
	_10044 = input_gamma;
	float3 _10046 = F__tex2Dblur9x9(tex, _10041, _10042, _10043, _10044);
	return _10046;
}
float3 F__tex2Dblur7x7(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10053;
	float2 _10054;
	float _10055;
	float _10056;
	_10053 = tex_uv;
	_10054 = dxdy;
	_10055 = 1.36103511e+00;
	_10056 = input_gamma;
	float3 _10058 = F__tex2Dblur7x7(tex, _10053, _10054, _10055, _10056);
	return _10058;
}
float3 F__tex2Dblur5x5(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10065;
	float2 _10066;
	float _10067;
	float _10068;
	_10065 = tex_uv;
	_10066 = dxdy;
	_10067 = 9.84570324e-01;
	_10068 = input_gamma;
	float3 _10070 = F__tex2Dblur5x5(tex, _10065, _10066, _10067, _10068);
	return _10070;
}
float3 F__tex2Dblur3x3(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10077;
	float2 _10078;
	float _10079;
	float _10080;
	_10077 = tex_uv;
	_10078 = dxdy;
	_10079 = 6.26660168e-01;
	_10080 = input_gamma;
	float3 _10082 = F__tex2Dblur3x3(tex, _10077, _10078, _10079, _10080);
	return _10082;
}
float3 F__tex2Dblur12x12shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10090;
	float2 _10091;
	float4 _10092;
	float _10093;
	float _10094;
	_10090 = tex_uv;
	_10091 = dxdy;
	_10092 = quad_vector;
	_10093 = 2.21523428e+00;
	_10094 = input_gamma;
	float3 _10096 = F__tex2Dblur12x12shared(tex, _10090, _10091, _10092, _10093, _10094);
	return _10096;
}
float3 F__tex2Dblur10x10shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10104;
	float2 _10105;
	float4 _10106;
	float _10107;
	float _10108;
	_10104 = tex_uv;
	_10105 = dxdy;
	_10106 = quad_vector;
	_10107 = 1.80478513e+00;
	_10108 = input_gamma;
	float3 _10110 = F__tex2Dblur10x10shared(tex, _10104, _10105, _10106, _10107, _10108);
	return _10110;
}
float3 F__tex2Dblur8x8shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10118;
	float2 _10119;
	float4 _10120;
	float _10121;
	float _10122;
	_10118 = tex_uv;
	_10119 = dxdy;
	_10120 = quad_vector;
	_10121 = 1.40800786e+00;
	_10122 = input_gamma;
	float3 _10124 = F__tex2Dblur8x8shared(tex, _10118, _10119, _10120, _10121, _10122);
	return _10124;
}
float3 F__tex2Dblur6x6shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10132;
	float2 _10133;
	float4 _10134;
	float _10135;
	float _10136;
	_10132 = tex_uv;
	_10133 = dxdy;
	_10134 = quad_vector;
	_10135 = 1.02626956e+00;
	_10136 = input_gamma;
	float3 _10138 = F__tex2Dblur6x6shared(tex, _10132, _10133, _10134, _10135, _10136);
	return _10138;
}
void F__blurHorizontalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 blur_dxdy : TEXCOORD1)
{
	uint _10145;
	float4 _10146;
	float2 _10147;
	_10145 = id;
	F__PostProcessVS(_10145, _10146, _10147);
	position = _10146;
	texcoord = _10147;
	blur_dxdy = float2(2.08333344e-03, 0.00000000e+00);
	return;
}
void F__blurHorizontalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 blur_dxdy : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _10156 = F__get_intermediate_gamma();
	float2 _10157;
	float2 _10158;
	float _10159;
	_10157 = texcoord;
	_10158 = blur_dxdy;
	_10159 = _10156;
	float3 _10160 = F__tex2Dblur9fast(V__samplerBlurVertical, _10157, _10158, _10159);
	float3 blur_color = _10160;
	float4 _10166 = float4(blur_color.x, blur_color.y, blur_color.z, 1.00000000e+00);
	float _10167 = F__get_intermediate_gamma();
	float4 _10168;
	float _10169;
	_10168 = _10166;
	_10169 = _10167;
	float4 _10170 = F__encode_output(_10168, _10169);
	color = _10170;
	return;
}
void F__blurVerticalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 blur_dxdy : TEXCOORD1)
{
	uint _10177;
	float4 _10178;
	float2 _10179;
	_10177 = id;
	F__PostProcessVS(_10177, _10178, _10179);
	position = _10178;
	texcoord = _10179;
	blur_dxdy = float2(0.00000000e+00, 3.70370364e-03);
	return;
}
void F__blurVerticalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 blur_dxdy : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _10188 = F__get_intermediate_gamma();
	float2 _10189;
	float2 _10190;
	float _10191;
	_10189 = texcoord;
	_10190 = blur_dxdy;
	_10191 = _10188;
	float3 _10192 = F__tex2Dblur9fast(V__samplerBloomApproxHoriz, _10189, _10190, _10191);
	float3 blur_color_10193 = _10192;
	float4 _10198 = float4(blur_color_10193.x, blur_color_10193.y, blur_color_10193.z, 1.00000000e+00);
	float _10199 = F__get_intermediate_gamma();
	float4 _10200;
	float _10201;
	_10200 = _10198;
	_10201 = _10199;
	float4 _10202 = F__encode_output(_10200, _10201);
	color = _10202;
	return;
}
void F__freezeFrameVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	bool _10209 = V__scanline_deinterlacing_mode == 2u;
	bool _10211 = V__scanline_deinterlacing_mode == 3u;
	bool _10212 = _10209 || _10211;
	bool _10213 = V__enable_interlacing && _10212;
	float use_deinterlacing_tex = ((float)_10213);
	bool _10217 = id == 2u;
	float _10219 = use_deinterlacing_tex * 2.00000000e+00;
	float _10221 = _10217 ? _10219 : 0.00000000e+00;
	texcoord[0] = _10221;
	bool _10223 = id == 1u;
	float _10226 = _10223 ? 2.00000000e+00 : 0.00000000e+00;
	texcoord[1] = _10226;
	float2 _10228 = texcoord * float2(2.00000000e+00, -2.00000000e+00);
	float2 _10230 = _10228 + float2(-1.00000000e+00, 1.00000000e+00);
	float4 _10235 = float4(_10230.x, _10230.y, 0.00000000e+00, 1.00000000e+00);
	position = _10235;
	return;
}
void F__freezeFramePS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float4 _10241 = V__samplerBeamConvergence.t.Sample(V__samplerBeamConvergence.s, texcoord);
	color = _10241;
	return;
}
void F__deinterlaceVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 v_step : TEXCOORD1)
{
	uint _10248;
	float4 _10249;
	float2 _10250;
	_10248 = id;
	F__freezeFrameVS(_10248, _10249, _10250);
	position = _10249;
	texcoord = _10250;
	float _10253 = rcp(1.08000000e+03);
	float _10255 = ((float)V__scanline_thickness) * _10253;
	float2 _10257 = float2(0.00000000e+00, _10255);
	v_step = _10257;
	return;
}
void F__deinterlacePS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 v_step : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	bool _10265 = V__geom_rotation_mode == 0u;
	bool _10267 = V__geom_rotation_mode == 2u;
	bool _10268 = _10265 || _10267;
	float2 _10271 = lerp(texcoord.yx, texcoord, ((float2)_10268.xx));
	float2 rotated_coord_10272 = _10271;
	bool _10274 = V__geom_rotation_mode == 0u;
	bool _10276 = V__geom_rotation_mode == 2u;
	bool _10277 = _10274 || _10276;
	float _10281 = lerp(1.92000000e+03, 1.08000000e+03, ((float)_10277));
	float scale_10282 = _10281;
	float2 _10283;
	float _10284;
	_10283 = rotated_coord_10272;
	_10284 = scale_10282;
	S__InterpolationFieldData _10285 = F__calc_interpolation_field_data(_10283, _10284);
	S__InterpolationFieldData interpolation_data_10286 = _10285;
	bool _10291 = V__scanline_deinterlacing_mode == 2u;
	bool _10292 = V__enable_interlacing && _10291;
	[branch] if (_10292)
	{
		float2 _10293;
		_10293 = texcoord;
		float4 _10294 = F__tex2D_nograd(V__samplerBeamConvergence, _10293);
		float4 cur_line_color = _10294;
		float2 _10296;
		_10296 = texcoord;
		float4 _10297 = F__tex2D_nograd(V__samplerFreezeFrame, _10296);
		float4 cur_line_prev_color = _10297;
		float4 _10299 = cur_line_color + cur_line_prev_color;
		float4 _10301 = _10299 / float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
		float4 avg_color = _10301;
		float4 _10304 = float4(1.50000000e+00, 1.50000000e+00, 1.50000000e+00, 1.50000000e+00) * cur_line_color;
		float4 _10306 = lerp(_10304, avg_color, ((float4)interpolation_data_10286.wrong_field.xxxx));
		float4 raw_out_color = _10306;
		float4 _10308;
		float _10309;
		_10308 = raw_out_color;
		_10309 = V__deinterlacing_blend_gamma;
		float4 _10310 = F__encode_output(_10308, _10309);
		color = _10310;
	}
	else
	{
		bool _10315 = V__scanline_deinterlacing_mode == 3u;
		bool _10316 = V__enable_interlacing && _10315;
		if (_10316)
		{
			float _10320 = lerp(1.00000000e+00, -1.00000000e+00, ((float)interpolation_data_10286.scanline_parity));
			float2 _10322 = _10320.xx * v_step;
			float2 raw_offset = _10322;
			float2 _10326 = lerp(float2(0.00000000e+00, 0.00000000e+00), raw_offset, ((float2)interpolation_data_10286.wrong_field.xx));
			float2 curr_offset = _10326;
			float2 _10330 = lerp(raw_offset, float2(0.00000000e+00, 0.00000000e+00), ((float2)interpolation_data_10286.wrong_field.xx));
			float2 prev_offset = _10330;
			float2 _10332 = texcoord + curr_offset;
			float2 _10333;
			_10333 = _10332;
			float4 _10334 = F__tex2D_nograd(V__samplerBeamConvergence, _10333);
			float4 cur_line_color_10335 = _10334;
			float2 _10336 = texcoord + prev_offset;
			float2 _10337;
			_10337 = _10336;
			float4 _10338 = F__tex2D_nograd(V__samplerFreezeFrame, _10337);
			float4 prev_line_color = _10338;
			float4 _10340 = cur_line_color_10335 + prev_line_color;
			float4 _10342 = _10340 / float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
			float4 avg_color_10343 = _10342;
			float4 _10345 = lerp(cur_line_color_10335, avg_color_10343, ((float4)interpolation_data_10286.wrong_field.xxxx));
			float4 raw_out_color_10346 = _10345;
			float4 _10347;
			float _10348;
			_10347 = raw_out_color_10346;
			_10348 = V__deinterlacing_blend_gamma;
			float4 _10349 = F__encode_output(_10347, _10348);
			color = _10349;
		}
		else
		{
			float2 _10350;
			_10350 = texcoord;
			float4 _10351 = F__tex2D_nograd(V__samplerBeamConvergence, _10350);
			color = _10351;
		}
	}
	return;
}
float F__get_selected_aspect_ratio()
{
	float aspect_ratio = 0.00000000e+00;
	bool _10360 = V__mask_type == 0;
	bool _10362 = V__mask_type == 3;
	bool _10363 = _10360 || _10362;
	[flatten] if (_10363)
	{
		aspect_ratio = V__scale_triad_height;
	}
	else
	{
		bool _10368 = V__mask_type == 1;
		bool _10370 = V__mask_type == 4;
		bool _10371 = _10368 || _10370;
		if (_10371)
		{
			float _10373 = V__scale_triad_height * 1.12500000e+00;
			aspect_ratio = _10373;
		}
		else
		{
			float _10375 = V__scale_triad_height * 3.33333343e-01;
			aspect_ratio = _10375;
		}
	}
	[flatten] switch (V__mask_type)
	{
	case 0: {
		aspect_ratio = V__scale_triad_height;
		break;
	}
	case 1: {
		float _10380 = V__scale_triad_height * 1.12500000e+00;
		aspect_ratio = _10380;
		break;
	}
	case 2: {
		float _10383 = V__scale_triad_height * 3.33333343e-01;
		aspect_ratio = _10383;
		break;
	}
	case 3: {
		aspect_ratio = V__scale_triad_height;
		break;
	}
	case 4: {
		float _10387 = V__scale_triad_height * 1.00000000e+00;
		aspect_ratio = _10387;
		break;
	}
	default: {
		float _10390 = V__scale_triad_height * 5.00000000e-01;
		aspect_ratio = _10390;
		break;
	}
	}
	return aspect_ratio;
}
float2 F__calc_triad_size()
{
	float _10393 = F__get_selected_aspect_ratio();
	float aspect_ratio_10394 = _10393;
	bool _10399 = V__mask_size_param == 0u;
	[branch] if (_10399)
	{
		float2 _10401 = float2(1.00000000e+00, aspect_ratio_10394);
		float2 _10403 = _10401 * V__mask_triad_width.xx;
		return _10403;
	}
	else
	{
		float _10404 = rcp(V__mask_num_triads_across);
		float _10406 = 1.92000000e+03 * _10404;
		float triad_width = _10406;
		float2 _10409 = float2(1.00000000e+00, aspect_ratio_10394);
		float2 _10411 = _10409 * triad_width.xx;
		return _10411;
	}
}
float2 F__calc_phosphor_viewport_frequency_factor()
{
	float _10414 = F__get_selected_aspect_ratio();
	float aspect_ratio_10415 = _10414;
	float2 triad_size_factor = float2(0.00000000e+00, 0.00000000e+00);
	float2 num_triads_factor = float2(0.00000000e+00, 0.00000000e+00);
	bool _10424 = V__geom_rotation_mode == 0u;
	bool _10426 = V__geom_rotation_mode == 2u;
	bool _10427 = _10424 || _10426;
	[branch] if (_10427)
	{
		float2 _10429 = float2(1.00000000e+00, aspect_ratio_10415);
		float2 _10431 = V__mask_triad_width.xx * _10429;
		float2 _10432 = rcp(_10431);
		float2 _10434 = float2(1.92000000e+03, 1.08000000e+03) * _10432;
		triad_size_factor = _10434;
		float _10436 = rcp(1.92000000e+03);
		float _10438 = 1.08000000e+03 * _10436;
		float _10439 = rcp(aspect_ratio_10415);
		float _10440 = _10438 * _10439;
		float2 _10442 = float2(1.00000000e+00, _10440);
		float2 _10444 = V__mask_num_triads_across.xx * _10442;
		num_triads_factor = _10444;
	}
	else
	{
		float2 _10446 = float2(1.00000000e+00, aspect_ratio_10415);
		float2 _10448 = V__mask_triad_width.xx * _10446;
		float2 _10449 = rcp(_10448);
		float2 _10452 = float2(1.92000000e+03, 1.08000000e+03) * _10449.yx;
		triad_size_factor = _10452;
		float _10454 = rcp(1.92000000e+03);
		float _10456 = 1.08000000e+03 * _10454;
		float _10457 = rcp(aspect_ratio_10415);
		float _10458 = _10456 * _10457;
		float2 _10460 = float2(1.00000000e+00, _10458);
		float2 _10463 = V__mask_num_triads_across.xx * _10460.yx;
		num_triads_factor = _10463;
	}
	bool _10465 = V__mask_size_param == 0u;
	float2 _10467 = _10465.xx ? triad_size_factor : num_triads_factor;
	return _10467;
}
float3 F__get_phosphor_intensity_grille(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 grille_pq)
{
	bool _10474 = V__geom_rotation_mode == 2u;
	bool _10476 = V__geom_rotation_mode == 3u;
	bool _10477 = _10474 || _10476;
	float3 _10481 = _10477.xxx ? float3(8.12500000e-01, 5.00000000e-01, 1.87500000e-01) : float3(1.87500000e-01, 5.00000000e-01, 8.12500000e-01);
	float3 center_offsets = _10481;
	float3 _10484 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10485 = center_offsets + _10484;
	center_offsets = _10485;
	float _10488 = texcoord.x * viewport_frequency_factor.x;
	float3 _10490 = _10488.xxx - center_offsets;
	float3 _10492 = _10490 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10493 = frac(_10492);
	float3 _10495 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10493;
	float3 _10497 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10495;
	float3 _10498 = abs(_10497);
	float3 theta = _10498;
	float3 _10501 = theta - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10503 = _10501 * grille_pq.y.xxx;
	float3 _10504 = exp(_10503);
	float3 alpha_10505 = _10504;
	float3 _10507 = alpha_10505 + grille_pq.x.xxx;
	float3 _10508 = rcp(_10507);
	float3 _10509 = alpha_10505 * _10508;
	return _10509;
}
float3 F__get_phosphor_intensity_slot(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 slot_pq_x,
	in float2 slot_pq_y)
{
	bool _10517 = V__geom_rotation_mode == 2u;
	bool _10519 = V__geom_rotation_mode == 3u;
	bool _10520 = _10517 || _10519;
	float3 _10524 = _10520.xxx ? float3(8.12500000e-01, 5.00000000e-01, 1.87500000e-01) : float3(1.87500000e-01, 5.00000000e-01, 8.12500000e-01);
	float3 center_offsets_x = _10524;
	bool _10527 = V__geom_rotation_mode == 2u;
	bool _10529 = V__geom_rotation_mode == 3u;
	bool _10530 = _10527 || _10529;
	float3 _10534 = _10530.xxx ? float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) : float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 center_offsets_y = _10534;
	float3 _10537 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10538 = center_offsets_x + _10537;
	center_offsets_x = _10538;
	float3 _10540 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10541 = center_offsets_y + _10540;
	center_offsets_y = _10541;
	float _10544 = texcoord.x * viewport_frequency_factor.x;
	float3 _10546 = _10544.xxx - center_offsets_x;
	float3 _10548 = _10546 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10549 = frac(_10548);
	float3 _10551 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10549;
	float3 _10553 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10551;
	float3 _10554 = abs(_10553);
	float3 theta_x1 = _10554;
	float3 _10557 = theta_x1 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10559 = _10557 * slot_pq_x.y.xxx;
	float3 _10560 = exp(_10559);
	float3 alpha_x1 = _10560;
	float3 _10563 = alpha_x1 + slot_pq_x.x.xxx;
	float3 _10564 = rcp(_10563);
	float3 _10565 = alpha_x1 * _10564;
	alpha_x1 = _10565;
	float _10568 = texcoord.x * viewport_frequency_factor.x;
	float3 _10570 = _10568.xxx - center_offsets_x;
	float3 _10572 = _10570 + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10574 = _10572 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10575 = frac(_10574);
	float3 _10577 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10575;
	float3 _10579 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10577;
	float3 _10580 = abs(_10579);
	float3 theta_x2 = _10580;
	float3 _10583 = theta_x2 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10585 = _10583 * slot_pq_x.y.xxx;
	float3 _10586 = exp(_10585);
	float3 alpha_x2 = _10586;
	float3 _10589 = alpha_x2 + slot_pq_x.x.xxx;
	float3 _10590 = rcp(_10589);
	float3 _10591 = alpha_x2 * _10590;
	alpha_x2 = _10591;
	float _10594 = texcoord.y * viewport_frequency_factor.y;
	float3 _10596 = _10594.xxx - center_offsets_y;
	float3 _10598 = _10596 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10599 = frac(_10598);
	float3 _10601 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10599;
	float3 _10603 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10601;
	float3 _10604 = abs(_10603);
	float3 theta_y1 = _10604;
	float3 _10607 = theta_y1 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10609 = _10607 * slot_pq_y.y.xxx;
	float3 _10610 = exp(_10609);
	float3 alpha_y1 = _10610;
	float3 _10613 = alpha_y1 + slot_pq_y.x.xxx;
	float3 _10614 = rcp(_10613);
	float3 _10615 = alpha_y1 * _10614;
	alpha_y1 = _10615;
	float _10618 = texcoord.y * viewport_frequency_factor.y;
	float3 _10620 = _10618.xxx - center_offsets_y;
	float3 _10622 = _10620 + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10624 = _10622 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10625 = frac(_10624);
	float3 _10627 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10625;
	float3 _10629 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10627;
	float3 _10630 = abs(_10629);
	float3 theta_y2 = _10630;
	float3 _10633 = theta_y2 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10635 = _10633 * slot_pq_y.y.xxx;
	float3 _10636 = exp(_10635);
	float3 alpha_y2 = _10636;
	float3 _10639 = alpha_y2 + slot_pq_y.x.xxx;
	float3 _10640 = rcp(_10639);
	float3 _10641 = alpha_y2 * _10640;
	alpha_y2 = _10641;
	float3 _10642 = alpha_x1 * alpha_y1;
	float3 _10643 = alpha_x2 * alpha_y2;
	float3 _10644 = _10642 + _10643;
	return _10644;
}
float3 F__get_phosphor_intensity_shadow(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 shadow_q)
{
	bool _10651 = V__geom_rotation_mode == 2u;
	bool _10653 = V__geom_rotation_mode == 3u;
	bool _10654 = _10651 || _10653;
	float3 _10658 = _10654.xxx ? float3(3.33333343e-01, 0.00000000e+00, 6.66666687e-01) : float3(6.66666687e-01, 0.00000000e+00, 3.33333343e-01);
	float3 center_offsets_x_10659 = _10658;
	bool _10661 = V__geom_rotation_mode == 2u;
	bool _10663 = V__geom_rotation_mode == 3u;
	bool _10664 = _10661 || _10663;
	float3 _10668 = _10664.xxx ? float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00) : float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 center_offsets_y_10669 = _10668;
	float3 _10671 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10672 = center_offsets_x_10659 + _10671;
	center_offsets_x_10659 = _10672;
	float3 _10674 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10675 = center_offsets_y_10669 + _10674;
	center_offsets_y_10669 = _10675;
	float2 _10676 = -V__phosphor_thickness;
	float2 _10677 = exp(_10676);
	float2 _10679 = float2(1.00000000e+00, 1.00000000e+00) - _10677;
	float2 thickness_scaled = _10679;
	float _10683 = texcoord.x * viewport_frequency_factor.x;
	float3 _10685 = _10683.xxx - center_offsets_x_10659;
	float3 x_adj = _10685;
	float _10689 = texcoord.y * viewport_frequency_factor.y;
	float3 _10691 = _10689.xxx - center_offsets_y_10669;
	float3 y_adj = _10691;
	float3 _10694 = x_adj * float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
	float3 _10696 = _10694 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10698 = _10696 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10699 = frac(_10698);
	float3 _10701 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10699;
	float3 _10703 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10701;
	float3 _10704 = abs(_10703);
	float3 _10706 = float3(1.66666672e-01, 1.66666672e-01, 1.66666672e-01) * _10704;
	float3 texcoord_x_periodic1 = _10706;
	float3 _10709 = x_adj * float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
	float3 _10711 = _10709 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10712 = frac(_10711);
	float3 _10714 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10712;
	float3 _10716 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10714;
	float3 _10717 = abs(_10716);
	float3 _10719 = float3(1.66666672e-01, 1.66666672e-01, 1.66666672e-01) * _10717;
	float3 texcoord_x_periodic2 = _10719;
	float3 _10721 = texcoord_x_periodic1 * texcoord_x_periodic1;
	float3 _10723 = float3(2.77777798e-02, 2.77777798e-02, 2.77777798e-02) - _10721;
	float3 _10724 = sqrt(_10723);
	float3 ty1 = _10724;
	float3 _10726 = texcoord_x_periodic2 * texcoord_x_periodic2;
	float3 _10728 = float3(2.77777798e-02, 2.77777798e-02, 2.77777798e-02) - _10726;
	float3 _10729 = sqrt(_10728);
	float3 ty2 = _10729;
	float _10733 = 1.00000000e+00 - thickness_scaled.x;
	float _10734 = rcp(_10733);
	float _10736 = thickness_scaled.x * _10734;
	float _10737 = log(_10736);
	float _10740 = shadow_q.x * 1.66666657e-01;
	float _10741 = _10737 - _10740;
	float _10742 = -_10741;
	float _10743 = exp(_10742);
	float shadow_px = _10743;
	float _10747 = 1.00000000e+00 - thickness_scaled.y;
	float _10748 = rcp(_10747);
	float _10750 = thickness_scaled.y * _10748;
	float _10751 = log(_10750);
	float3 _10753 = ty1 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float _10755 = rcp(3.33333343e-01);
	float3 _10757 = _10753 * _10755.xxx;
	float3 _10759 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10757;
	float3 _10761 = float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) - _10759;
	float3 _10763 = shadow_q.y.xxx * _10761;
	float3 _10765 = _10751.xxx - _10763;
	float3 _10766 = -_10765;
	float3 _10767 = exp(_10766);
	float3 shadow_py1 = _10767;
	float _10771 = 1.00000000e+00 - thickness_scaled.y;
	float _10772 = rcp(_10771);
	float _10774 = thickness_scaled.y * _10772;
	float _10775 = log(_10774);
	float3 _10777 = ty2 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float _10779 = rcp(3.33333343e-01);
	float3 _10781 = _10777 * _10779.xxx;
	float3 _10783 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10781;
	float3 _10785 = float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) - _10783;
	float3 _10787 = shadow_q.y.xxx * _10785;
	float3 _10789 = _10775.xxx - _10787;
	float3 _10790 = -_10789;
	float3 _10791 = exp(_10790);
	float3 shadow_py2 = _10791;
	float3 _10794 = x_adj * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10795 = frac(_10794);
	float3 _10797 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10795;
	float3 _10799 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10797;
	float3 _10800 = abs(_10799);
	float3 theta_x1_10801 = _10800;
	float3 _10803 = theta_x1_10801 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10805 = _10803 * shadow_q.x.xxx;
	float3 _10806 = exp(_10805);
	float3 alpha_x1_10807 = _10806;
	float3 _10809 = alpha_x1_10807 + shadow_px.xxx;
	float3 _10810 = rcp(_10809);
	float3 _10811 = alpha_x1_10807 * _10810;
	alpha_x1_10807 = _10811;
	float3 _10813 = x_adj + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10815 = _10813 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10816 = frac(_10815);
	float3 _10818 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10816;
	float3 _10820 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10818;
	float3 _10821 = abs(_10820);
	float3 theta_x2_10822 = _10821;
	float3 _10824 = theta_x2_10822 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10826 = _10824 * shadow_q.x.xxx;
	float3 _10827 = exp(_10826);
	float3 alpha_x2_10828 = _10827;
	float3 _10830 = alpha_x2_10828 + shadow_px.xxx;
	float3 _10831 = rcp(_10830);
	float3 _10832 = alpha_x2_10828 * _10831;
	alpha_x2_10828 = _10832;
	float3 _10834 = y_adj * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10835 = frac(_10834);
	float3 _10837 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10835;
	float3 _10839 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10837;
	float3 _10840 = abs(_10839);
	float3 theta_y1_10841 = _10840;
	float3 _10843 = theta_y1_10841 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10845 = _10843 * shadow_q.y.xxx;
	float3 _10846 = exp(_10845);
	float3 alpha_y1_10847 = _10846;
	float3 _10848 = alpha_y1_10847 + shadow_py1;
	float3 _10849 = rcp(_10848);
	float3 _10850 = alpha_y1_10847 * _10849;
	alpha_y1_10847 = _10850;
	float3 _10852 = y_adj + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10854 = _10852 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10855 = frac(_10854);
	float3 _10857 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10855;
	float3 _10859 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10857;
	float3 _10860 = abs(_10859);
	float3 theta_y2_10861 = _10860;
	float3 _10863 = theta_y2_10861 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10865 = _10863 * shadow_q.y.xxx;
	float3 _10866 = exp(_10865);
	float3 alpha_y2_10867 = _10866;
	float3 _10868 = alpha_y2_10867 + shadow_py2;
	float3 _10869 = rcp(_10868);
	float3 _10870 = alpha_y2_10867 * _10869;
	alpha_y2_10867 = _10870;
	float3 _10871 = alpha_x1_10807 * alpha_y1_10847;
	float3 _10872 = alpha_x2_10828 * alpha_y2_10867;
	float3 _10873 = _10871 + _10872;
	return _10873;
}
float3 F__get_phosphor_intensity_grille_small(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 grille_pq_x)
{
	bool _10880 = V__geom_rotation_mode == 2u;
	bool _10882 = V__geom_rotation_mode == 3u;
	bool _10883 = _10880 || _10882;
	float3 _10887 = _10883.xxx ? float3(7.50000000e-01, 2.50000000e-01, 7.50000000e-01) : float3(2.50000000e-01, 7.50000000e-01, 2.50000000e-01);
	float3 center_offsets_x_10888 = _10887;
	float3 _10890 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10891 = center_offsets_x_10888 + _10890;
	center_offsets_x_10888 = _10891;
	float _10894 = texcoord.x * viewport_frequency_factor.x;
	float3 _10896 = _10894.xxx - center_offsets_x_10888;
	float3 _10898 = _10896 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10899 = frac(_10898);
	float3 _10901 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10899;
	float3 _10903 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10901;
	float3 _10904 = abs(_10903);
	float3 theta_10905 = _10904;
	float3 _10907 = theta_10905 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10909 = _10907 * grille_pq_x.y.xxx;
	float3 _10910 = exp(_10909);
	float3 alpha_10911 = _10910;
	float3 _10913 = alpha_10911 + grille_pq_x.x.xxx;
	float3 _10914 = rcp(_10913);
	float3 _10915 = alpha_10911 * _10914;
	alpha_10911 = _10915;
	float3 _10916 = sqrt(alpha_10911);
	return _10916;
}
float3 F__get_phosphor_intensity_slot_small(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 slot_pq_x,
	in float2 slot_pq_y)
{
	bool _10924 = V__geom_rotation_mode == 2u;
	bool _10926 = V__geom_rotation_mode == 3u;
	bool _10927 = _10924 || _10926;
	float3 _10931 = _10927.xxx ? float3(7.50000000e-01, 2.50000000e-01, 7.50000000e-01) : float3(2.50000000e-01, 7.50000000e-01, 2.50000000e-01);
	float3 center_offsets_x_10932 = _10931;
	bool _10934 = V__geom_rotation_mode == 2u;
	bool _10936 = V__geom_rotation_mode == 3u;
	bool _10937 = _10934 || _10936;
	float3 _10941 = _10937.xxx ? float3(3.75000000e-01, 3.75000000e-01, 3.75000000e-01) : float3(3.75000000e-01, 3.75000000e-01, 3.75000000e-01);
	float3 center_offsets_y1 = _10941;
	bool _10944 = V__geom_rotation_mode == 2u;
	bool _10946 = V__geom_rotation_mode == 3u;
	bool _10947 = _10944 || _10946;
	float3 _10951 = _10947.xxx ? float3(6.25000000e-01, 6.25000000e-01, 6.25000000e-01) : float3(6.25000000e-01, 6.25000000e-01, 6.25000000e-01);
	float3 center_offsets_y2 = _10951;
	float3 _10954 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10955 = center_offsets_x_10932 + _10954;
	center_offsets_x_10932 = _10955;
	float3 _10957 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10958 = center_offsets_y1 + _10957;
	center_offsets_y1 = _10958;
	float3 _10960 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10961 = center_offsets_y2 + _10960;
	center_offsets_y2 = _10961;
	float _10964 = texcoord.x * viewport_frequency_factor.x;
	float3 _10966 = _10964.xxx - center_offsets_x_10932;
	float3 _10968 = _10966 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10969 = frac(_10968);
	float3 _10971 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10969;
	float3 _10973 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10971;
	float3 _10974 = abs(_10973);
	float3 theta_x1_10975 = _10974;
	float3 _10977 = theta_x1_10975 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10979 = _10977 * slot_pq_x.y.xxx;
	float3 _10980 = exp(_10979);
	float3 alpha_x1_10981 = _10980;
	float3 _10983 = alpha_x1_10981 + slot_pq_x.x.xxx;
	float3 _10984 = rcp(_10983);
	float3 _10985 = alpha_x1_10981 * _10984;
	alpha_x1_10981 = _10985;
	float _10988 = texcoord.x * viewport_frequency_factor.x;
	float3 _10990 = _10988.xxx - center_offsets_x_10932;
	float3 _10992 = _10990 + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10994 = _10992 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10995 = frac(_10994);
	float3 _10997 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10995;
	float3 _10999 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10997;
	float3 _11000 = abs(_10999);
	float3 theta_x2_11001 = _11000;
	float3 _11003 = theta_x2_11001 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11005 = _11003 * slot_pq_x.y.xxx;
	float3 _11006 = exp(_11005);
	float3 alpha_x2_11007 = _11006;
	float3 _11009 = alpha_x2_11007 + slot_pq_x.x.xxx;
	float3 _11010 = rcp(_11009);
	float3 _11011 = alpha_x2_11007 * _11010;
	alpha_x2_11007 = _11011;
	float _11014 = texcoord.y * viewport_frequency_factor.y;
	float3 _11016 = _11014.xxx - center_offsets_y1;
	float3 _11018 = _11016 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11019 = frac(_11018);
	float3 _11021 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11019;
	float3 _11023 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11021;
	float3 _11024 = abs(_11023);
	float3 theta_y1_11025 = _11024;
	float3 _11027 = theta_y1_11025 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11029 = _11027 * slot_pq_y.y.xxx;
	float3 _11030 = exp(_11029);
	float3 alpha_y1_11031 = _11030;
	float3 _11033 = alpha_y1_11031 + slot_pq_y.x.xxx;
	float3 _11034 = rcp(_11033);
	float3 _11035 = alpha_y1_11031 * _11034;
	alpha_y1_11031 = _11035;
	float _11038 = texcoord.y * viewport_frequency_factor.y;
	float3 _11040 = _11038.xxx - center_offsets_y2;
	float3 _11042 = _11040 + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11044 = _11042 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11045 = frac(_11044);
	float3 _11047 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11045;
	float3 _11049 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11047;
	float3 _11050 = abs(_11049);
	float3 theta_y2_11051 = _11050;
	float3 _11053 = theta_y2_11051 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11055 = _11053 * slot_pq_y.y.xxx;
	float3 _11056 = exp(_11055);
	float3 alpha_y2_11057 = _11056;
	float3 _11059 = alpha_y2_11057 + slot_pq_y.x.xxx;
	float3 _11060 = rcp(_11059);
	float3 _11061 = alpha_y2_11057 * _11060;
	alpha_y2_11057 = _11061;
	float3 _11062 = alpha_x1_10981 * alpha_y1_11031;
	float3 _11063 = alpha_x2_11007 * alpha_y2_11057;
	float3 _11064 = _11062 + _11063;
	return _11064;
}
float3 F__get_phosphor_intensity_shadow_small(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 shadow_pq_x,
	in float2 shadow_pq_y)
{
	bool _11072 = V__geom_rotation_mode == 2u;
	bool _11074 = V__geom_rotation_mode == 3u;
	bool _11075 = _11072 || _11074;
	float3 _11079 = _11075.xxx ? float3(7.50000000e-01, 2.50000000e-01, 7.50000000e-01) : float3(2.50000000e-01, 7.50000000e-01, 2.50000000e-01);
	float3 center_offsets_x_11080 = _11079;
	bool _11082 = V__geom_rotation_mode == 2u;
	bool _11084 = V__geom_rotation_mode == 3u;
	bool _11085 = _11082 || _11084;
	float3 _11089 = _11085.xxx ? float3(8.50000000e+00, 8.50000000e+00, 8.50000000e+00) : float3(8.50000000e+00, 8.50000000e+00, 8.50000000e+00);
	float3 center_offsets_y_11090 = _11089;
	float3 _11092 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11093 = center_offsets_x_11080 + _11092;
	center_offsets_x_11080 = _11093;
	float3 _11095 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11096 = center_offsets_y_11090 + _11095;
	center_offsets_y_11090 = _11096;
	float _11099 = texcoord.x * viewport_frequency_factor.x;
	float3 _11101 = _11099.xxx - center_offsets_x_11080;
	float3 _11103 = _11101 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11104 = frac(_11103);
	float3 _11106 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11104;
	float3 _11108 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11106;
	float3 _11109 = abs(_11108);
	float3 theta_x1_11110 = _11109;
	float3 _11112 = theta_x1_11110 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11114 = _11112 * shadow_pq_x.y.xxx;
	float3 _11115 = exp(_11114);
	float3 alpha_x1_11116 = _11115;
	float3 _11118 = alpha_x1_11116 + shadow_pq_x.x.xxx;
	float3 _11119 = rcp(_11118);
	float3 _11120 = alpha_x1_11116 * _11119;
	alpha_x1_11116 = _11120;
	float _11123 = texcoord.x * viewport_frequency_factor.x;
	float3 _11125 = _11123.xxx - center_offsets_x_11080;
	float3 _11127 = _11125 + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11129 = _11127 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11130 = frac(_11129);
	float3 _11132 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11130;
	float3 _11134 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11132;
	float3 _11135 = abs(_11134);
	float3 theta_x2_11136 = _11135;
	float3 _11138 = theta_x2_11136 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11140 = _11138 * shadow_pq_x.y.xxx;
	float3 _11141 = exp(_11140);
	float3 alpha_x2_11142 = _11141;
	float3 _11144 = alpha_x2_11142 + shadow_pq_x.x.xxx;
	float3 _11145 = rcp(_11144);
	float3 _11146 = alpha_x2_11142 * _11145;
	alpha_x2_11142 = _11146;
	float _11149 = texcoord.y * viewport_frequency_factor.y;
	float3 _11151 = _11149.xxx - center_offsets_y_11090;
	float3 _11153 = _11151 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11154 = frac(_11153);
	float3 _11156 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11154;
	float3 _11158 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11156;
	float3 _11159 = abs(_11158);
	float3 theta_y1_11160 = _11159;
	float3 _11162 = theta_y1_11160 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11164 = _11162 * shadow_pq_y.y.xxx;
	float3 _11165 = exp(_11164);
	float3 alpha_y1_11166 = _11165;
	float3 _11168 = alpha_y1_11166 + shadow_pq_y.x.xxx;
	float3 _11169 = rcp(_11168);
	float3 _11170 = alpha_y1_11166 * _11169;
	alpha_y1_11166 = _11170;
	float _11173 = texcoord.y * viewport_frequency_factor.y;
	float3 _11175 = _11173.xxx - center_offsets_y_11090;
	float3 _11177 = _11175 + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11179 = _11177 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11180 = frac(_11179);
	float3 _11182 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11180;
	float3 _11184 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11182;
	float3 _11185 = abs(_11184);
	float3 theta_y2_11186 = _11185;
	float3 _11188 = theta_y2_11186 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11190 = _11188 * shadow_pq_y.y.xxx;
	float3 _11191 = exp(_11190);
	float3 alpha_y2_11192 = _11191;
	float3 _11194 = alpha_y2_11192 + shadow_pq_y.x.xxx;
	float3 _11195 = rcp(_11194);
	float3 _11196 = alpha_y2_11192 * _11195;
	alpha_y2_11192 = _11196;
	float3 _11197 = alpha_x1_11116 * alpha_y1_11166;
	float3 _11198 = alpha_x2_11142 * alpha_y2_11192;
	float3 _11199 = _11197 + _11198;
	float3 _11200 = sqrt(_11199);
	return _11200;
}
void F__generatePhosphorMaskVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 viewport_frequency_factor : TEXCOORD1,
	out float2 mask_pq_x : TEXCOORD2,
	out float2 mask_pq_y : TEXCOORD3)
{
	float _11211 = ((float)V__frame_count) % 6.40000000e+01;
	float screen_segment_idx = _11211;
	float _11214 = 1.56250000e-02 * screen_segment_idx;
	bool _11216 = V__overlay_active > 0;
	float _11219 = lerp(_11214, 0.00000000e+00, ((float)_11216));
	float left_coord = _11219;
	float _11222 = left_coord + 2.34375000e-02;
	bool _11224 = V__overlay_active > 0;
	float _11227 = lerp(_11222, 1.00000000e+00, ((float)_11224));
	float right_coord = _11227;
	float _11230 = left_coord + 1.17187500e-02;
	float _11232 = _11230 - 5.00000000e-01;
	float _11234 = 2.00000000e+00 * _11232;
	float pos_center = _11234;
	float _11237 = pos_center - 2.34375000e-02;
	bool _11239 = V__overlay_active > 0;
	float _11242 = lerp(_11237, -1.00000000e+00, ((float)_11239));
	float pos_left = _11242;
	float _11245 = pos_center + 2.34375000e-02;
	bool _11247 = V__overlay_active > 0;
	float _11250 = lerp(_11245, 1.00000000e+00, ((float)_11247));
	float pos_right = _11250;
	uint _11253 = id & 1u;
	float _11255 = ((bool)_11253) ? right_coord : left_coord;
	texcoord[0] = _11255;
	uint _11257 = id & 2u;
	int _11261 = ((bool)_11257) ? 1 : 0;
	texcoord[1] = ((float)_11261);
	uint _11264 = id & 1u;
	float _11266 = ((bool)_11264) ? pos_right : pos_left;
	position[0] = _11266;
	uint _11268 = id & 2u;
	int _11272 = ((bool)_11268) ? -1 : 1;
	position[1] = ((float)_11272);
	position.zw = float2(1.00000000e+00, 1.00000000e+00);
	float2 _11275 = F__calc_phosphor_viewport_frequency_factor();
	viewport_frequency_factor = _11275;
	float edge_norm_tx = 0.00000000e+00;
	float edge_norm_ty = 0.00000000e+00;
	[flatten] switch (V__mask_type)
	{
	case 0: {
		edge_norm_tx = 1.40625000e-01;
		break;
	}
	case 1: {
		edge_norm_tx = 7.03125000e-02;
		edge_norm_ty = 4.58333343e-01;
		break;
	}
	case 2: {
		edge_norm_tx = 1.66666672e-01;
		edge_norm_ty = 2.50000000e-01;
		break;
	}
	case 3: {
		edge_norm_tx = 2.50000000e-01;
		break;
	}
	case 4: {
		edge_norm_tx = 1.25000000e-01;
		edge_norm_ty = 3.75000000e-01;
		break;
	}
	default: {
		edge_norm_tx = 2.50000000e-01;
		edge_norm_ty = 2.50000000e-01;
		break;
	}
	}
	float2 _11297 = -V__phosphor_thickness;
	float2 _11298 = exp(_11297);
	float2 _11300 = float2(1.00000000e+00, 1.00000000e+00) - _11298;
	float2 thickness_scaled_11301 = _11300;
	float _11304 = 1.00000000e+00 - thickness_scaled_11301.x;
	float _11305 = rcp(_11304);
	float _11307 = thickness_scaled_11301.x * _11305;
	float _11308 = log(_11307);
	float _11310 = 2.00000000e+00 * edge_norm_tx;
	float _11312 = 5.00000000e-01 - _11310;
	float _11314 = V__phosphor_sharpness.x * _11312;
	float _11315 = _11308 - _11314;
	float _11316 = -_11315;
	float _11317 = exp(_11316);
	float mask_p_x = _11317;
	float _11321 = 1.00000000e+00 - thickness_scaled_11301.y;
	float _11322 = rcp(_11321);
	float _11324 = thickness_scaled_11301.y * _11322;
	float _11325 = log(_11324);
	float _11327 = 2.00000000e+00 * edge_norm_ty;
	float _11329 = 5.00000000e-01 - _11327;
	float _11331 = V__phosphor_sharpness.y * _11329;
	float _11332 = _11325 - _11331;
	float _11333 = -_11332;
	float _11334 = exp(_11333);
	float mask_p_y = _11334;
	float2 _11337 = float2(mask_p_x, V__phosphor_sharpness.x);
	mask_pq_x = _11337;
	float2 _11339 = float2(mask_p_y, V__phosphor_sharpness.y);
	mask_pq_y = _11339;
	return;
}
void F__generatePhosphorMaskPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 viewport_frequency_factor : TEXCOORD1,
	in float2 mask_pq_x : TEXCOORD2,
	in float2 mask_pq_y : TEXCOORD3,
	out float4 color : SV_TARGET)
{
	bool _11352 = V__geom_rotation_mode == 1u;
	bool _11354 = V__geom_rotation_mode == 3u;
	bool _11355 = _11352 || _11354;
	[branch] if (_11355)
	{
		texcoord = texcoord.yx;
		viewport_frequency_factor = viewport_frequency_factor.yx;
	}
	float3 phosphor_color = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _11364 = V__mask_type == 0;
	[branch] if (_11364)
	{
		float2 _11365;
		float2 _11366;
		float2 _11367;
		_11365 = texcoord;
		_11366 = viewport_frequency_factor;
		_11367 = mask_pq_x;
		float3 _11368 = F__get_phosphor_intensity_grille(_11365, _11366, _11367);
		phosphor_color = _11368;
	}
	else
	{
		bool _11373 = V__mask_type == 1;
		if (_11373)
		{
			float2 _11374;
			float2 _11375;
			float2 _11376;
			float2 _11377;
			_11374 = texcoord;
			_11375 = viewport_frequency_factor;
			_11376 = mask_pq_x;
			_11377 = mask_pq_y;
			float3 _11378 = F__get_phosphor_intensity_slot(_11374, _11375, _11376, _11377);
			phosphor_color = _11378;
		}
		else
		{
			bool _11383 = V__mask_type == 2;
			if (_11383)
			{
				float2 _11386 = float2(mask_pq_x.y, mask_pq_y.y);
				float2 _11387;
				float2 _11388;
				float2 _11389;
				_11387 = texcoord;
				_11388 = viewport_frequency_factor;
				_11389 = _11386;
				float3 _11390 = F__get_phosphor_intensity_shadow(_11387, _11388, _11389);
				phosphor_color = _11390;
			}
			else
			{
				bool _11395 = V__mask_type == 3;
				if (_11395)
				{
					float2 _11396;
					float2 _11397;
					float2 _11398;
					_11396 = texcoord;
					_11397 = viewport_frequency_factor;
					_11398 = mask_pq_x;
					float3 _11399 = F__get_phosphor_intensity_grille_small(_11396, _11397, _11398);
					phosphor_color = _11399;
				}
				else
				{
					bool _11404 = V__mask_type == 4;
					if (_11404)
					{
						float2 _11405;
						float2 _11406;
						float2 _11407;
						float2 _11408;
						_11405 = texcoord;
						_11406 = viewport_frequency_factor;
						_11407 = mask_pq_x;
						_11408 = mask_pq_y;
						float3 _11409 = F__get_phosphor_intensity_slot_small(_11405, _11406, _11407, _11408);
						phosphor_color = _11409;
					}
					else
					{
						float2 _11410;
						float2 _11411;
						float2 _11412;
						float2 _11413;
						_11410 = texcoord;
						_11411 = viewport_frequency_factor;
						_11412 = mask_pq_x;
						_11413 = mask_pq_y;
						float3 _11414 = F__get_phosphor_intensity_shadow_small(_11410, _11411, _11412, _11413);
						phosphor_color = _11414;
					}
				}
			}
		}
	}
	float4 _11419 = float4(phosphor_color.x, phosphor_color.y, phosphor_color.z, 1.00000000e+00);
	color = _11419;
	return;
}
void F__applyComputedPhosphorMaskPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	bool _11426 = V__scanline_deinterlacing_mode == 2u;
	bool _11428 = V__scanline_deinterlacing_mode == 3u;
	bool _11429 = _11426 || _11428;
	bool _11430 = V__enable_interlacing && _11429;
	bool use_deinterlacing_tex_11431 = _11430;
	float3 scanline_color_dim = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	[branch] if (use_deinterlacing_tex_11431)
	{
		float4 _11437 = V__samplerDeinterlace.t.Sample(V__samplerDeinterlace.s, texcoord);
		scanline_color_dim = _11437.xyz;
	}
	else
	{
		float4 _11439 = V__samplerBeamConvergence.t.Sample(V__samplerBeamConvergence.s, texcoord);
		scanline_color_dim = _11439.xyz;
	}
	float4 _11441 = V__samplerPhosphorMask.t.Sample(V__samplerPhosphorMask.s, texcoord);
	float3 phosphor_color_11443 = _11441.xyz;
	float _11444 = F__get_intermediate_gamma();
	float2 _11445;
	float _11446;
	_11445 = texcoord;
	_11446 = _11444;
	float4 _11447 = F__tex2D_linearize(V__samplerBlurHorizontal, _11445, _11446);
	float3 halation_color = _11447.xyz;
	float _11451 = dot(halation_color, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _11453 = _11451 / 3.00000000e+00;
	float halation_intensity_dim_scalar = _11453;
	float3 halation_intensity_dim = halation_intensity_dim_scalar.xxx;
	float3 _11458 = lerp(scanline_color_dim, halation_intensity_dim, V__halation_weight.xxx);
	float3 electron_intensity_dim = _11458;
	float3 _11460 = electron_intensity_dim * phosphor_color_11443;
	float3 phosphor_emission_dim = _11460;
	float4 _11466 = float4(phosphor_emission_dim.x, phosphor_emission_dim.y, phosphor_emission_dim.z, 1.00000000e+00);
	color = _11466;
	return;
}
float F__get_min_sigma_to_blur_triad(
	in float triad_size,
	in float thresh)
{
	float _11472 = 6.11299992e-01 * triad_size;
	float _11474 = -5.16799986e-02 + _11472;
	float _11476 = 1.12199998e+00 * triad_size;
	float _11478 = 4.15999995e-04 + thresh;
	float _11479 = sqrt(_11478);
	float _11480 = _11476 * _11479;
	float _11481 = _11474 - _11480;
	return _11481;
}
float F__get_absolute_scale_blur_sigma(
	in float thresh)
{
	float _11485;
	float _11486;
	_11485 = 1.02400000e+04;
	_11486 = thresh;
	float _11488 = F__get_min_sigma_to_blur_triad(_11485, _11486);
	float _11490 = 9.04224578e-07 * _11488;
	return _11490;
}
float F__get_center_weight(
	in float sigma)
{
	float _11494;
	_11494 = sigma;
	float _11495 = F__get_fast_gaussian_weight_sum_inv(_11494);
	return _11495;
}
float3 F__tex2DblurNfast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float2 _11503;
	float2 _11504;
	float _11505;
	float _11506;
	_11503 = tex_uv;
	_11504 = dxdy;
	_11505 = sigma;
	_11506 = input_gamma;
	float3 _11507 = F__tex2Dblur9fast(tex, _11503, _11504, _11505, _11506);
	return _11507;
}
float F__get_bloom_approx_sigma(
	in float output_size_x_runtime,
	in float estimated_viewport_size_x)
{
	float _11514 = max(1.44000000e+02, 4.80000000e+02);
	float mask_num_triads_static = _11514;
	float _11516 = estimated_viewport_size_x / V__mask_triad_width;
	float mask_num_triads_from_size = _11516;
	float _11519 = lerp(mask_num_triads_from_size, V__mask_num_triads_across, ((float)V__mask_size_param));
	float _11521 = max(1.44000000e+02, _11519);
	float mask_num_triads_runtime = _11521;
	if (true)
	{
		float _11528 = 1.47456000e+06 / mask_num_triads_runtime;
		float asymptotic_triad_size = _11528;
		float _11530;
		float _11531;
		_11530 = asymptotic_triad_size;
		_11531 = 3.90625000e-03;
		float _11533 = F__get_min_sigma_to_blur_triad(_11530, _11531);
		float asymptotic_sigma = _11533;
		float _11535 = asymptotic_sigma * output_size_x_runtime;
		float _11537 = _11535 / 1.47456000e+06;
		float bloom_approx_sigma = _11537;
		float2 _11539 = float2(bloom_approx_sigma, V__gaussian_beam_max_sigma);
		float _11540 = length(_11539);
		return _11540;
	}
	else
	{
		float _11542 = 1.47456000e+06 / mask_num_triads_static;
		float asymptotic_triad_size_11543 = _11542;
		float _11544;
		float _11545;
		_11544 = asymptotic_triad_size_11543;
		_11545 = 3.90625000e-03;
		float _11547 = F__get_min_sigma_to_blur_triad(_11544, _11545);
		float asymptotic_sigma_11548 = _11547;
		float _11550 = asymptotic_sigma_11548 * 3.20000000e+02;
		float _11552 = _11550 / 1.47456000e+06;
		float bloom_approx_sigma_11553 = _11552;
		float2 _11555 = float2(bloom_approx_sigma_11553, 3.00000012e-01);
		float _11556 = length(_11555);
		return _11556;
	}
}
float F__get_final_bloom_sigma(
	in float bloom_sigma_runtime)
{
	float _11560;
	float _11561;
	_11560 = 3.00000000e+00;
	_11561 = 3.90625000e-03;
	float _11564 = F__get_min_sigma_to_blur_triad(_11560, _11561);
	float bloom_sigma_optimistic = _11564;
	return bloom_sigma_runtime;
}
void F__brightpassVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float bloom_sigma_runtime : TEXCOORD1)
{
	uint _11572;
	float4 _11573;
	float2 _11574;
	_11572 = id;
	F__PostProcessVS(_11572, _11573, _11574);
	position = _11573;
	texcoord = _11574;
	float2 _11576 = F__calc_triad_size();
	float _11577;
	float _11578;
	_11577 = _11576.x;
	_11578 = 3.90625000e-03;
	float _11581 = F__get_min_sigma_to_blur_triad(_11577, _11578);
	bloom_sigma_runtime = _11581;
	return;
}
void F__brightpassPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float bloom_sigma_runtime : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _11588 = F__get_intermediate_gamma();
	float2 _11589;
	float _11590;
	_11589 = texcoord;
	_11590 = _11588;
	float4 _11591 = F__tex2D_linearize(V__samplerMaskedScanlines, _11589, _11590);
	float3 intensity_dim = _11591.xyz;
	float _11594 = F__get_mask_amplify();
	float mask_amplify_11595 = _11594;
	float _11597 = rcp(5.00000000e-01);
	float3 _11599 = intensity_dim * _11597.xxx;
	float3 _11601 = _11599 * mask_amplify_11595.xxx;
	float3 _11603 = _11601 * V__levels_contrast.xxx;
	float3 intensity = _11603;
	float _11605 = F__get_intermediate_gamma();
	float2 _11606;
	float _11607;
	_11606 = texcoord;
	_11607 = _11605;
	float4 _11608 = F__tex2D_linearize(V__samplerBloomApproxHoriz, _11606, _11607);
	float3 _11611 = V__levels_contrast.xxx * _11608.xyz;
	float3 phosphor_blur_approx = _11611;
	float _11613;
	_11613 = bloom_sigma_runtime;
	float _11614 = F__get_final_bloom_sigma(_11613);
	float bloom_sigma = _11614;
	float _11616;
	_11616 = bloom_sigma;
	float _11617 = F__get_center_weight(_11616);
	float center_weight = _11617;
	float3 _11620 = center_weight.xxx * intensity;
	float3 _11621 = phosphor_blur_approx - _11620;
	float3 _11623 = max(float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), _11621);
	float3 max_area_contribution_approx = _11623;
	float3 _11626 = V__bloom_underestimate_levels.xxx * max_area_contribution_approx;
	float3 area_contrib_underestimate = _11626;
	float3 _11629 = V__bloom_underestimate_levels.xxx * intensity;
	float3 intensity_underestimate = _11629;
	float3 _11632 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - area_contrib_underestimate;
	float3 _11633 = _11632 / intensity_underestimate;
	float3 _11635 = _11633 - float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float _11637 = center_weight - 1.00000000e+00;
	float3 _11639 = _11635 / _11637.xxx;
	float3 blur_ratio_temp = _11639;
	float3 _11641 = saturate(blur_ratio_temp);
	float3 blur_ratio = _11641;
	float3 _11645 = lerp(blur_ratio, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00), V__bloom_excess.xxx);
	float3 _11646 = intensity_dim * _11645;
	float3 brightpass = _11646;
	float4 _11652 = float4(brightpass.x, brightpass.y, brightpass.z, 1.00000000e+00);
	float _11653 = F__get_intermediate_gamma();
	float4 _11654;
	float _11655;
	_11654 = _11652;
	_11655 = _11653;
	float4 _11656 = F__encode_output(_11654, _11655);
	color = _11656;
	return;
}
void F__approximateBloomVertPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _11663 = rcp(1.08000000e+03);
	float2 _11665 = float2(0.00000000e+00, _11663);
	float2 _11667 = V__blur_radius.xx * _11665;
	float2 delta_uv_11668 = _11667;
	float2 _11669;
	uint _11670;
	float2 _11671;
	_11669 = texcoord;
	_11670 = 1u;
	_11671 = delta_uv_11668;
	float3 _11673 = F__opaque_linear_downsample(V__samplerBeamConvergence, _11669, _11670, _11671);
	float4 _11678 = float4(_11673.x, _11673.y, _11673.z, 1.00000000e+00);
	color = _11678;
	return;
}
void F__approximateBloomHorizPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _11685 = rcp(1.92000000e+03);
	float2 _11687 = float2(_11685, 0.00000000e+00);
	float2 _11689 = V__blur_radius.xx * _11687;
	float2 delta_uv_11690 = _11689;
	float2 _11691;
	uint _11692;
	float2 _11693;
	_11691 = texcoord;
	_11692 = 1u;
	_11693 = delta_uv_11690;
	float3 _11695 = F__opaque_linear_downsample(V__samplerBloomApproxVert, _11691, _11692, _11693);
	float4 _11700 = float4(_11695.x, _11695.y, _11695.z, 1.00000000e+00);
	color = _11700;
	return;
}
void F__bloomHorizontalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float bloom_sigma_runtime : TEXCOORD1)
{
	uint _11707;
	float4 _11708;
	float2 _11709;
	_11707 = id;
	F__PostProcessVS(_11707, _11708, _11709);
	position = _11708;
	texcoord = _11709;
	float2 _11711 = F__calc_triad_size();
	float _11712;
	float _11713;
	_11712 = _11711.x;
	_11713 = 3.90625000e-03;
	float _11716 = F__get_min_sigma_to_blur_triad(_11712, _11713);
	bloom_sigma_runtime = _11716;
	return;
}
void F__bloomHorizontalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float bloom_sigma_runtime : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _11724 = rcp(1.92000000e+03);
	float2 _11726 = float2(_11724, 0.00000000e+00);
	float2 bloom_dxdy = _11726;
	float _11728;
	_11728 = bloom_sigma_runtime;
	float _11729 = F__get_final_bloom_sigma(_11728);
	float bloom_sigma_11730 = _11729;
	float _11731 = F__get_intermediate_gamma();
	float2 _11732;
	float2 _11733;
	float _11734;
	float _11735;
	_11732 = texcoord;
	_11733 = bloom_dxdy;
	_11734 = bloom_sigma_11730;
	_11735 = _11731;
	float3 _11736 = F__tex2DblurNfast(V__samplerBloomVertical, _11732, _11733, _11734, _11735);
	float3 blurred_brightpass = _11736;
	float _11738 = F__get_intermediate_gamma();
	float2 _11739;
	float _11740;
	_11739 = texcoord;
	_11740 = _11738;
	float4 _11741 = F__tex2D_linearize(V__samplerMaskedScanlines, _11739, _11740);
	float3 intensity_dim_11743 = _11741.xyz;
	float _11744 = F__get_mask_amplify();
	float mask_amplify_11745 = _11744;
	float _11746 = F__get_intermediate_gamma();
	float2 _11747;
	float _11748;
	_11747 = texcoord;
	_11748 = _11746;
	float4 _11749 = F__tex2D_linearize(V__samplerBrightpass, _11747, _11748);
	float3 brightpass_11751 = _11749.xyz;
	float3 _11752 = intensity_dim_11743 - brightpass_11751;
	float3 dimpass = _11752;
	float3 _11754 = dimpass + blurred_brightpass;
	float3 _11756 = _11754 * mask_amplify_11745.xxx;
	float3 _11758 = _11756 * float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
	float3 _11760 = _11758 * V__levels_contrast.xxx;
	float3 phosphor_bloom = _11760;
	float _11762 = F__get_intermediate_gamma();
	float2 _11763;
	float _11764;
	_11763 = texcoord;
	_11764 = _11762;
	float4 _11765 = F__tex2D_linearize(V__samplerBlurHorizontal, _11763, _11764);
	float3 raw_diffusion_color = _11765.xyz;
	float _11769 = dot(raw_diffusion_color, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _11771 = _11769 / 3.00000000e+00;
	float3 raw_halation_color = _11771.xxx;
	float3 _11775 = lerp(raw_diffusion_color, raw_halation_color, V__halation_weight.xxx);
	float3 _11777 = V__levels_contrast.xxx * _11775;
	float3 diffusion_color = _11777;
	float3 _11780 = lerp(phosphor_bloom, diffusion_color, V__diffusion_weight.xxx);
	float3 final_bloom = _11780;
	float4 _11786 = float4(final_bloom.x, final_bloom.y, final_bloom.z, 1.00000000e+00);
	float _11787 = F__get_intermediate_gamma();
	float4 _11788;
	float _11789;
	_11788 = _11786;
	_11789 = _11787;
	float4 _11790 = F__encode_output(_11788, _11789);
	color = _11790;
	return;
}
void F__bloomVerticalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float bloom_sigma_runtime : TEXCOORD1)
{
	uint _11797;
	float4 _11798;
	float2 _11799;
	_11797 = id;
	F__PostProcessVS(_11797, _11798, _11799);
	position = _11798;
	texcoord = _11799;
	float2 _11801 = F__calc_triad_size();
	float _11802;
	float _11803;
	_11802 = _11801.x;
	_11803 = 3.90625000e-03;
	float _11806 = F__get_min_sigma_to_blur_triad(_11802, _11803);
	bloom_sigma_runtime = _11806;
	return;
}
void F__bloomVerticalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float bloom_sigma_runtime : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _11814 = rcp(1.08000000e+03);
	float2 _11816 = float2(0.00000000e+00, _11814);
	float2 bloom_dxdy_11817 = _11816;
	float _11818;
	_11818 = bloom_sigma_runtime;
	float _11819 = F__get_final_bloom_sigma(_11818);
	float bloom_sigma_11820 = _11819;
	float _11821 = F__get_intermediate_gamma();
	float2 _11822;
	float2 _11823;
	float _11824;
	float _11825;
	_11822 = texcoord;
	_11823 = bloom_dxdy_11817;
	_11824 = bloom_sigma_11820;
	_11825 = _11821;
	float3 _11826 = F__tex2DblurNfast(V__samplerBrightpass, _11822, _11823, _11824, _11825);
	float3 color3_11827 = _11826;
	float4 _11832 = float4(color3_11827.x, color3_11827.y, color3_11827.z, 1.00000000e+00);
	float _11833 = F__get_intermediate_gamma();
	float4 _11834;
	float _11835;
	_11834 = _11832;
	_11835 = _11833;
	float4 _11836 = F__encode_output(_11834, _11835);
	color = _11836;
	return;
}
void F__assign_aa_cubic_constants()
{
	return;
}
float4 F__get_subpixel_support_diam_and_final_axis_importance()
{
	float _11844 = true ? 3.00000000e+00 : 5.00000000e-01;
	float _11847 = true ? 2.00000000e+00 : _11844;
	float _11850 = false ? 1.00000000e+00 : _11847;
	float _11853 = false ? 1.00000000e+00 : _11850;
	float _11856 = false ? 5.00000000e-01 : _11853;
	float base_support_radius = _11856;
	float2 _11858 = float2(base_support_radius, base_support_radius);
	float2 _11859 = F__get_aa_subpixel_r_offset();
	float2 _11860 = abs(_11859);
	float2 _11861 = _11858 + _11860;
	float2 subpixel_support_radius_raw = _11861;
	if (false)
	{
		float2 _11868 = float2(2.00000000e+00, 2.00000000e+00) * subpixel_support_radius_raw;
		float2 subpixel_support_diam = _11868;
		float4 _11874 = float4(subpixel_support_diam.x, subpixel_support_diam.y, 1.00000000e+00, 1.00000000e+00);
		return _11874;
	}
	else
	{
		float2 _11876 = subpixel_support_radius_raw * float2(1.00000000e+00, 0.00000000e+00);
		float2 _11878 = max(float2(5.00000000e-01, 5.00000000e-01), _11876);
		float2 subpixel_support_radius = _11878;
		float2 _11881 = float2(1.00000000e+00, 0.00000000e+00) * subpixel_support_radius_raw;
		float2 _11882 = _11881 / subpixel_support_radius;
		float2 final_axis_importance = _11882;
		float2 _11885 = float2(2.00000000e+00, 2.00000000e+00) * subpixel_support_radius;
		float2 subpixel_support_diam_11886 = _11885;
		float4 _11891 = float4(subpixel_support_diam_11886.x, subpixel_support_diam_11886.y, final_axis_importance.x, final_axis_importance.y);
		return _11891;
	}
}
float F__eval_box_filter(
	in float dist)
{
	float _11895 = abs(dist);
	bool _11897 = _11895 <= 5.00000000e-01;
	return ((float)_11897);
}
float F__eval_separable_box_filter(
	in float2 offset)
{
	float _11903 = abs(offset.x);
	bool _11905 = _11903 <= 5.00000000e-01;
	float _11907 = abs(offset.y);
	bool _11909 = _11907 <= 5.00000000e-01;
	bool2 _11910 = bool2(_11905, _11909);
	bool _11911 = all(_11910);
	return ((float)_11911);
}
float F__eval_tent_filter(
	in float dist)
{
	float _11917 = 1.00000000e+00 - dist;
	float _11919 = _11917 / 1.00000000e+00;
	float _11920 = saturate(_11919);
	return _11920;
}
float F__eval_gaussian_filter(
	in float dist)
{
	float _11924 = dist * dist;
	float _11925 = -_11924;
	float _11927 = _11925 / 5.00000000e-01;
	float _11928 = exp(_11927);
	return _11928;
}
float F__eval_cubic_filter(
	in float dist)
{
	float _11932 = abs(dist);
	float abs_dist = _11932;
	bool _11935 = abs_dist < 1.00000000e+00;
	float _11937 = 9.00000000e+00 * abs_dist;
	float _11939 = _11937 + -1.50000000e+01;
	float _11940 = _11939 * abs_dist;
	float _11941 = _11940 * abs_dist;
	float _11943 = _11941 + 6.00000000e+00;
	bool _11945 = abs_dist < 2.00000000e+00;
	float _11947 = -3.00000000e+00 * abs_dist;
	float _11949 = _11947 + 1.50000000e+01;
	float _11950 = _11949 * abs_dist;
	float _11952 = _11950 + -2.40000000e+01;
	float _11953 = _11952 * abs_dist;
	float _11955 = _11953 + 1.20000000e+01;
	float _11957 = _11945 ? _11955 : 0.00000000e+00;
	float _11958 = _11935 ? _11943 : _11957;
	float _11960 = _11958 / 6.00000000e+00;
	return _11960;
}
float F__eval_separable_cubic_filter(
	in float2 offset)
{
	float _11964;
	_11964 = offset.x;
	float _11966 = F__eval_cubic_filter(_11964);
	float _11967;
	_11967 = offset.y;
	float _11969 = F__eval_cubic_filter(_11967);
	float _11970 = _11966 * _11969;
	return _11970;
}
float2 F__eval_sinc_filter(
	in float2 offset)
{
	float2 _11975 = float2(3.14159274e+00, 3.14159274e+00) * offset;
	float2 pi_offset = _11975;
	float2 _11977 = sin(pi_offset);
	float2 _11978 = _11977 / pi_offset;
	return _11978;
}
float F__eval_separable_lanczos_sinc_filter(
	in float2 offset_unsafe)
{
	bool2 _11983 = offset_unsafe != float2(0.00000000e+00, 0.00000000e+00);
	int _11985 = -((int)_11983.x);
	float2 _11987 = offset_unsafe * ((float2)_11985.xx);
	bool2 _11989 = offset_unsafe > float2(0.00000000e+00, 0.00000000e+00);
	int _11991 = -((int)_11989.x);
	float2 _11993 = _11987 * ((float2)_11991.xx);
	bool2 _11995 = offset_unsafe != float2(0.00000000e+00, 0.00000000e+00);
	int _11997 = -((int)_11995.x);
	float2 _11999 = offset_unsafe * ((float2)_11997.xx);
	bool2 _12001 = offset_unsafe > float2(0.00000000e+00, 0.00000000e+00);
	int _12003 = -((int)_12001.x);
	float2 _12005 = _11999 * ((float2)_12003.xx);
	bool2 _12007 = _12005 >= float2(1.52587891e-05, 1.52587891e-05);
	float2 _12009 = _11993 * ((float2)((int)_12007.x).xx);
	bool2 _12011 = offset_unsafe != float2(0.00000000e+00, 0.00000000e+00);
	int _12013 = -((int)_12011.x);
	float2 _12015 = offset_unsafe * ((float2)_12013.xx);
	bool2 _12017 = offset_unsafe > float2(0.00000000e+00, 0.00000000e+00);
	int _12019 = -((int)_12017.x);
	float2 _12021 = _12015 * ((float2)_12019.xx);
	bool2 _12023 = _12021 < float2(1.52587891e-05, 1.52587891e-05);
	float _12026 = 1.52587891e-05 * ((float)((int)_12023.x));
	float2 _12028 = _12009 + _12026.xx;
	float2 offset_12029 = _12028;
	float2 _12030;
	_12030 = offset_12029;
	float2 _12031 = F__eval_sinc_filter(_12030);
	float2 _12033 = offset_12029 / float2(3.00000000e+00, 3.00000000e+00);
	float2 _12034;
	_12034 = _12033;
	float2 _12035 = F__eval_sinc_filter(_12034);
	float2 _12036 = _12031 * _12035;
	float2 xy_weights = _12036;
	float _12040 = xy_weights.x * xy_weights.y;
	return _12040;
}
float F__eval_jinc_filter_unorm(
	in float x)
{
	float _12045 = 3.84485662e-01 * x;
	float point3845_x = _12045;
	float _12047 = point3845_x * point3845_x;
	float _12048 = -_12047;
	float _12049 = exp(_12048);
	float exp_term = _12049;
	float _12052 = 8.15362334e-01 + x;
	float point8154_plus_x = _12052;
	float _12054 = cos(point8154_plus_x);
	float cos_term = _12054;
	float _12057 = min(x, 6.83134985e+00);
	float _12059 = 2.64727324e-02 * _12057;
	float _12061 = 6.80823565e-01 * exp_term;
	float _12062 = _12059 + _12061;
	float _12064 = min(7.41043186e+00, x);
	float _12066 = -5.97255975e-02 * _12064;
	float _12067 = _12066 * cos_term;
	float _12068 = x * x;
	float _12070 = 6.46074563e-02 * _12068;
	float _12071 = point8154_plus_x + _12070;
	float _12072 = cos(x);
	float _12073 = cos(x);
	float _12074 = _12073 + cos_term;
	float _12075 = max(exp_term, _12074);
	float _12076 = _12072 * _12075;
	float _12077 = _12071 + _12076;
	float _12078 = _12067 / _12077;
	float _12079 = _12062 + _12078;
	float _12081 = _12079 - 1.80837497e-01;
	return _12081;
}
float F__eval_jinc_filter(
	in float dist)
{
	float _12086 = 3.14159274e+00 * dist;
	float _12087;
	_12087 = _12086;
	float _12088 = F__eval_jinc_filter_unorm(_12087);
	return _12088;
}
float F__eval_lanczos_jinc_filter(
	in float dist)
{
	float _12092;
	_12092 = dist;
	float _12093 = F__eval_jinc_filter(_12092);
	float _12095 = dist / 3.00000000e+00;
	float _12096;
	_12096 = _12095;
	float _12097 = F__eval_jinc_filter(_12096);
	float _12098 = _12093 * _12097;
	return _12098;
}
float3 F__eval_unorm_rgb_weights(
	in float2 offset,
	in float2 final_axis_importance)
{
	float2 _12103 = offset * final_axis_importance;
	float2 offset_g = _12103;
	float2 _12105 = F__get_aa_subpixel_r_offset();
	float2 aa_r_offset = _12105;
	float2 _12107 = aa_r_offset * final_axis_importance;
	float2 _12108 = offset_g - _12107;
	float2 offset_r = _12108;
	float2 _12110 = aa_r_offset * final_axis_importance;
	float2 _12111 = offset_g + _12110;
	float2 offset_b = _12111;
	if (false)
	{
		float2 _12117;
		_12117 = offset_r;
		float _12118 = F__eval_separable_box_filter(_12117);
		float2 _12119;
		_12119 = offset_g;
		float _12120 = F__eval_separable_box_filter(_12119);
		float2 _12121;
		_12121 = offset_b;
		float _12122 = F__eval_separable_box_filter(_12121);
		float3 _12123 = float3(_12118, _12120, _12122);
		return _12123;
	}
	else
	{
		if (false)
		{
			float _12128 = length(offset_r);
			float _12129;
			_12129 = _12128;
			float _12130 = F__eval_box_filter(_12129);
			float _12131 = length(offset_g);
			float _12132;
			_12132 = _12131;
			float _12133 = F__eval_box_filter(_12132);
			float _12134 = length(offset_b);
			float _12135;
			_12135 = _12134;
			float _12136 = F__eval_box_filter(_12135);
			float3 _12137 = float3(_12130, _12133, _12136);
			return _12137;
		}
		else
		{
			if (false)
			{
				float _12142;
				_12142 = offset_r.x;
				float _12144 = F__eval_tent_filter(_12142);
				float _12145;
				_12145 = offset_r.y;
				float _12147 = F__eval_tent_filter(_12145);
				float _12148 = _12144 * _12147;
				float _12149;
				_12149 = offset_g.x;
				float _12151 = F__eval_tent_filter(_12149);
				float _12152;
				_12152 = offset_g.y;
				float _12154 = F__eval_tent_filter(_12152);
				float _12155 = _12151 * _12154;
				float _12156;
				_12156 = offset_b.x;
				float _12158 = F__eval_tent_filter(_12156);
				float _12159;
				_12159 = offset_b.y;
				float _12161 = F__eval_tent_filter(_12159);
				float _12162 = _12158 * _12161;
				float3 _12163 = float3(_12148, _12155, _12162);
				return _12163;
			}
			else
			{
				if (false)
				{
					float _12168 = length(offset_r);
					float _12169;
					_12169 = _12168;
					float _12170 = F__eval_tent_filter(_12169);
					float _12171 = length(offset_g);
					float _12172;
					_12172 = _12171;
					float _12173 = F__eval_tent_filter(_12172);
					float _12174 = length(offset_b);
					float _12175;
					_12175 = _12174;
					float _12176 = F__eval_tent_filter(_12175);
					float3 _12177 = float3(_12170, _12173, _12176);
					return _12177;
				}
				else
				{
					if (false)
					{
						float _12182;
						_12182 = offset_r.x;
						float _12184 = F__eval_gaussian_filter(_12182);
						float _12185;
						_12185 = offset_r.y;
						float _12187 = F__eval_gaussian_filter(_12185);
						float _12188 = _12184 * _12187;
						float _12189;
						_12189 = offset_g.x;
						float _12191 = F__eval_gaussian_filter(_12189);
						float _12192;
						_12192 = offset_g.y;
						float _12194 = F__eval_gaussian_filter(_12192);
						float _12195 = _12191 * _12194;
						float _12196;
						_12196 = offset_b.x;
						float _12198 = F__eval_gaussian_filter(_12196);
						float _12199;
						_12199 = offset_b.y;
						float _12201 = F__eval_gaussian_filter(_12199);
						float _12202 = _12198 * _12201;
						float3 _12203 = float3(_12188, _12195, _12202);
						return _12203;
					}
					else
					{
						if (false)
						{
							float _12208 = length(offset_r);
							float _12209;
							_12209 = _12208;
							float _12210 = F__eval_gaussian_filter(_12209);
							float _12211 = length(offset_g);
							float _12212;
							_12212 = _12211;
							float _12213 = F__eval_gaussian_filter(_12212);
							float _12214 = length(offset_b);
							float _12215;
							_12215 = _12214;
							float _12216 = F__eval_gaussian_filter(_12215);
							float3 _12217 = float3(_12210, _12213, _12216);
							return _12217;
						}
						else
						{
							if (true)
							{
								float _12222;
								_12222 = offset_r.x;
								float _12224 = F__eval_cubic_filter(_12222);
								float _12225;
								_12225 = offset_r.y;
								float _12227 = F__eval_cubic_filter(_12225);
								float _12228 = _12224 * _12227;
								float _12229;
								_12229 = offset_g.x;
								float _12231 = F__eval_cubic_filter(_12229);
								float _12232;
								_12232 = offset_g.y;
								float _12234 = F__eval_cubic_filter(_12232);
								float _12235 = _12231 * _12234;
								float _12236;
								_12236 = offset_b.x;
								float _12238 = F__eval_cubic_filter(_12236);
								float _12239;
								_12239 = offset_b.y;
								float _12241 = F__eval_cubic_filter(_12239);
								float _12242 = _12238 * _12241;
								float3 _12243 = float3(_12228, _12235, _12242);
								return _12243;
							}
							else
							{
								if (true)
								{
									float _12248 = length(offset_r);
									float _12249;
									_12249 = _12248;
									float _12250 = F__eval_cubic_filter(_12249);
									float _12251 = length(offset_g);
									float _12252;
									_12252 = _12251;
									float _12253 = F__eval_cubic_filter(_12252);
									float _12254 = length(offset_b);
									float _12255;
									_12255 = _12254;
									float _12256 = F__eval_cubic_filter(_12255);
									float3 _12257 = float3(_12250, _12253, _12256);
									return _12257;
								}
								else
								{
									if (true)
									{
										float2 _12262;
										_12262 = offset_r;
										float _12263 = F__eval_separable_lanczos_sinc_filter(_12262);
										float2 _12264;
										_12264 = offset_g;
										float _12265 = F__eval_separable_lanczos_sinc_filter(_12264);
										float2 _12266;
										_12266 = offset_b;
										float _12267 = F__eval_separable_lanczos_sinc_filter(_12266);
										float3 _12268 = float3(_12263, _12265, _12267);
										return _12268;
									}
									else
									{
										if (true)
										{
											float _12273 = length(offset_r);
											float _12274;
											_12274 = _12273;
											float _12275 = F__eval_lanczos_jinc_filter(_12274);
											float _12276 = length(offset_g);
											float _12277;
											_12277 = _12276;
											float _12278 = F__eval_lanczos_jinc_filter(_12277);
											float _12279 = length(offset_b);
											float _12280;
											_12280 = _12279;
											float _12281 = F__eval_lanczos_jinc_filter(_12280);
											float3 _12282 = float3(_12275, _12278, _12281);
											return _12282;
										}
										else
										{
											float2 _12283;
											_12283 = offset_r;
											float _12284 = F__eval_separable_box_filter(_12283);
											float2 _12285;
											_12285 = offset_g;
											float _12286 = F__eval_separable_box_filter(_12285);
											float2 _12287;
											_12287 = offset_b;
											float _12288 = F__eval_separable_box_filter(_12287);
											float3 _12289 = float3(_12284, _12286, _12288);
											return _12289;
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
float4 F__tex2Daa_tiled_linearize(
	in __sampler2D_float4 samp,
	in float2 s,
	in float input_gamma)
{
	float2 _12295;
	float _12296;
	_12295 = s;
	_12296 = input_gamma;
	float4 _12297 = F__tex2D_linearize(samp, _12295, _12296);
	return _12297;
}
float2 F__get_frame_sign(
	in float frame)
{
	if (false)
	{
		float _12306 = frame / 2.00000000e+00;
		float _12307 = frac(_12306);
		float _12309 = _12307 * 2.00000000e+00;
		bool _12311 = _12309 > 5.00000000e-01;
		float frame_odd = ((float)_12311);
		float2 _12314 = F__get_aa_subpixel_r_offset();
		float2 aa_r_offset_12315 = _12314;
		float _12317 = abs(aa_r_offset_12315.x);
		bool _12319 = _12317 < 1.52587891e-05;
		float _12321 = abs(aa_r_offset_12315.y);
		bool _12323 = _12321 < 1.52587891e-05;
		float2 _12326 = float2(((float)_12319), ((float)_12323));
		float2 _12327 = -_12326;
		float2 mirror = _12327;
		return mirror;
	}
	else
	{
		return float2(1.00000000e+00, 1.00000000e+00);
	}
}
float3 F__tex2Daa_subpixel_weights_only(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float input_gamma)
{
	float2 _12336 = F__get_aa_subpixel_r_offset();
	float2 aa_r_offset_12337 = _12336;
	float2 _12338 = mul(pixel_to_tex_uv, aa_r_offset_12337);
	float2 aa_r_offset_uv_offset = _12338;
	float2 _12340;
	float _12341;
	_12340 = tex_uv;
	_12341 = input_gamma;
	float4 _12342 = F__tex2D_linearize(tex, _12340, _12341);
	float color_g = _12342.y;
	float2 _12345 = tex_uv + aa_r_offset_uv_offset;
	float2 _12346;
	float _12347;
	_12346 = _12345;
	_12347 = input_gamma;
	float4 _12348 = F__tex2D_linearize(tex, _12346, _12347);
	float color_r = _12348.x;
	float2 _12351 = tex_uv - aa_r_offset_uv_offset;
	float2 _12352;
	float _12353;
	_12352 = _12351;
	_12353 = input_gamma;
	float4 _12354 = F__tex2D_linearize(tex, _12352, _12353);
	float color_b = _12354.z;
	float3 _12357 = float3(color_r, color_g, color_b);
	return _12357;
}
float3 F__tex2Daa4x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12366 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai = _12366;
	float2 subpixel_support_diameter = ssd_fai.xy;
	float2 final_axis_importance_12371 = ssd_fai.zw;
	float2 _12373 = float2(2.50000000e-01, 2.50000000e-01) * subpixel_support_diameter;
	float2 xy_step = _12373;
	float2 _12376 = float2(-1.50000000e+00, -1.50000000e+00) * xy_step;
	float2 xy_start_offset = _12376;
	float2 _12379 = float2(2.00000000e+00, 0.00000000e+00) * xy_step;
	float2 _12380 = xy_start_offset + _12379;
	float2 xy_offset0 = _12380;
	float2 _12383 = float2(0.00000000e+00, 1.00000000e+00) * xy_step;
	float2 _12384 = xy_start_offset + _12383;
	float2 xy_offset1 = _12384;
	float2 _12386;
	float2 _12387;
	_12386 = xy_offset0;
	_12387 = final_axis_importance_12371;
	float3 _12388 = F__eval_unorm_rgb_weights(_12386, _12387);
	float3 w0_12389 = _12388;
	float2 _12390;
	float2 _12391;
	_12390 = xy_offset1;
	_12391 = final_axis_importance_12371;
	float3 _12392 = F__eval_unorm_rgb_weights(_12390, _12391);
	float3 w1_12393 = _12392;
	float3 w2_12395 = w1_12393.zyx;
	float3 w3_12397 = w0_12389.zyx;
	float3 _12398 = w0_12389 + w1_12393;
	float3 half_sum = _12398;
	float3 _12401 = half_sum + half_sum.zyx;
	float3 w_sum_12402 = _12401;
	float3 _12404 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12402;
	float3 w_sum_inv = _12404;
	float2x2 _12407 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv = _12407;
	float _12409;
	_12409 = frame;
	float2 _12410 = F__get_frame_sign(_12409);
	float2 frame_sign = _12410;
	float2 _12412 = xy_offset0 * frame_sign;
	float2 _12413 = mul(true_pixel_to_tex_uv, _12412);
	float2 uv_offset0 = _12413;
	float2 _12415 = xy_offset1 * frame_sign;
	float2 _12416 = mul(true_pixel_to_tex_uv, _12415);
	float2 uv_offset1 = _12416;
	float2 _12418 = tex_uv + uv_offset0;
	float2 _12419;
	float _12420;
	_12419 = _12418;
	_12420 = input_gamma;
	float4 _12421 = F__tex2Daa_tiled_linearize(tex, _12419, _12420);
	float3 sample0_12423 = _12421.xyz;
	float2 _12424 = tex_uv + uv_offset1;
	float2 _12425;
	float _12426;
	_12425 = _12424;
	_12426 = input_gamma;
	float4 _12427 = F__tex2Daa_tiled_linearize(tex, _12425, _12426);
	float3 sample1_12429 = _12427.xyz;
	float2 _12430 = tex_uv - uv_offset1;
	float2 _12431;
	float _12432;
	_12431 = _12430;
	_12432 = input_gamma;
	float4 _12433 = F__tex2Daa_tiled_linearize(tex, _12431, _12432);
	float3 sample2_12435 = _12433.xyz;
	float2 _12436 = tex_uv - uv_offset0;
	float2 _12437;
	float _12438;
	_12437 = _12436;
	_12438 = input_gamma;
	float4 _12439 = F__tex2Daa_tiled_linearize(tex, _12437, _12438);
	float3 sample3_12441 = _12439.xyz;
	float3 _12442 = w0_12389 * sample0_12423;
	float3 _12443 = w1_12393 * sample1_12429;
	float3 _12444 = _12442 + _12443;
	float3 _12445 = w2_12395 * sample2_12435;
	float3 _12446 = _12444 + _12445;
	float3 _12447 = w3_12397 * sample3_12441;
	float3 _12448 = _12446 + _12447;
	float3 _12449 = w_sum_inv * _12448;
	return _12449;
}
float3 F__tex2Daa5x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12458 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12459 = _12458;
	float2 subpixel_support_diameter_12461 = ssd_fai_12459.xy;
	float2 final_axis_importance_12463 = ssd_fai_12459.zw;
	float2 _12465 = float2(2.00000003e-01, 2.00000003e-01) * subpixel_support_diameter_12461;
	float2 xy_step_12466 = _12465;
	float2 _12468 = float2(-2.00000000e+00, -2.00000000e+00) * xy_step_12466;
	float2 xy_start_offset_12469 = _12468;
	float2 _12471 = float2(1.00000000e+00, 0.00000000e+00) * xy_step_12466;
	float2 _12472 = xy_start_offset_12469 + _12471;
	float2 xy_offset0_12473 = _12472;
	float2 _12475 = float2(4.00000000e+00, 1.00000000e+00) * xy_step_12466;
	float2 _12476 = xy_start_offset_12469 + _12475;
	float2 xy_offset1_12477 = _12476;
	float2 _12479 = float2(2.00000000e+00, 2.00000000e+00) * xy_step_12466;
	float2 _12480 = xy_start_offset_12469 + _12479;
	float2 xy_offset2 = _12480;
	float2 _12482;
	float2 _12483;
	_12482 = xy_offset0_12473;
	_12483 = final_axis_importance_12463;
	float3 _12484 = F__eval_unorm_rgb_weights(_12482, _12483);
	float3 w0_12485 = _12484;
	float2 _12486;
	float2 _12487;
	_12486 = xy_offset1_12477;
	_12487 = final_axis_importance_12463;
	float3 _12488 = F__eval_unorm_rgb_weights(_12486, _12487);
	float3 w1_12489 = _12488;
	float2 _12490;
	float2 _12491;
	_12490 = xy_offset2;
	_12491 = final_axis_importance_12463;
	float3 _12492 = F__eval_unorm_rgb_weights(_12490, _12491);
	float3 w2_12493 = _12492;
	float3 w3_12495 = w1_12489.zyx;
	float3 w4_12497 = w0_12485.zyx;
	float3 _12498 = w0_12485 + w1_12489;
	float3 _12499 = _12498 + w2_12493;
	float3 _12500 = _12499 + w3_12495;
	float3 _12501 = _12500 + w4_12497;
	float3 _12503 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _12501;
	float3 w_sum_inv_12504 = _12503;
	float2x2 _12506 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12507 = _12506;
	float _12508;
	_12508 = frame;
	float2 _12509 = F__get_frame_sign(_12508);
	float2 frame_sign_12510 = _12509;
	float2 _12511 = xy_offset0_12473 * frame_sign_12510;
	float2 _12512 = mul(true_pixel_to_tex_uv_12507, _12511);
	float2 uv_offset0_12513 = _12512;
	float2 _12514 = xy_offset1_12477 * frame_sign_12510;
	float2 _12515 = mul(true_pixel_to_tex_uv_12507, _12514);
	float2 uv_offset1_12516 = _12515;
	float2 _12517 = tex_uv + uv_offset0_12513;
	float2 _12518;
	float _12519;
	_12518 = _12517;
	_12519 = input_gamma;
	float4 _12520 = F__tex2Daa_tiled_linearize(tex, _12518, _12519);
	float3 sample0_12522 = _12520.xyz;
	float2 _12523 = tex_uv + uv_offset1_12516;
	float2 _12524;
	float _12525;
	_12524 = _12523;
	_12525 = input_gamma;
	float4 _12526 = F__tex2Daa_tiled_linearize(tex, _12524, _12525);
	float3 sample1_12528 = _12526.xyz;
	float2 _12529;
	float _12530;
	_12529 = tex_uv;
	_12530 = input_gamma;
	float4 _12531 = F__tex2Daa_tiled_linearize(tex, _12529, _12530);
	float3 sample2_12533 = _12531.xyz;
	float2 _12534 = tex_uv - uv_offset1_12516;
	float2 _12535;
	float _12536;
	_12535 = _12534;
	_12536 = input_gamma;
	float4 _12537 = F__tex2Daa_tiled_linearize(tex, _12535, _12536);
	float3 sample3_12539 = _12537.xyz;
	float2 _12540 = tex_uv - uv_offset0_12513;
	float2 _12541;
	float _12542;
	_12541 = _12540;
	_12542 = input_gamma;
	float4 _12543 = F__tex2Daa_tiled_linearize(tex, _12541, _12542);
	float3 sample4_12545 = _12543.xyz;
	float3 _12546 = w0_12485 * sample0_12522;
	float3 _12547 = w1_12489 * sample1_12528;
	float3 _12548 = _12546 + _12547;
	float3 _12549 = w2_12493 * sample2_12533;
	float3 _12550 = _12548 + _12549;
	float3 _12551 = w3_12495 * sample3_12539;
	float3 _12552 = _12550 + _12551;
	float3 _12553 = w4_12497 * sample4_12545;
	float3 _12554 = _12552 + _12553;
	float3 _12555 = w_sum_inv_12504 * _12554;
	return _12555;
}
float3 F__tex2Daa6x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12564 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12565 = _12564;
	float2 subpixel_support_diameter_12567 = ssd_fai_12565.xy;
	float2 final_axis_importance_12569 = ssd_fai_12565.zw;
	float2 _12571 = float2(1.66666672e-01, 1.66666672e-01) * subpixel_support_diameter_12567;
	float2 xy_step_12572 = _12571;
	float2 _12574 = float2(-2.50000000e+00, -2.50000000e+00) * xy_step_12572;
	float2 xy_start_offset_12575 = _12574;
	float2 _12577 = float2(4.00000000e+00, 0.00000000e+00) * xy_step_12572;
	float2 _12578 = xy_start_offset_12575 + _12577;
	float2 xy_offset0_12579 = _12578;
	float2 _12581 = float2(2.00000000e+00, 1.00000000e+00) * xy_step_12572;
	float2 _12582 = xy_start_offset_12575 + _12581;
	float2 xy_offset1_12583 = _12582;
	float2 _12585 = float2(0.00000000e+00, 2.00000000e+00) * xy_step_12572;
	float2 _12586 = xy_start_offset_12575 + _12585;
	float2 xy_offset2_12587 = _12586;
	float2 _12588;
	float2 _12589;
	_12588 = xy_offset0_12579;
	_12589 = final_axis_importance_12569;
	float3 _12590 = F__eval_unorm_rgb_weights(_12588, _12589);
	float3 w0_12591 = _12590;
	float2 _12592;
	float2 _12593;
	_12592 = xy_offset1_12583;
	_12593 = final_axis_importance_12569;
	float3 _12594 = F__eval_unorm_rgb_weights(_12592, _12593);
	float3 w1_12595 = _12594;
	float2 _12596;
	float2 _12597;
	_12596 = xy_offset2_12587;
	_12597 = final_axis_importance_12569;
	float3 _12598 = F__eval_unorm_rgb_weights(_12596, _12597);
	float3 w2_12599 = _12598;
	float3 w3_12601 = w2_12599.zyx;
	float3 w4_12603 = w1_12595.zyx;
	float3 w5_12605 = w0_12591.zyx;
	float3 _12606 = w0_12591 + w1_12595;
	float3 _12607 = _12606 + w2_12599;
	float3 half_sum_12608 = _12607;
	float3 _12610 = half_sum_12608 + half_sum_12608.zyx;
	float3 w_sum_12611 = _12610;
	float3 _12613 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12611;
	float3 w_sum_inv_12614 = _12613;
	float2x2 _12616 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12617 = _12616;
	float _12618;
	_12618 = frame;
	float2 _12619 = F__get_frame_sign(_12618);
	float2 frame_sign_12620 = _12619;
	float2 _12621 = xy_offset0_12579 * frame_sign_12620;
	float2 _12622 = mul(true_pixel_to_tex_uv_12617, _12621);
	float2 uv_offset0_12623 = _12622;
	float2 _12624 = xy_offset1_12583 * frame_sign_12620;
	float2 _12625 = mul(true_pixel_to_tex_uv_12617, _12624);
	float2 uv_offset1_12626 = _12625;
	float2 _12627 = xy_offset2_12587 * frame_sign_12620;
	float2 _12628 = mul(true_pixel_to_tex_uv_12617, _12627);
	float2 uv_offset2 = _12628;
	float2 _12630 = tex_uv + uv_offset0_12623;
	float2 _12631;
	float _12632;
	_12631 = _12630;
	_12632 = input_gamma;
	float4 _12633 = F__tex2Daa_tiled_linearize(tex, _12631, _12632);
	float3 sample0_12635 = _12633.xyz;
	float2 _12636 = tex_uv + uv_offset1_12626;
	float2 _12637;
	float _12638;
	_12637 = _12636;
	_12638 = input_gamma;
	float4 _12639 = F__tex2Daa_tiled_linearize(tex, _12637, _12638);
	float3 sample1_12641 = _12639.xyz;
	float2 _12642 = tex_uv + uv_offset2;
	float2 _12643;
	float _12644;
	_12643 = _12642;
	_12644 = input_gamma;
	float4 _12645 = F__tex2Daa_tiled_linearize(tex, _12643, _12644);
	float3 sample2_12647 = _12645.xyz;
	float2 _12648 = tex_uv - uv_offset2;
	float2 _12649;
	float _12650;
	_12649 = _12648;
	_12650 = input_gamma;
	float4 _12651 = F__tex2Daa_tiled_linearize(tex, _12649, _12650);
	float3 sample3_12653 = _12651.xyz;
	float2 _12654 = tex_uv - uv_offset1_12626;
	float2 _12655;
	float _12656;
	_12655 = _12654;
	_12656 = input_gamma;
	float4 _12657 = F__tex2Daa_tiled_linearize(tex, _12655, _12656);
	float3 sample4_12659 = _12657.xyz;
	float2 _12660 = tex_uv - uv_offset0_12623;
	float2 _12661;
	float _12662;
	_12661 = _12660;
	_12662 = input_gamma;
	float4 _12663 = F__tex2Daa_tiled_linearize(tex, _12661, _12662);
	float3 sample5_12665 = _12663.xyz;
	float3 _12666 = w0_12591 * sample0_12635;
	float3 _12667 = w1_12595 * sample1_12641;
	float3 _12668 = _12666 + _12667;
	float3 _12669 = w2_12599 * sample2_12647;
	float3 _12670 = _12668 + _12669;
	float3 _12671 = w3_12601 * sample3_12653;
	float3 _12672 = _12670 + _12671;
	float3 _12673 = w4_12603 * sample4_12659;
	float3 _12674 = _12672 + _12673;
	float3 _12675 = w5_12605 * sample5_12665;
	float3 _12676 = _12674 + _12675;
	float3 _12677 = w_sum_inv_12614 * _12676;
	return _12677;
}
float3 F__tex2Daa7x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12686 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12687 = _12686;
	float2 subpixel_support_diameter_12689 = ssd_fai_12687.xy;
	float2 final_axis_importance_12691 = ssd_fai_12687.zw;
	float2 _12693 = float2(1.42857149e-01, 1.42857149e-01) * subpixel_support_diameter_12689;
	float2 xy_step_12694 = _12693;
	float2 _12696 = float2(-3.00000000e+00, -3.00000000e+00) * xy_step_12694;
	float2 xy_start_offset_12697 = _12696;
	float2 _12699 = float2(1.00000000e+00, 0.00000000e+00) * xy_step_12694;
	float2 _12700 = xy_start_offset_12697 + _12699;
	float2 xy_offset0_12701 = _12700;
	float2 _12703 = float2(4.00000000e+00, 1.00000000e+00) * xy_step_12694;
	float2 _12704 = xy_start_offset_12697 + _12703;
	float2 xy_offset1_12705 = _12704;
	float2 _12707 = float2(0.00000000e+00, 2.00000000e+00) * xy_step_12694;
	float2 _12708 = xy_start_offset_12697 + _12707;
	float2 xy_offset2_12709 = _12708;
	float2 _12711 = float2(3.00000000e+00, 3.00000000e+00) * xy_step_12694;
	float2 _12712 = xy_start_offset_12697 + _12711;
	float2 xy_offset3 = _12712;
	float2 _12714;
	float2 _12715;
	_12714 = xy_offset0_12701;
	_12715 = final_axis_importance_12691;
	float3 _12716 = F__eval_unorm_rgb_weights(_12714, _12715);
	float3 w0_12717 = _12716;
	float2 _12718;
	float2 _12719;
	_12718 = xy_offset1_12705;
	_12719 = final_axis_importance_12691;
	float3 _12720 = F__eval_unorm_rgb_weights(_12718, _12719);
	float3 w1_12721 = _12720;
	float2 _12722;
	float2 _12723;
	_12722 = xy_offset2_12709;
	_12723 = final_axis_importance_12691;
	float3 _12724 = F__eval_unorm_rgb_weights(_12722, _12723);
	float3 w2_12725 = _12724;
	float2 _12726;
	float2 _12727;
	_12726 = xy_offset3;
	_12727 = final_axis_importance_12691;
	float3 _12728 = F__eval_unorm_rgb_weights(_12726, _12727);
	float3 w3_12729 = _12728;
	float3 w4_12731 = w2_12725.zyx;
	float3 w5_12733 = w1_12721.zyx;
	float3 w6_12735 = w0_12717.zyx;
	float3 _12736 = w0_12717 + w1_12721;
	float3 _12737 = _12736 + w2_12725;
	float3 half_sum_12738 = _12737;
	float3 _12740 = half_sum_12738 + half_sum_12738.zyx;
	float3 _12741 = _12740 + w3_12729;
	float3 w_sum_12742 = _12741;
	float3 _12744 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12742;
	float3 w_sum_inv_12745 = _12744;
	float2x2 _12747 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12748 = _12747;
	float _12749;
	_12749 = frame;
	float2 _12750 = F__get_frame_sign(_12749);
	float2 frame_sign_12751 = _12750;
	float2 _12752 = xy_offset0_12701 * frame_sign_12751;
	float2 _12753 = mul(true_pixel_to_tex_uv_12748, _12752);
	float2 uv_offset0_12754 = _12753;
	float2 _12755 = xy_offset1_12705 * frame_sign_12751;
	float2 _12756 = mul(true_pixel_to_tex_uv_12748, _12755);
	float2 uv_offset1_12757 = _12756;
	float2 _12758 = xy_offset2_12709 * frame_sign_12751;
	float2 _12759 = mul(true_pixel_to_tex_uv_12748, _12758);
	float2 uv_offset2_12760 = _12759;
	float2 _12761 = tex_uv + uv_offset0_12754;
	float2 _12762;
	float _12763;
	_12762 = _12761;
	_12763 = input_gamma;
	float4 _12764 = F__tex2Daa_tiled_linearize(tex, _12762, _12763);
	float3 sample0_12766 = _12764.xyz;
	float2 _12767 = tex_uv + uv_offset1_12757;
	float2 _12768;
	float _12769;
	_12768 = _12767;
	_12769 = input_gamma;
	float4 _12770 = F__tex2Daa_tiled_linearize(tex, _12768, _12769);
	float3 sample1_12772 = _12770.xyz;
	float2 _12773 = tex_uv + uv_offset2_12760;
	float2 _12774;
	float _12775;
	_12774 = _12773;
	_12775 = input_gamma;
	float4 _12776 = F__tex2Daa_tiled_linearize(tex, _12774, _12775);
	float3 sample2_12778 = _12776.xyz;
	float2 _12779;
	float _12780;
	_12779 = tex_uv;
	_12780 = input_gamma;
	float4 _12781 = F__tex2Daa_tiled_linearize(tex, _12779, _12780);
	float3 sample3_12783 = _12781.xyz;
	float2 _12784 = tex_uv - uv_offset2_12760;
	float2 _12785;
	float _12786;
	_12785 = _12784;
	_12786 = input_gamma;
	float4 _12787 = F__tex2Daa_tiled_linearize(tex, _12785, _12786);
	float3 sample4_12789 = _12787.xyz;
	float2 _12790 = tex_uv - uv_offset1_12757;
	float2 _12791;
	float _12792;
	_12791 = _12790;
	_12792 = input_gamma;
	float4 _12793 = F__tex2Daa_tiled_linearize(tex, _12791, _12792);
	float3 sample5_12795 = _12793.xyz;
	float2 _12796 = tex_uv - uv_offset0_12754;
	float2 _12797;
	float _12798;
	_12797 = _12796;
	_12798 = input_gamma;
	float4 _12799 = F__tex2Daa_tiled_linearize(tex, _12797, _12798);
	float3 sample6_12801 = _12799.xyz;
	float3 _12802 = w0_12717 * sample0_12766;
	float3 _12803 = w1_12721 * sample1_12772;
	float3 _12804 = _12802 + _12803;
	float3 _12805 = w2_12725 * sample2_12778;
	float3 _12806 = _12804 + _12805;
	float3 _12807 = w3_12729 * sample3_12783;
	float3 _12808 = _12806 + _12807;
	float3 _12809 = w4_12731 * sample4_12789;
	float3 _12810 = _12808 + _12809;
	float3 _12811 = w5_12733 * sample5_12795;
	float3 _12812 = _12810 + _12811;
	float3 _12813 = w6_12735 * sample6_12801;
	float3 _12814 = _12812 + _12813;
	float3 _12815 = w_sum_inv_12745 * _12814;
	return _12815;
}
float3 F__tex2Daa8x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12824 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12825 = _12824;
	float2 subpixel_support_diameter_12827 = ssd_fai_12825.xy;
	float2 final_axis_importance_12829 = ssd_fai_12825.zw;
	float2 _12831 = float2(1.25000000e-01, 1.25000000e-01) * subpixel_support_diameter_12827;
	float2 xy_step_12832 = _12831;
	float2 _12834 = float2(-3.50000000e+00, -3.50000000e+00) * xy_step_12832;
	float2 xy_start_offset_12835 = _12834;
	float2 _12837 = float2(2.00000000e+00, 0.00000000e+00) * xy_step_12832;
	float2 _12838 = xy_start_offset_12835 + _12837;
	float2 xy_offset0_12839 = _12838;
	float2 _12841 = float2(4.00000000e+00, 1.00000000e+00) * xy_step_12832;
	float2 _12842 = xy_start_offset_12835 + _12841;
	float2 xy_offset1_12843 = _12842;
	float2 _12845 = float2(1.00000000e+00, 2.00000000e+00) * xy_step_12832;
	float2 _12846 = xy_start_offset_12835 + _12845;
	float2 xy_offset2_12847 = _12846;
	float2 _12849 = float2(7.00000000e+00, 3.00000000e+00) * xy_step_12832;
	float2 _12850 = xy_start_offset_12835 + _12849;
	float2 xy_offset3_12851 = _12850;
	float2 _12852;
	float2 _12853;
	_12852 = xy_offset0_12839;
	_12853 = final_axis_importance_12829;
	float3 _12854 = F__eval_unorm_rgb_weights(_12852, _12853);
	float3 w0_12855 = _12854;
	float2 _12856;
	float2 _12857;
	_12856 = xy_offset1_12843;
	_12857 = final_axis_importance_12829;
	float3 _12858 = F__eval_unorm_rgb_weights(_12856, _12857);
	float3 w1_12859 = _12858;
	float2 _12860;
	float2 _12861;
	_12860 = xy_offset2_12847;
	_12861 = final_axis_importance_12829;
	float3 _12862 = F__eval_unorm_rgb_weights(_12860, _12861);
	float3 w2_12863 = _12862;
	float2 _12864;
	float2 _12865;
	_12864 = xy_offset3_12851;
	_12865 = final_axis_importance_12829;
	float3 _12866 = F__eval_unorm_rgb_weights(_12864, _12865);
	float3 w3_12867 = _12866;
	float3 w4_12869 = w3_12867.zyx;
	float3 w5_12871 = w2_12863.zyx;
	float3 w6_12873 = w1_12859.zyx;
	float3 w7_12875 = w0_12855.zyx;
	float3 _12876 = w0_12855 + w1_12859;
	float3 _12877 = _12876 + w2_12863;
	float3 _12878 = _12877 + w3_12867;
	float3 half_sum_12879 = _12878;
	float3 _12881 = half_sum_12879 + half_sum_12879.zyx;
	float3 w_sum_12882 = _12881;
	float3 _12884 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12882;
	float3 w_sum_inv_12885 = _12884;
	float2x2 _12887 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12888 = _12887;
	float _12889;
	_12889 = frame;
	float2 _12890 = F__get_frame_sign(_12889);
	float2 frame_sign_12891 = _12890;
	float2 _12892 = xy_offset0_12839 * frame_sign_12891;
	float2 _12893 = mul(true_pixel_to_tex_uv_12888, _12892);
	float2 uv_offset0_12894 = _12893;
	float2 _12895 = xy_offset1_12843 * frame_sign_12891;
	float2 _12896 = mul(true_pixel_to_tex_uv_12888, _12895);
	float2 uv_offset1_12897 = _12896;
	float2 _12898 = xy_offset2_12847 * frame_sign_12891;
	float2 _12899 = mul(true_pixel_to_tex_uv_12888, _12898);
	float2 uv_offset2_12900 = _12899;
	float2 _12901 = xy_offset3_12851 * frame_sign_12891;
	float2 _12902 = mul(true_pixel_to_tex_uv_12888, _12901);
	float2 uv_offset3 = _12902;
	float2 _12904 = tex_uv + uv_offset0_12894;
	float2 _12905;
	float _12906;
	_12905 = _12904;
	_12906 = input_gamma;
	float4 _12907 = F__tex2Daa_tiled_linearize(tex, _12905, _12906);
	float3 sample0_12909 = _12907.xyz;
	float2 _12910 = tex_uv + uv_offset1_12897;
	float2 _12911;
	float _12912;
	_12911 = _12910;
	_12912 = input_gamma;
	float4 _12913 = F__tex2Daa_tiled_linearize(tex, _12911, _12912);
	float3 sample1_12915 = _12913.xyz;
	float2 _12916 = tex_uv + uv_offset2_12900;
	float2 _12917;
	float _12918;
	_12917 = _12916;
	_12918 = input_gamma;
	float4 _12919 = F__tex2Daa_tiled_linearize(tex, _12917, _12918);
	float3 sample2_12921 = _12919.xyz;
	float2 _12922 = tex_uv + uv_offset3;
	float2 _12923;
	float _12924;
	_12923 = _12922;
	_12924 = input_gamma;
	float4 _12925 = F__tex2Daa_tiled_linearize(tex, _12923, _12924);
	float3 sample3_12927 = _12925.xyz;
	float2 _12928 = tex_uv - uv_offset3;
	float2 _12929;
	float _12930;
	_12929 = _12928;
	_12930 = input_gamma;
	float4 _12931 = F__tex2Daa_tiled_linearize(tex, _12929, _12930);
	float3 sample4_12933 = _12931.xyz;
	float2 _12934 = tex_uv - uv_offset2_12900;
	float2 _12935;
	float _12936;
	_12935 = _12934;
	_12936 = input_gamma;
	float4 _12937 = F__tex2Daa_tiled_linearize(tex, _12935, _12936);
	float3 sample5_12939 = _12937.xyz;
	float2 _12940 = tex_uv - uv_offset1_12897;
	float2 _12941;
	float _12942;
	_12941 = _12940;
	_12942 = input_gamma;
	float4 _12943 = F__tex2Daa_tiled_linearize(tex, _12941, _12942);
	float3 sample6_12945 = _12943.xyz;
	float2 _12946 = tex_uv - uv_offset0_12894;
	float2 _12947;
	float _12948;
	_12947 = _12946;
	_12948 = input_gamma;
	float4 _12949 = F__tex2Daa_tiled_linearize(tex, _12947, _12948);
	float3 sample7_12951 = _12949.xyz;
	float3 _12952 = w0_12855 * sample0_12909;
	float3 _12953 = w1_12859 * sample1_12915;
	float3 _12954 = _12952 + _12953;
	float3 _12955 = w2_12863 * sample2_12921;
	float3 _12956 = _12954 + _12955;
	float3 _12957 = w3_12867 * sample3_12927;
	float3 _12958 = _12956 + _12957;
	float3 _12959 = w4_12869 * sample4_12933;
	float3 _12960 = _12958 + _12959;
	float3 _12961 = w5_12871 * sample5_12939;
	float3 _12962 = _12960 + _12961;
	float3 _12963 = w6_12873 * sample6_12945;
	float3 _12964 = _12962 + _12963;
	float3 _12965 = w7_12875 * sample7_12951;
	float3 _12966 = _12964 + _12965;
	float3 _12967 = w_sum_inv_12885 * _12966;
	return _12967;
}
float3 F__tex2Daa12x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12976 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12977 = _12976;
	float2 subpixel_support_diameter_12979 = ssd_fai_12977.xy;
	float2 final_axis_importance_12981 = ssd_fai_12977.zw;
	float2 _12983 = float2(8.33333358e-02, 8.33333358e-02) * subpixel_support_diameter_12979;
	float2 xy_step_12984 = _12983;
	float2 _12986 = float2(-5.50000000e+00, -5.50000000e+00) * xy_step_12984;
	float2 xy_start_offset_12987 = _12986;
	float2 _12989 = float2(3.00000000e+00, 0.00000000e+00) * xy_step_12984;
	float2 _12990 = xy_start_offset_12987 + _12989;
	float2 xy_offset0_12991 = _12990;
	float2 _12993 = float2(9.00000000e+00, 1.00000000e+00) * xy_step_12984;
	float2 _12994 = xy_start_offset_12987 + _12993;
	float2 xy_offset1_12995 = _12994;
	float2 _12997 = float2(6.00000000e+00, 2.00000000e+00) * xy_step_12984;
	float2 _12998 = xy_start_offset_12987 + _12997;
	float2 xy_offset2_12999 = _12998;
	float2 _13001 = float2(1.00000000e+00, 3.00000000e+00) * xy_step_12984;
	float2 _13002 = xy_start_offset_12987 + _13001;
	float2 xy_offset3_13003 = _13002;
	float2 _13005 = float2(1.10000000e+01, 4.00000000e+00) * xy_step_12984;
	float2 _13006 = xy_start_offset_12987 + _13005;
	float2 xy_offset4 = _13006;
	float2 _13009 = float2(4.00000000e+00, 5.00000000e+00) * xy_step_12984;
	float2 _13010 = xy_start_offset_12987 + _13009;
	float2 xy_offset5 = _13010;
	float2 _13012;
	float2 _13013;
	_13012 = xy_offset0_12991;
	_13013 = final_axis_importance_12981;
	float3 _13014 = F__eval_unorm_rgb_weights(_13012, _13013);
	float3 w0_13015 = _13014;
	float2 _13016;
	float2 _13017;
	_13016 = xy_offset1_12995;
	_13017 = final_axis_importance_12981;
	float3 _13018 = F__eval_unorm_rgb_weights(_13016, _13017);
	float3 w1_13019 = _13018;
	float2 _13020;
	float2 _13021;
	_13020 = xy_offset2_12999;
	_13021 = final_axis_importance_12981;
	float3 _13022 = F__eval_unorm_rgb_weights(_13020, _13021);
	float3 w2_13023 = _13022;
	float2 _13024;
	float2 _13025;
	_13024 = xy_offset3_13003;
	_13025 = final_axis_importance_12981;
	float3 _13026 = F__eval_unorm_rgb_weights(_13024, _13025);
	float3 w3_13027 = _13026;
	float2 _13028;
	float2 _13029;
	_13028 = xy_offset4;
	_13029 = final_axis_importance_12981;
	float3 _13030 = F__eval_unorm_rgb_weights(_13028, _13029);
	float3 w4_13031 = _13030;
	float2 _13032;
	float2 _13033;
	_13032 = xy_offset5;
	_13033 = final_axis_importance_12981;
	float3 _13034 = F__eval_unorm_rgb_weights(_13032, _13033);
	float3 w5_13035 = _13034;
	float3 w6_13037 = w5_13035.zyx;
	float3 w7_13039 = w4_13031.zyx;
	float3 w8_13041 = w3_13027.zyx;
	float3 w9_13043 = w2_13023.zyx;
	float3 w10_13045 = w1_13019.zyx;
	float3 w11_13047 = w0_13015.zyx;
	float3 _13048 = w0_13015 + w1_13019;
	float3 _13049 = _13048 + w2_13023;
	float3 _13050 = _13049 + w3_13027;
	float3 _13051 = _13050 + w4_13031;
	float3 _13052 = _13051 + w5_13035;
	float3 half_sum_13053 = _13052;
	float3 _13055 = half_sum_13053 + half_sum_13053.zyx;
	float3 w_sum_13056 = _13055;
	float3 _13058 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13056;
	float3 w_sum_inv_13059 = _13058;
	float2x2 _13061 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13062 = _13061;
	float _13063;
	_13063 = frame;
	float2 _13064 = F__get_frame_sign(_13063);
	float2 frame_sign_13065 = _13064;
	float2 _13066 = xy_offset0_12991 * frame_sign_13065;
	float2 _13067 = mul(true_pixel_to_tex_uv_13062, _13066);
	float2 uv_offset0_13068 = _13067;
	float2 _13069 = xy_offset1_12995 * frame_sign_13065;
	float2 _13070 = mul(true_pixel_to_tex_uv_13062, _13069);
	float2 uv_offset1_13071 = _13070;
	float2 _13072 = xy_offset2_12999 * frame_sign_13065;
	float2 _13073 = mul(true_pixel_to_tex_uv_13062, _13072);
	float2 uv_offset2_13074 = _13073;
	float2 _13075 = xy_offset3_13003 * frame_sign_13065;
	float2 _13076 = mul(true_pixel_to_tex_uv_13062, _13075);
	float2 uv_offset3_13077 = _13076;
	float2 _13078 = xy_offset4 * frame_sign_13065;
	float2 _13079 = mul(true_pixel_to_tex_uv_13062, _13078);
	float2 uv_offset4 = _13079;
	float2 _13081 = xy_offset5 * frame_sign_13065;
	float2 _13082 = mul(true_pixel_to_tex_uv_13062, _13081);
	float2 uv_offset5 = _13082;
	float2 _13084 = tex_uv + uv_offset0_13068;
	float2 _13085;
	float _13086;
	_13085 = _13084;
	_13086 = input_gamma;
	float4 _13087 = F__tex2Daa_tiled_linearize(tex, _13085, _13086);
	float3 sample0_13089 = _13087.xyz;
	float2 _13090 = tex_uv + uv_offset1_13071;
	float2 _13091;
	float _13092;
	_13091 = _13090;
	_13092 = input_gamma;
	float4 _13093 = F__tex2Daa_tiled_linearize(tex, _13091, _13092);
	float3 sample1_13095 = _13093.xyz;
	float2 _13096 = tex_uv + uv_offset2_13074;
	float2 _13097;
	float _13098;
	_13097 = _13096;
	_13098 = input_gamma;
	float4 _13099 = F__tex2Daa_tiled_linearize(tex, _13097, _13098);
	float3 sample2_13101 = _13099.xyz;
	float2 _13102 = tex_uv + uv_offset3_13077;
	float2 _13103;
	float _13104;
	_13103 = _13102;
	_13104 = input_gamma;
	float4 _13105 = F__tex2Daa_tiled_linearize(tex, _13103, _13104);
	float3 sample3_13107 = _13105.xyz;
	float2 _13108 = tex_uv + uv_offset4;
	float2 _13109;
	float _13110;
	_13109 = _13108;
	_13110 = input_gamma;
	float4 _13111 = F__tex2Daa_tiled_linearize(tex, _13109, _13110);
	float3 sample4_13113 = _13111.xyz;
	float2 _13114 = tex_uv + uv_offset5;
	float2 _13115;
	float _13116;
	_13115 = _13114;
	_13116 = input_gamma;
	float4 _13117 = F__tex2Daa_tiled_linearize(tex, _13115, _13116);
	float3 sample5_13119 = _13117.xyz;
	float2 _13120 = tex_uv - uv_offset5;
	float2 _13121;
	float _13122;
	_13121 = _13120;
	_13122 = input_gamma;
	float4 _13123 = F__tex2Daa_tiled_linearize(tex, _13121, _13122);
	float3 sample6_13125 = _13123.xyz;
	float2 _13126 = tex_uv - uv_offset4;
	float2 _13127;
	float _13128;
	_13127 = _13126;
	_13128 = input_gamma;
	float4 _13129 = F__tex2Daa_tiled_linearize(tex, _13127, _13128);
	float3 sample7_13131 = _13129.xyz;
	float2 _13132 = tex_uv - uv_offset3_13077;
	float2 _13133;
	float _13134;
	_13133 = _13132;
	_13134 = input_gamma;
	float4 _13135 = F__tex2Daa_tiled_linearize(tex, _13133, _13134);
	float3 sample8_13137 = _13135.xyz;
	float2 _13138 = tex_uv - uv_offset2_13074;
	float2 _13139;
	float _13140;
	_13139 = _13138;
	_13140 = input_gamma;
	float4 _13141 = F__tex2Daa_tiled_linearize(tex, _13139, _13140);
	float3 sample9 = _13141.xyz;
	float2 _13144 = tex_uv - uv_offset1_13071;
	float2 _13145;
	float _13146;
	_13145 = _13144;
	_13146 = input_gamma;
	float4 _13147 = F__tex2Daa_tiled_linearize(tex, _13145, _13146);
	float3 sample10 = _13147.xyz;
	float2 _13150 = tex_uv - uv_offset0_13068;
	float2 _13151;
	float _13152;
	_13151 = _13150;
	_13152 = input_gamma;
	float4 _13153 = F__tex2Daa_tiled_linearize(tex, _13151, _13152);
	float3 sample11 = _13153.xyz;
	float3 _13156 = w0_13015 * sample0_13089;
	float3 _13157 = w1_13019 * sample1_13095;
	float3 _13158 = _13156 + _13157;
	float3 _13159 = w2_13023 * sample2_13101;
	float3 _13160 = _13158 + _13159;
	float3 _13161 = w3_13027 * sample3_13107;
	float3 _13162 = _13160 + _13161;
	float3 _13163 = w4_13031 * sample4_13113;
	float3 _13164 = _13162 + _13163;
	float3 _13165 = w5_13035 * sample5_13119;
	float3 _13166 = _13164 + _13165;
	float3 _13167 = w6_13037 * sample6_13125;
	float3 _13168 = _13166 + _13167;
	float3 _13169 = w7_13039 * sample7_13131;
	float3 _13170 = _13168 + _13169;
	float3 _13171 = w8_13041 * sample8_13137;
	float3 _13172 = _13170 + _13171;
	float3 _13173 = w9_13043 * sample9;
	float3 _13174 = _13172 + _13173;
	float3 _13175 = w10_13045 * sample10;
	float3 _13176 = _13174 + _13175;
	float3 _13177 = w11_13047 * sample11;
	float3 _13178 = _13176 + _13177;
	float3 _13179 = w_sum_inv_13059 * _13178;
	return _13179;
}
float3 F__tex2Daa16x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _13188 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_13189 = _13188;
	float2 subpixel_support_diameter_13191 = ssd_fai_13189.xy;
	float2 final_axis_importance_13193 = ssd_fai_13189.zw;
	float2 _13195 = float2(6.25000000e-02, 6.25000000e-02) * subpixel_support_diameter_13191;
	float2 xy_step_13196 = _13195;
	float2 _13198 = float2(-7.50000000e+00, -7.50000000e+00) * xy_step_13196;
	float2 xy_start_offset_13199 = _13198;
	float2 _13201 = float2(2.00000000e+00, 0.00000000e+00) * xy_step_13196;
	float2 _13202 = xy_start_offset_13199 + _13201;
	float2 xy_offset0_13203 = _13202;
	float2 _13205 = float2(9.00000000e+00, 1.00000000e+00) * xy_step_13196;
	float2 _13206 = xy_start_offset_13199 + _13205;
	float2 xy_offset1_13207 = _13206;
	float2 _13209 = float2(1.20000000e+01, 2.00000000e+00) * xy_step_13196;
	float2 _13210 = xy_start_offset_13199 + _13209;
	float2 xy_offset2_13211 = _13210;
	float2 _13213 = float2(4.00000000e+00, 3.00000000e+00) * xy_step_13196;
	float2 _13214 = xy_start_offset_13199 + _13213;
	float2 xy_offset3_13215 = _13214;
	float2 _13217 = float2(8.00000000e+00, 4.00000000e+00) * xy_step_13196;
	float2 _13218 = xy_start_offset_13199 + _13217;
	float2 xy_offset4_13219 = _13218;
	float2 _13221 = float2(1.40000000e+01, 5.00000000e+00) * xy_step_13196;
	float2 _13222 = xy_start_offset_13199 + _13221;
	float2 xy_offset5_13223 = _13222;
	float2 _13225 = float2(0.00000000e+00, 6.00000000e+00) * xy_step_13196;
	float2 _13226 = xy_start_offset_13199 + _13225;
	float2 xy_offset6 = _13226;
	float2 _13229 = float2(1.00000000e+01, 7.00000000e+00) * xy_step_13196;
	float2 _13230 = xy_start_offset_13199 + _13229;
	float2 xy_offset7 = _13230;
	float2 _13232;
	float2 _13233;
	_13232 = xy_offset0_13203;
	_13233 = final_axis_importance_13193;
	float3 _13234 = F__eval_unorm_rgb_weights(_13232, _13233);
	float3 w0_13235 = _13234;
	float2 _13236;
	float2 _13237;
	_13236 = xy_offset1_13207;
	_13237 = final_axis_importance_13193;
	float3 _13238 = F__eval_unorm_rgb_weights(_13236, _13237);
	float3 w1_13239 = _13238;
	float2 _13240;
	float2 _13241;
	_13240 = xy_offset2_13211;
	_13241 = final_axis_importance_13193;
	float3 _13242 = F__eval_unorm_rgb_weights(_13240, _13241);
	float3 w2_13243 = _13242;
	float2 _13244;
	float2 _13245;
	_13244 = xy_offset3_13215;
	_13245 = final_axis_importance_13193;
	float3 _13246 = F__eval_unorm_rgb_weights(_13244, _13245);
	float3 w3_13247 = _13246;
	float2 _13248;
	float2 _13249;
	_13248 = xy_offset4_13219;
	_13249 = final_axis_importance_13193;
	float3 _13250 = F__eval_unorm_rgb_weights(_13248, _13249);
	float3 w4_13251 = _13250;
	float2 _13252;
	float2 _13253;
	_13252 = xy_offset5_13223;
	_13253 = final_axis_importance_13193;
	float3 _13254 = F__eval_unorm_rgb_weights(_13252, _13253);
	float3 w5_13255 = _13254;
	float2 _13256;
	float2 _13257;
	_13256 = xy_offset6;
	_13257 = final_axis_importance_13193;
	float3 _13258 = F__eval_unorm_rgb_weights(_13256, _13257);
	float3 w6_13259 = _13258;
	float2 _13260;
	float2 _13261;
	_13260 = xy_offset7;
	_13261 = final_axis_importance_13193;
	float3 _13262 = F__eval_unorm_rgb_weights(_13260, _13261);
	float3 w7_13263 = _13262;
	float3 w8_13265 = w7_13263.zyx;
	float3 w9_13267 = w6_13259.zyx;
	float3 w10_13269 = w5_13255.zyx;
	float3 w11_13271 = w4_13251.zyx;
	float3 w12_13273 = w3_13247.zyx;
	float3 w13_13275 = w2_13243.zyx;
	float3 w14_13277 = w1_13239.zyx;
	float3 w15_13279 = w0_13235.zyx;
	float3 _13280 = w0_13235 + w1_13239;
	float3 _13281 = _13280 + w2_13243;
	float3 _13282 = _13281 + w3_13247;
	float3 _13283 = _13282 + w4_13251;
	float3 _13284 = _13283 + w5_13255;
	float3 _13285 = _13284 + w6_13259;
	float3 _13286 = _13285 + w7_13263;
	float3 half_sum_13287 = _13286;
	float3 _13289 = half_sum_13287 + half_sum_13287.zyx;
	float3 w_sum_13290 = _13289;
	float3 _13292 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13290;
	float3 w_sum_inv_13293 = _13292;
	float2x2 _13295 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13296 = _13295;
	float _13297;
	_13297 = frame;
	float2 _13298 = F__get_frame_sign(_13297);
	float2 frame_sign_13299 = _13298;
	float2 _13300 = xy_offset0_13203 * frame_sign_13299;
	float2 _13301 = mul(true_pixel_to_tex_uv_13296, _13300);
	float2 uv_offset0_13302 = _13301;
	float2 _13303 = xy_offset1_13207 * frame_sign_13299;
	float2 _13304 = mul(true_pixel_to_tex_uv_13296, _13303);
	float2 uv_offset1_13305 = _13304;
	float2 _13306 = xy_offset2_13211 * frame_sign_13299;
	float2 _13307 = mul(true_pixel_to_tex_uv_13296, _13306);
	float2 uv_offset2_13308 = _13307;
	float2 _13309 = xy_offset3_13215 * frame_sign_13299;
	float2 _13310 = mul(true_pixel_to_tex_uv_13296, _13309);
	float2 uv_offset3_13311 = _13310;
	float2 _13312 = xy_offset4_13219 * frame_sign_13299;
	float2 _13313 = mul(true_pixel_to_tex_uv_13296, _13312);
	float2 uv_offset4_13314 = _13313;
	float2 _13315 = xy_offset5_13223 * frame_sign_13299;
	float2 _13316 = mul(true_pixel_to_tex_uv_13296, _13315);
	float2 uv_offset5_13317 = _13316;
	float2 _13318 = xy_offset6 * frame_sign_13299;
	float2 _13319 = mul(true_pixel_to_tex_uv_13296, _13318);
	float2 uv_offset6 = _13319;
	float2 _13321 = xy_offset7 * frame_sign_13299;
	float2 _13322 = mul(true_pixel_to_tex_uv_13296, _13321);
	float2 uv_offset7 = _13322;
	float2 _13324 = tex_uv + uv_offset0_13302;
	float2 _13325;
	float _13326;
	_13325 = _13324;
	_13326 = input_gamma;
	float4 _13327 = F__tex2Daa_tiled_linearize(tex, _13325, _13326);
	float3 sample0_13329 = _13327.xyz;
	float2 _13330 = tex_uv + uv_offset1_13305;
	float2 _13331;
	float _13332;
	_13331 = _13330;
	_13332 = input_gamma;
	float4 _13333 = F__tex2Daa_tiled_linearize(tex, _13331, _13332);
	float3 sample1_13335 = _13333.xyz;
	float2 _13336 = tex_uv + uv_offset2_13308;
	float2 _13337;
	float _13338;
	_13337 = _13336;
	_13338 = input_gamma;
	float4 _13339 = F__tex2Daa_tiled_linearize(tex, _13337, _13338);
	float3 sample2_13341 = _13339.xyz;
	float2 _13342 = tex_uv + uv_offset3_13311;
	float2 _13343;
	float _13344;
	_13343 = _13342;
	_13344 = input_gamma;
	float4 _13345 = F__tex2Daa_tiled_linearize(tex, _13343, _13344);
	float3 sample3_13347 = _13345.xyz;
	float2 _13348 = tex_uv + uv_offset4_13314;
	float2 _13349;
	float _13350;
	_13349 = _13348;
	_13350 = input_gamma;
	float4 _13351 = F__tex2Daa_tiled_linearize(tex, _13349, _13350);
	float3 sample4_13353 = _13351.xyz;
	float2 _13354 = tex_uv + uv_offset5_13317;
	float2 _13355;
	float _13356;
	_13355 = _13354;
	_13356 = input_gamma;
	float4 _13357 = F__tex2Daa_tiled_linearize(tex, _13355, _13356);
	float3 sample5_13359 = _13357.xyz;
	float2 _13360 = tex_uv + uv_offset6;
	float2 _13361;
	float _13362;
	_13361 = _13360;
	_13362 = input_gamma;
	float4 _13363 = F__tex2Daa_tiled_linearize(tex, _13361, _13362);
	float3 sample6_13365 = _13363.xyz;
	float2 _13366 = tex_uv + uv_offset7;
	float2 _13367;
	float _13368;
	_13367 = _13366;
	_13368 = input_gamma;
	float4 _13369 = F__tex2Daa_tiled_linearize(tex, _13367, _13368);
	float3 sample7_13371 = _13369.xyz;
	float2 _13372 = tex_uv - uv_offset7;
	float2 _13373;
	float _13374;
	_13373 = _13372;
	_13374 = input_gamma;
	float4 _13375 = F__tex2Daa_tiled_linearize(tex, _13373, _13374);
	float3 sample8_13377 = _13375.xyz;
	float2 _13378 = tex_uv - uv_offset6;
	float2 _13379;
	float _13380;
	_13379 = _13378;
	_13380 = input_gamma;
	float4 _13381 = F__tex2Daa_tiled_linearize(tex, _13379, _13380);
	float3 sample9_13383 = _13381.xyz;
	float2 _13384 = tex_uv - uv_offset5_13317;
	float2 _13385;
	float _13386;
	_13385 = _13384;
	_13386 = input_gamma;
	float4 _13387 = F__tex2Daa_tiled_linearize(tex, _13385, _13386);
	float3 sample10_13389 = _13387.xyz;
	float2 _13390 = tex_uv - uv_offset4_13314;
	float2 _13391;
	float _13392;
	_13391 = _13390;
	_13392 = input_gamma;
	float4 _13393 = F__tex2Daa_tiled_linearize(tex, _13391, _13392);
	float3 sample11_13395 = _13393.xyz;
	float2 _13396 = tex_uv - uv_offset3_13311;
	float2 _13397;
	float _13398;
	_13397 = _13396;
	_13398 = input_gamma;
	float4 _13399 = F__tex2Daa_tiled_linearize(tex, _13397, _13398);
	float3 sample12 = _13399.xyz;
	float2 _13402 = tex_uv - uv_offset2_13308;
	float2 _13403;
	float _13404;
	_13403 = _13402;
	_13404 = input_gamma;
	float4 _13405 = F__tex2Daa_tiled_linearize(tex, _13403, _13404);
	float3 sample13 = _13405.xyz;
	float2 _13408 = tex_uv - uv_offset1_13305;
	float2 _13409;
	float _13410;
	_13409 = _13408;
	_13410 = input_gamma;
	float4 _13411 = F__tex2Daa_tiled_linearize(tex, _13409, _13410);
	float3 sample14 = _13411.xyz;
	float2 _13414 = tex_uv - uv_offset0_13302;
	float2 _13415;
	float _13416;
	_13415 = _13414;
	_13416 = input_gamma;
	float4 _13417 = F__tex2Daa_tiled_linearize(tex, _13415, _13416);
	float3 sample15 = _13417.xyz;
	float3 _13420 = w0_13235 * sample0_13329;
	float3 _13421 = w1_13239 * sample1_13335;
	float3 _13422 = _13420 + _13421;
	float3 _13423 = w2_13243 * sample2_13341;
	float3 _13424 = _13422 + _13423;
	float3 _13425 = w3_13247 * sample3_13347;
	float3 _13426 = _13424 + _13425;
	float3 _13427 = w4_13251 * sample4_13353;
	float3 _13428 = _13426 + _13427;
	float3 _13429 = w5_13255 * sample5_13359;
	float3 _13430 = _13428 + _13429;
	float3 _13431 = w6_13259 * sample6_13365;
	float3 _13432 = _13430 + _13431;
	float3 _13433 = w7_13263 * sample7_13371;
	float3 _13434 = _13432 + _13433;
	float3 _13435 = w8_13265 * sample8_13377;
	float3 _13436 = _13434 + _13435;
	float3 _13437 = w9_13267 * sample9_13383;
	float3 _13438 = _13436 + _13437;
	float3 _13439 = w10_13269 * sample10_13389;
	float3 _13440 = _13438 + _13439;
	float3 _13441 = w11_13271 * sample11_13395;
	float3 _13442 = _13440 + _13441;
	float3 _13443 = w12_13273 * sample12;
	float3 _13444 = _13442 + _13443;
	float3 _13445 = w13_13275 * sample13;
	float3 _13446 = _13444 + _13445;
	float3 _13447 = w14_13277 * sample14;
	float3 _13448 = _13446 + _13447;
	float3 _13449 = w15_13279 * sample15;
	float3 _13450 = _13448 + _13449;
	float3 _13451 = w_sum_inv_13293 * _13450;
	return _13451;
}
float3 F__tex2Daa20x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _13460 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_13461 = _13460;
	float2 subpixel_support_diameter_13463 = ssd_fai_13461.xy;
	float2 final_axis_importance_13465 = ssd_fai_13461.zw;
	float2 _13467 = float2(5.00000007e-02, 5.00000007e-02) * subpixel_support_diameter_13463;
	float2 xy_step_13468 = _13467;
	float2 _13470 = float2(-9.50000000e+00, -9.50000000e+00) * xy_step_13468;
	float2 xy_start_offset_13471 = _13470;
	float2 _13473 = float2(7.00000000e+00, 0.00000000e+00) * xy_step_13468;
	float2 _13474 = xy_start_offset_13471 + _13473;
	float2 xy_offset0_13475 = _13474;
	float2 _13477 = float2(1.60000000e+01, 1.00000000e+00) * xy_step_13468;
	float2 _13478 = xy_start_offset_13471 + _13477;
	float2 xy_offset1_13479 = _13478;
	float2 _13481 = float2(1.10000000e+01, 2.00000000e+00) * xy_step_13468;
	float2 _13482 = xy_start_offset_13471 + _13481;
	float2 xy_offset2_13483 = _13482;
	float2 _13485 = float2(1.00000000e+00, 3.00000000e+00) * xy_step_13468;
	float2 _13486 = xy_start_offset_13471 + _13485;
	float2 xy_offset3_13487 = _13486;
	float2 _13489 = float2(5.00000000e+00, 4.00000000e+00) * xy_step_13468;
	float2 _13490 = xy_start_offset_13471 + _13489;
	float2 xy_offset4_13491 = _13490;
	float2 _13493 = float2(1.50000000e+01, 5.00000000e+00) * xy_step_13468;
	float2 _13494 = xy_start_offset_13471 + _13493;
	float2 xy_offset5_13495 = _13494;
	float2 _13497 = float2(1.00000000e+01, 6.00000000e+00) * xy_step_13468;
	float2 _13498 = xy_start_offset_13471 + _13497;
	float2 xy_offset6_13499 = _13498;
	float2 _13501 = float2(1.90000000e+01, 7.00000000e+00) * xy_step_13468;
	float2 _13502 = xy_start_offset_13471 + _13501;
	float2 xy_offset7_13503 = _13502;
	float2 _13505 = float2(2.00000000e+00, 8.00000000e+00) * xy_step_13468;
	float2 _13506 = xy_start_offset_13471 + _13505;
	float2 xy_offset8 = _13506;
	float2 _13509 = float2(6.00000000e+00, 9.00000000e+00) * xy_step_13468;
	float2 _13510 = xy_start_offset_13471 + _13509;
	float2 xy_offset9 = _13510;
	float2 _13512;
	float2 _13513;
	_13512 = xy_offset0_13475;
	_13513 = final_axis_importance_13465;
	float3 _13514 = F__eval_unorm_rgb_weights(_13512, _13513);
	float3 w0_13515 = _13514;
	float2 _13516;
	float2 _13517;
	_13516 = xy_offset1_13479;
	_13517 = final_axis_importance_13465;
	float3 _13518 = F__eval_unorm_rgb_weights(_13516, _13517);
	float3 w1_13519 = _13518;
	float2 _13520;
	float2 _13521;
	_13520 = xy_offset2_13483;
	_13521 = final_axis_importance_13465;
	float3 _13522 = F__eval_unorm_rgb_weights(_13520, _13521);
	float3 w2_13523 = _13522;
	float2 _13524;
	float2 _13525;
	_13524 = xy_offset3_13487;
	_13525 = final_axis_importance_13465;
	float3 _13526 = F__eval_unorm_rgb_weights(_13524, _13525);
	float3 w3_13527 = _13526;
	float2 _13528;
	float2 _13529;
	_13528 = xy_offset4_13491;
	_13529 = final_axis_importance_13465;
	float3 _13530 = F__eval_unorm_rgb_weights(_13528, _13529);
	float3 w4_13531 = _13530;
	float2 _13532;
	float2 _13533;
	_13532 = xy_offset5_13495;
	_13533 = final_axis_importance_13465;
	float3 _13534 = F__eval_unorm_rgb_weights(_13532, _13533);
	float3 w5_13535 = _13534;
	float2 _13536;
	float2 _13537;
	_13536 = xy_offset6_13499;
	_13537 = final_axis_importance_13465;
	float3 _13538 = F__eval_unorm_rgb_weights(_13536, _13537);
	float3 w6_13539 = _13538;
	float2 _13540;
	float2 _13541;
	_13540 = xy_offset7_13503;
	_13541 = final_axis_importance_13465;
	float3 _13542 = F__eval_unorm_rgb_weights(_13540, _13541);
	float3 w7_13543 = _13542;
	float2 _13544;
	float2 _13545;
	_13544 = xy_offset8;
	_13545 = final_axis_importance_13465;
	float3 _13546 = F__eval_unorm_rgb_weights(_13544, _13545);
	float3 w8_13547 = _13546;
	float2 _13548;
	float2 _13549;
	_13548 = xy_offset9;
	_13549 = final_axis_importance_13465;
	float3 _13550 = F__eval_unorm_rgb_weights(_13548, _13549);
	float3 w9_13551 = _13550;
	float3 w10_13553 = w9_13551.zyx;
	float3 w11_13555 = w8_13547.zyx;
	float3 w12_13557 = w7_13543.zyx;
	float3 w13_13559 = w6_13539.zyx;
	float3 w14_13561 = w5_13535.zyx;
	float3 w15_13563 = w4_13531.zyx;
	float3 w16_13565 = w3_13527.zyx;
	float3 w17_13567 = w2_13523.zyx;
	float3 w18_13569 = w1_13519.zyx;
	float3 w19_13571 = w0_13515.zyx;
	float3 _13572 = w0_13515 + w1_13519;
	float3 _13573 = _13572 + w2_13523;
	float3 _13574 = _13573 + w3_13527;
	float3 _13575 = _13574 + w4_13531;
	float3 _13576 = _13575 + w5_13535;
	float3 _13577 = _13576 + w6_13539;
	float3 _13578 = _13577 + w7_13543;
	float3 _13579 = _13578 + w8_13547;
	float3 _13580 = _13579 + w9_13551;
	float3 half_sum_13581 = _13580;
	float3 _13583 = half_sum_13581 + half_sum_13581.zyx;
	float3 w_sum_13584 = _13583;
	float3 _13586 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13584;
	float3 w_sum_inv_13587 = _13586;
	float2x2 _13589 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13590 = _13589;
	float _13591;
	_13591 = frame;
	float2 _13592 = F__get_frame_sign(_13591);
	float2 frame_sign_13593 = _13592;
	float2 _13594 = xy_offset0_13475 * frame_sign_13593;
	float2 _13595 = mul(true_pixel_to_tex_uv_13590, _13594);
	float2 uv_offset0_13596 = _13595;
	float2 _13597 = xy_offset1_13479 * frame_sign_13593;
	float2 _13598 = mul(true_pixel_to_tex_uv_13590, _13597);
	float2 uv_offset1_13599 = _13598;
	float2 _13600 = xy_offset2_13483 * frame_sign_13593;
	float2 _13601 = mul(true_pixel_to_tex_uv_13590, _13600);
	float2 uv_offset2_13602 = _13601;
	float2 _13603 = xy_offset3_13487 * frame_sign_13593;
	float2 _13604 = mul(true_pixel_to_tex_uv_13590, _13603);
	float2 uv_offset3_13605 = _13604;
	float2 _13606 = xy_offset4_13491 * frame_sign_13593;
	float2 _13607 = mul(true_pixel_to_tex_uv_13590, _13606);
	float2 uv_offset4_13608 = _13607;
	float2 _13609 = xy_offset5_13495 * frame_sign_13593;
	float2 _13610 = mul(true_pixel_to_tex_uv_13590, _13609);
	float2 uv_offset5_13611 = _13610;
	float2 _13612 = xy_offset6_13499 * frame_sign_13593;
	float2 _13613 = mul(true_pixel_to_tex_uv_13590, _13612);
	float2 uv_offset6_13614 = _13613;
	float2 _13615 = xy_offset7_13503 * frame_sign_13593;
	float2 _13616 = mul(true_pixel_to_tex_uv_13590, _13615);
	float2 uv_offset7_13617 = _13616;
	float2 _13618 = xy_offset8 * frame_sign_13593;
	float2 _13619 = mul(true_pixel_to_tex_uv_13590, _13618);
	float2 uv_offset8 = _13619;
	float2 _13621 = xy_offset9 * frame_sign_13593;
	float2 _13622 = mul(true_pixel_to_tex_uv_13590, _13621);
	float2 uv_offset9 = _13622;
	float2 _13624 = tex_uv + uv_offset0_13596;
	float2 _13625;
	float _13626;
	_13625 = _13624;
	_13626 = input_gamma;
	float4 _13627 = F__tex2Daa_tiled_linearize(tex, _13625, _13626);
	float3 sample0_13629 = _13627.xyz;
	float2 _13630 = tex_uv + uv_offset1_13599;
	float2 _13631;
	float _13632;
	_13631 = _13630;
	_13632 = input_gamma;
	float4 _13633 = F__tex2Daa_tiled_linearize(tex, _13631, _13632);
	float3 sample1_13635 = _13633.xyz;
	float2 _13636 = tex_uv + uv_offset2_13602;
	float2 _13637;
	float _13638;
	_13637 = _13636;
	_13638 = input_gamma;
	float4 _13639 = F__tex2Daa_tiled_linearize(tex, _13637, _13638);
	float3 sample2_13641 = _13639.xyz;
	float2 _13642 = tex_uv + uv_offset3_13605;
	float2 _13643;
	float _13644;
	_13643 = _13642;
	_13644 = input_gamma;
	float4 _13645 = F__tex2Daa_tiled_linearize(tex, _13643, _13644);
	float3 sample3_13647 = _13645.xyz;
	float2 _13648 = tex_uv + uv_offset4_13608;
	float2 _13649;
	float _13650;
	_13649 = _13648;
	_13650 = input_gamma;
	float4 _13651 = F__tex2Daa_tiled_linearize(tex, _13649, _13650);
	float3 sample4_13653 = _13651.xyz;
	float2 _13654 = tex_uv + uv_offset5_13611;
	float2 _13655;
	float _13656;
	_13655 = _13654;
	_13656 = input_gamma;
	float4 _13657 = F__tex2Daa_tiled_linearize(tex, _13655, _13656);
	float3 sample5_13659 = _13657.xyz;
	float2 _13660 = tex_uv + uv_offset6_13614;
	float2 _13661;
	float _13662;
	_13661 = _13660;
	_13662 = input_gamma;
	float4 _13663 = F__tex2Daa_tiled_linearize(tex, _13661, _13662);
	float3 sample6_13665 = _13663.xyz;
	float2 _13666 = tex_uv + uv_offset7_13617;
	float2 _13667;
	float _13668;
	_13667 = _13666;
	_13668 = input_gamma;
	float4 _13669 = F__tex2Daa_tiled_linearize(tex, _13667, _13668);
	float3 sample7_13671 = _13669.xyz;
	float2 _13672 = tex_uv + uv_offset8;
	float2 _13673;
	float _13674;
	_13673 = _13672;
	_13674 = input_gamma;
	float4 _13675 = F__tex2Daa_tiled_linearize(tex, _13673, _13674);
	float3 sample8_13677 = _13675.xyz;
	float2 _13678 = tex_uv + uv_offset9;
	float2 _13679;
	float _13680;
	_13679 = _13678;
	_13680 = input_gamma;
	float4 _13681 = F__tex2Daa_tiled_linearize(tex, _13679, _13680);
	float3 sample9_13683 = _13681.xyz;
	float2 _13684 = tex_uv - uv_offset9;
	float2 _13685;
	float _13686;
	_13685 = _13684;
	_13686 = input_gamma;
	float4 _13687 = F__tex2Daa_tiled_linearize(tex, _13685, _13686);
	float3 sample10_13689 = _13687.xyz;
	float2 _13690 = tex_uv - uv_offset8;
	float2 _13691;
	float _13692;
	_13691 = _13690;
	_13692 = input_gamma;
	float4 _13693 = F__tex2Daa_tiled_linearize(tex, _13691, _13692);
	float3 sample11_13695 = _13693.xyz;
	float2 _13696 = tex_uv - uv_offset7_13617;
	float2 _13697;
	float _13698;
	_13697 = _13696;
	_13698 = input_gamma;
	float4 _13699 = F__tex2Daa_tiled_linearize(tex, _13697, _13698);
	float3 sample12_13701 = _13699.xyz;
	float2 _13702 = tex_uv - uv_offset6_13614;
	float2 _13703;
	float _13704;
	_13703 = _13702;
	_13704 = input_gamma;
	float4 _13705 = F__tex2Daa_tiled_linearize(tex, _13703, _13704);
	float3 sample13_13707 = _13705.xyz;
	float2 _13708 = tex_uv - uv_offset5_13611;
	float2 _13709;
	float _13710;
	_13709 = _13708;
	_13710 = input_gamma;
	float4 _13711 = F__tex2Daa_tiled_linearize(tex, _13709, _13710);
	float3 sample14_13713 = _13711.xyz;
	float2 _13714 = tex_uv - uv_offset4_13608;
	float2 _13715;
	float _13716;
	_13715 = _13714;
	_13716 = input_gamma;
	float4 _13717 = F__tex2Daa_tiled_linearize(tex, _13715, _13716);
	float3 sample15_13719 = _13717.xyz;
	float2 _13720 = tex_uv - uv_offset3_13605;
	float2 _13721;
	float _13722;
	_13721 = _13720;
	_13722 = input_gamma;
	float4 _13723 = F__tex2Daa_tiled_linearize(tex, _13721, _13722);
	float3 sample16 = _13723.xyz;
	float2 _13726 = tex_uv - uv_offset2_13602;
	float2 _13727;
	float _13728;
	_13727 = _13726;
	_13728 = input_gamma;
	float4 _13729 = F__tex2Daa_tiled_linearize(tex, _13727, _13728);
	float3 sample17 = _13729.xyz;
	float2 _13732 = tex_uv - uv_offset1_13599;
	float2 _13733;
	float _13734;
	_13733 = _13732;
	_13734 = input_gamma;
	float4 _13735 = F__tex2Daa_tiled_linearize(tex, _13733, _13734);
	float3 sample18 = _13735.xyz;
	float2 _13738 = tex_uv - uv_offset0_13596;
	float2 _13739;
	float _13740;
	_13739 = _13738;
	_13740 = input_gamma;
	float4 _13741 = F__tex2Daa_tiled_linearize(tex, _13739, _13740);
	float3 sample19 = _13741.xyz;
	float3 _13744 = w0_13515 * sample0_13629;
	float3 _13745 = w1_13519 * sample1_13635;
	float3 _13746 = _13744 + _13745;
	float3 _13747 = w2_13523 * sample2_13641;
	float3 _13748 = _13746 + _13747;
	float3 _13749 = w3_13527 * sample3_13647;
	float3 _13750 = _13748 + _13749;
	float3 _13751 = w4_13531 * sample4_13653;
	float3 _13752 = _13750 + _13751;
	float3 _13753 = w5_13535 * sample5_13659;
	float3 _13754 = _13752 + _13753;
	float3 _13755 = w6_13539 * sample6_13665;
	float3 _13756 = _13754 + _13755;
	float3 _13757 = w7_13543 * sample7_13671;
	float3 _13758 = _13756 + _13757;
	float3 _13759 = w8_13547 * sample8_13677;
	float3 _13760 = _13758 + _13759;
	float3 _13761 = w9_13551 * sample9_13683;
	float3 _13762 = _13760 + _13761;
	float3 _13763 = w10_13553 * sample10_13689;
	float3 _13764 = _13762 + _13763;
	float3 _13765 = w11_13555 * sample11_13695;
	float3 _13766 = _13764 + _13765;
	float3 _13767 = w12_13557 * sample12_13701;
	float3 _13768 = _13766 + _13767;
	float3 _13769 = w13_13559 * sample13_13707;
	float3 _13770 = _13768 + _13769;
	float3 _13771 = w14_13561 * sample14_13713;
	float3 _13772 = _13770 + _13771;
	float3 _13773 = w15_13563 * sample15_13719;
	float3 _13774 = _13772 + _13773;
	float3 _13775 = w16_13565 * sample16;
	float3 _13776 = _13774 + _13775;
	float3 _13777 = w17_13567 * sample17;
	float3 _13778 = _13776 + _13777;
	float3 _13779 = w18_13569 * sample18;
	float3 _13780 = _13778 + _13779;
	float3 _13781 = w19_13571 * sample19;
	float3 _13782 = _13780 + _13781;
	float3 _13783 = w_sum_inv_13587 * _13782;
	return _13783;
}
float3 F__tex2Daa24x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _13792 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_13793 = _13792;
	float2 subpixel_support_diameter_13795 = ssd_fai_13793.xy;
	float2 final_axis_importance_13797 = ssd_fai_13793.zw;
	float2 _13799 = float2(4.16666679e-02, 4.16666679e-02) * subpixel_support_diameter_13795;
	float2 xy_step_13800 = _13799;
	float2 _13802 = float2(-1.15000000e+01, -1.15000000e+01) * xy_step_13800;
	float2 xy_start_offset_13803 = _13802;
	float2 _13805 = float2(6.00000000e+00, 0.00000000e+00) * xy_step_13800;
	float2 _13806 = xy_start_offset_13803 + _13805;
	float2 xy_offset0_13807 = _13806;
	float2 _13809 = float2(1.60000000e+01, 1.00000000e+00) * xy_step_13800;
	float2 _13810 = xy_start_offset_13803 + _13809;
	float2 xy_offset1_13811 = _13810;
	float2 _13813 = float2(1.00000000e+01, 2.00000000e+00) * xy_step_13800;
	float2 _13814 = xy_start_offset_13803 + _13813;
	float2 xy_offset2_13815 = _13814;
	float2 _13817 = float2(2.10000000e+01, 3.00000000e+00) * xy_step_13800;
	float2 _13818 = xy_start_offset_13803 + _13817;
	float2 xy_offset3_13819 = _13818;
	float2 _13821 = float2(5.00000000e+00, 4.00000000e+00) * xy_step_13800;
	float2 _13822 = xy_start_offset_13803 + _13821;
	float2 xy_offset4_13823 = _13822;
	float2 _13825 = float2(1.50000000e+01, 5.00000000e+00) * xy_step_13800;
	float2 _13826 = xy_start_offset_13803 + _13825;
	float2 xy_offset5_13827 = _13826;
	float2 _13829 = float2(1.00000000e+00, 6.00000000e+00) * xy_step_13800;
	float2 _13830 = xy_start_offset_13803 + _13829;
	float2 xy_offset6_13831 = _13830;
	float2 _13833 = float2(1.10000000e+01, 7.00000000e+00) * xy_step_13800;
	float2 _13834 = xy_start_offset_13803 + _13833;
	float2 xy_offset7_13835 = _13834;
	float2 _13837 = float2(1.90000000e+01, 8.00000000e+00) * xy_step_13800;
	float2 _13838 = xy_start_offset_13803 + _13837;
	float2 xy_offset8_13839 = _13838;
	float2 _13841 = float2(2.30000000e+01, 9.00000000e+00) * xy_step_13800;
	float2 _13842 = xy_start_offset_13803 + _13841;
	float2 xy_offset9_13843 = _13842;
	float2 _13845 = float2(3.00000000e+00, 1.00000000e+01) * xy_step_13800;
	float2 _13846 = xy_start_offset_13803 + _13845;
	float2 xy_offset10 = _13846;
	float2 _13849 = float2(1.40000000e+01, 1.10000000e+01) * xy_step_13800;
	float2 _13850 = xy_start_offset_13803 + _13849;
	float2 xy_offset11 = _13850;
	float2 _13852;
	float2 _13853;
	_13852 = xy_offset0_13807;
	_13853 = final_axis_importance_13797;
	float3 _13854 = F__eval_unorm_rgb_weights(_13852, _13853);
	float3 w0_13855 = _13854;
	float2 _13856;
	float2 _13857;
	_13856 = xy_offset1_13811;
	_13857 = final_axis_importance_13797;
	float3 _13858 = F__eval_unorm_rgb_weights(_13856, _13857);
	float3 w1_13859 = _13858;
	float2 _13860;
	float2 _13861;
	_13860 = xy_offset2_13815;
	_13861 = final_axis_importance_13797;
	float3 _13862 = F__eval_unorm_rgb_weights(_13860, _13861);
	float3 w2_13863 = _13862;
	float2 _13864;
	float2 _13865;
	_13864 = xy_offset3_13819;
	_13865 = final_axis_importance_13797;
	float3 _13866 = F__eval_unorm_rgb_weights(_13864, _13865);
	float3 w3_13867 = _13866;
	float2 _13868;
	float2 _13869;
	_13868 = xy_offset4_13823;
	_13869 = final_axis_importance_13797;
	float3 _13870 = F__eval_unorm_rgb_weights(_13868, _13869);
	float3 w4_13871 = _13870;
	float2 _13872;
	float2 _13873;
	_13872 = xy_offset5_13827;
	_13873 = final_axis_importance_13797;
	float3 _13874 = F__eval_unorm_rgb_weights(_13872, _13873);
	float3 w5_13875 = _13874;
	float2 _13876;
	float2 _13877;
	_13876 = xy_offset6_13831;
	_13877 = final_axis_importance_13797;
	float3 _13878 = F__eval_unorm_rgb_weights(_13876, _13877);
	float3 w6_13879 = _13878;
	float2 _13880;
	float2 _13881;
	_13880 = xy_offset7_13835;
	_13881 = final_axis_importance_13797;
	float3 _13882 = F__eval_unorm_rgb_weights(_13880, _13881);
	float3 w7_13883 = _13882;
	float2 _13884;
	float2 _13885;
	_13884 = xy_offset8_13839;
	_13885 = final_axis_importance_13797;
	float3 _13886 = F__eval_unorm_rgb_weights(_13884, _13885);
	float3 w8_13887 = _13886;
	float2 _13888;
	float2 _13889;
	_13888 = xy_offset9_13843;
	_13889 = final_axis_importance_13797;
	float3 _13890 = F__eval_unorm_rgb_weights(_13888, _13889);
	float3 w9_13891 = _13890;
	float2 _13892;
	float2 _13893;
	_13892 = xy_offset10;
	_13893 = final_axis_importance_13797;
	float3 _13894 = F__eval_unorm_rgb_weights(_13892, _13893);
	float3 w10_13895 = _13894;
	float2 _13896;
	float2 _13897;
	_13896 = xy_offset11;
	_13897 = final_axis_importance_13797;
	float3 _13898 = F__eval_unorm_rgb_weights(_13896, _13897);
	float3 w11_13899 = _13898;
	float3 w12_13901 = w11_13899.zyx;
	float3 w13_13903 = w10_13895.zyx;
	float3 w14_13905 = w9_13891.zyx;
	float3 w15_13907 = w8_13887.zyx;
	float3 w16_13909 = w7_13883.zyx;
	float3 w17_13911 = w6_13879.zyx;
	float3 w18_13913 = w5_13875.zyx;
	float3 w19_13915 = w4_13871.zyx;
	float3 w20_13917 = w3_13867.zyx;
	float3 w21_13919 = w2_13863.zyx;
	float3 w22 = w1_13859.zyx;
	float3 w23_13923 = w0_13855.zyx;
	float3 _13924 = w0_13855 + w1_13859;
	float3 _13925 = _13924 + w2_13863;
	float3 _13926 = _13925 + w3_13867;
	float3 _13927 = _13926 + w4_13871;
	float3 _13928 = _13927 + w5_13875;
	float3 _13929 = _13928 + w6_13879;
	float3 _13930 = _13929 + w7_13883;
	float3 _13931 = _13930 + w8_13887;
	float3 _13932 = _13931 + w9_13891;
	float3 _13933 = _13932 + w10_13895;
	float3 _13934 = _13933 + w11_13899;
	float3 half_sum_13935 = _13934;
	float3 _13937 = half_sum_13935 + half_sum_13935.zyx;
	float3 w_sum_13938 = _13937;
	float3 _13940 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13938;
	float3 w_sum_inv_13941 = _13940;
	float2x2 _13943 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13944 = _13943;
	float _13945;
	_13945 = frame;
	float2 _13946 = F__get_frame_sign(_13945);
	float2 frame_sign_13947 = _13946;
	float2 _13948 = xy_offset0_13807 * frame_sign_13947;
	float2 _13949 = mul(true_pixel_to_tex_uv_13944, _13948);
	float2 uv_offset0_13950 = _13949;
	float2 _13951 = xy_offset1_13811 * frame_sign_13947;
	float2 _13952 = mul(true_pixel_to_tex_uv_13944, _13951);
	float2 uv_offset1_13953 = _13952;
	float2 _13954 = xy_offset2_13815 * frame_sign_13947;
	float2 _13955 = mul(true_pixel_to_tex_uv_13944, _13954);
	float2 uv_offset2_13956 = _13955;
	float2 _13957 = xy_offset3_13819 * frame_sign_13947;
	float2 _13958 = mul(true_pixel_to_tex_uv_13944, _13957);
	float2 uv_offset3_13959 = _13958;
	float2 _13960 = xy_offset4_13823 * frame_sign_13947;
	float2 _13961 = mul(true_pixel_to_tex_uv_13944, _13960);
	float2 uv_offset4_13962 = _13961;
	float2 _13963 = xy_offset5_13827 * frame_sign_13947;
	float2 _13964 = mul(true_pixel_to_tex_uv_13944, _13963);
	float2 uv_offset5_13965 = _13964;
	float2 _13966 = xy_offset6_13831 * frame_sign_13947;
	float2 _13967 = mul(true_pixel_to_tex_uv_13944, _13966);
	float2 uv_offset6_13968 = _13967;
	float2 _13969 = xy_offset7_13835 * frame_sign_13947;
	float2 _13970 = mul(true_pixel_to_tex_uv_13944, _13969);
	float2 uv_offset7_13971 = _13970;
	float2 _13972 = xy_offset8_13839 * frame_sign_13947;
	float2 _13973 = mul(true_pixel_to_tex_uv_13944, _13972);
	float2 uv_offset8_13974 = _13973;
	float2 _13975 = xy_offset9_13843 * frame_sign_13947;
	float2 _13976 = mul(true_pixel_to_tex_uv_13944, _13975);
	float2 uv_offset9_13977 = _13976;
	float2 _13978 = xy_offset10 * frame_sign_13947;
	float2 _13979 = mul(true_pixel_to_tex_uv_13944, _13978);
	float2 uv_offset10 = _13979;
	float2 _13981 = xy_offset11 * frame_sign_13947;
	float2 _13982 = mul(true_pixel_to_tex_uv_13944, _13981);
	float2 uv_offset11 = _13982;
	float2 _13984 = tex_uv + uv_offset0_13950;
	float2 _13985;
	float _13986;
	_13985 = _13984;
	_13986 = input_gamma;
	float4 _13987 = F__tex2Daa_tiled_linearize(tex, _13985, _13986);
	float3 sample0_13989 = _13987.xyz;
	float2 _13990 = tex_uv + uv_offset1_13953;
	float2 _13991;
	float _13992;
	_13991 = _13990;
	_13992 = input_gamma;
	float4 _13993 = F__tex2Daa_tiled_linearize(tex, _13991, _13992);
	float3 sample1_13995 = _13993.xyz;
	float2 _13996 = tex_uv + uv_offset2_13956;
	float2 _13997;
	float _13998;
	_13997 = _13996;
	_13998 = input_gamma;
	float4 _13999 = F__tex2Daa_tiled_linearize(tex, _13997, _13998);
	float3 sample2_14001 = _13999.xyz;
	float2 _14002 = tex_uv + uv_offset3_13959;
	float2 _14003;
	float _14004;
	_14003 = _14002;
	_14004 = input_gamma;
	float4 _14005 = F__tex2Daa_tiled_linearize(tex, _14003, _14004);
	float3 sample3_14007 = _14005.xyz;
	float2 _14008 = tex_uv + uv_offset4_13962;
	float2 _14009;
	float _14010;
	_14009 = _14008;
	_14010 = input_gamma;
	float4 _14011 = F__tex2Daa_tiled_linearize(tex, _14009, _14010);
	float3 sample4_14013 = _14011.xyz;
	float2 _14014 = tex_uv + uv_offset5_13965;
	float2 _14015;
	float _14016;
	_14015 = _14014;
	_14016 = input_gamma;
	float4 _14017 = F__tex2Daa_tiled_linearize(tex, _14015, _14016);
	float3 sample5_14019 = _14017.xyz;
	float2 _14020 = tex_uv + uv_offset6_13968;
	float2 _14021;
	float _14022;
	_14021 = _14020;
	_14022 = input_gamma;
	float4 _14023 = F__tex2Daa_tiled_linearize(tex, _14021, _14022);
	float3 sample6_14025 = _14023.xyz;
	float2 _14026 = tex_uv + uv_offset7_13971;
	float2 _14027;
	float _14028;
	_14027 = _14026;
	_14028 = input_gamma;
	float4 _14029 = F__tex2Daa_tiled_linearize(tex, _14027, _14028);
	float3 sample7_14031 = _14029.xyz;
	float2 _14032 = tex_uv + uv_offset8_13974;
	float2 _14033;
	float _14034;
	_14033 = _14032;
	_14034 = input_gamma;
	float4 _14035 = F__tex2Daa_tiled_linearize(tex, _14033, _14034);
	float3 sample8_14037 = _14035.xyz;
	float2 _14038 = tex_uv + uv_offset9_13977;
	float2 _14039;
	float _14040;
	_14039 = _14038;
	_14040 = input_gamma;
	float4 _14041 = F__tex2Daa_tiled_linearize(tex, _14039, _14040);
	float3 sample9_14043 = _14041.xyz;
	float2 _14044 = tex_uv + uv_offset10;
	float2 _14045;
	float _14046;
	_14045 = _14044;
	_14046 = input_gamma;
	float4 _14047 = F__tex2Daa_tiled_linearize(tex, _14045, _14046);
	float3 sample10_14049 = _14047.xyz;
	float2 _14050 = tex_uv + uv_offset11;
	float2 _14051;
	float _14052;
	_14051 = _14050;
	_14052 = input_gamma;
	float4 _14053 = F__tex2Daa_tiled_linearize(tex, _14051, _14052);
	float3 sample11_14055 = _14053.xyz;
	float2 _14056 = tex_uv - uv_offset11;
	float2 _14057;
	float _14058;
	_14057 = _14056;
	_14058 = input_gamma;
	float4 _14059 = F__tex2Daa_tiled_linearize(tex, _14057, _14058);
	float3 sample12_14061 = _14059.xyz;
	float2 _14062 = tex_uv - uv_offset10;
	float2 _14063;
	float _14064;
	_14063 = _14062;
	_14064 = input_gamma;
	float4 _14065 = F__tex2Daa_tiled_linearize(tex, _14063, _14064);
	float3 sample13_14067 = _14065.xyz;
	float2 _14068 = tex_uv - uv_offset9_13977;
	float2 _14069;
	float _14070;
	_14069 = _14068;
	_14070 = input_gamma;
	float4 _14071 = F__tex2Daa_tiled_linearize(tex, _14069, _14070);
	float3 sample14_14073 = _14071.xyz;
	float2 _14074 = tex_uv - uv_offset8_13974;
	float2 _14075;
	float _14076;
	_14075 = _14074;
	_14076 = input_gamma;
	float4 _14077 = F__tex2Daa_tiled_linearize(tex, _14075, _14076);
	float3 sample15_14079 = _14077.xyz;
	float2 _14080 = tex_uv - uv_offset7_13971;
	float2 _14081;
	float _14082;
	_14081 = _14080;
	_14082 = input_gamma;
	float4 _14083 = F__tex2Daa_tiled_linearize(tex, _14081, _14082);
	float3 sample16_14085 = _14083.xyz;
	float2 _14086 = tex_uv - uv_offset6_13968;
	float2 _14087;
	float _14088;
	_14087 = _14086;
	_14088 = input_gamma;
	float4 _14089 = F__tex2Daa_tiled_linearize(tex, _14087, _14088);
	float3 sample17_14091 = _14089.xyz;
	float2 _14092 = tex_uv - uv_offset5_13965;
	float2 _14093;
	float _14094;
	_14093 = _14092;
	_14094 = input_gamma;
	float4 _14095 = F__tex2Daa_tiled_linearize(tex, _14093, _14094);
	float3 sample18_14097 = _14095.xyz;
	float2 _14098 = tex_uv - uv_offset4_13962;
	float2 _14099;
	float _14100;
	_14099 = _14098;
	_14100 = input_gamma;
	float4 _14101 = F__tex2Daa_tiled_linearize(tex, _14099, _14100);
	float3 sample19_14103 = _14101.xyz;
	float2 _14104 = tex_uv - uv_offset3_13959;
	float2 _14105;
	float _14106;
	_14105 = _14104;
	_14106 = input_gamma;
	float4 _14107 = F__tex2Daa_tiled_linearize(tex, _14105, _14106);
	float3 sample20 = _14107.xyz;
	float2 _14110 = tex_uv - uv_offset2_13956;
	float2 _14111;
	float _14112;
	_14111 = _14110;
	_14112 = input_gamma;
	float4 _14113 = F__tex2Daa_tiled_linearize(tex, _14111, _14112);
	float3 sample21 = _14113.xyz;
	float2 _14116 = tex_uv - uv_offset1_13953;
	float2 _14117;
	float _14118;
	_14117 = _14116;
	_14118 = input_gamma;
	float4 _14119 = F__tex2Daa_tiled_linearize(tex, _14117, _14118);
	float3 sample22 = _14119.xyz;
	float2 _14122 = tex_uv - uv_offset0_13950;
	float2 _14123;
	float _14124;
	_14123 = _14122;
	_14124 = input_gamma;
	float4 _14125 = F__tex2Daa_tiled_linearize(tex, _14123, _14124);
	float3 sample23 = _14125.xyz;
	float3 _14128 = w0_13855 * sample0_13989;
	float3 _14129 = w1_13859 * sample1_13995;
	float3 _14130 = _14128 + _14129;
	float3 _14131 = w2_13863 * sample2_14001;
	float3 _14132 = _14130 + _14131;
	float3 _14133 = w3_13867 * sample3_14007;
	float3 _14134 = _14132 + _14133;
	float3 _14135 = w4_13871 * sample4_14013;
	float3 _14136 = _14134 + _14135;
	float3 _14137 = w5_13875 * sample5_14019;
	float3 _14138 = _14136 + _14137;
	float3 _14139 = w6_13879 * sample6_14025;
	float3 _14140 = _14138 + _14139;
	float3 _14141 = w7_13883 * sample7_14031;
	float3 _14142 = _14140 + _14141;
	float3 _14143 = w8_13887 * sample8_14037;
	float3 _14144 = _14142 + _14143;
	float3 _14145 = w9_13891 * sample9_14043;
	float3 _14146 = _14144 + _14145;
	float3 _14147 = w10_13895 * sample10_14049;
	float3 _14148 = _14146 + _14147;
	float3 _14149 = w11_13899 * sample11_14055;
	float3 _14150 = _14148 + _14149;
	float3 _14151 = w12_13901 * sample12_14061;
	float3 _14152 = _14150 + _14151;
	float3 _14153 = w13_13903 * sample13_14067;
	float3 _14154 = _14152 + _14153;
	float3 _14155 = w14_13905 * sample14_14073;
	float3 _14156 = _14154 + _14155;
	float3 _14157 = w15_13907 * sample15_14079;
	float3 _14158 = _14156 + _14157;
	float3 _14159 = w16_13909 * sample16_14085;
	float3 _14160 = _14158 + _14159;
	float3 _14161 = w17_13911 * sample17_14091;
	float3 _14162 = _14160 + _14161;
	float3 _14163 = w18_13913 * sample18_14097;
	float3 _14164 = _14162 + _14163;
	float3 _14165 = w19_13915 * sample19_14103;
	float3 _14166 = _14164 + _14165;
	float3 _14167 = w20_13917 * sample20;
	float3 _14168 = _14166 + _14167;
	float3 _14169 = w21_13919 * sample21;
	float3 _14170 = _14168 + _14169;
	float3 _14171 = w22 * sample22;
	float3 _14172 = _14170 + _14171;
	float3 _14173 = w23_13923 * sample23;
	float3 _14174 = _14172 + _14173;
	float3 _14175 = w_sum_inv_13941 * _14174;
	return _14175;
}
float3 F__tex2Daa_debug_16x_regular(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _14184 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_14185 = _14184;
	float2 subpixel_support_diameter_14187 = ssd_fai_14185.xy;
	float2 final_axis_importance_14189 = ssd_fai_14185.zw;
	float2 _14191 = float2(2.50000000e-01, 2.50000000e-01) * subpixel_support_diameter_14187;
	float2 xy_step_14192 = _14191;
	float2 _14194 = float2(-1.50000000e+00, -1.50000000e+00) * xy_step_14192;
	float2 xy_start_offset_14195 = _14194;
	float2 _14197 = float2(0.00000000e+00, 0.00000000e+00) * xy_step_14192;
	float2 _14198 = xy_start_offset_14195 + _14197;
	float2 xy_offset0_14199 = _14198;
	float2 _14201 = float2(1.00000000e+00, 0.00000000e+00) * xy_step_14192;
	float2 _14202 = xy_start_offset_14195 + _14201;
	float2 xy_offset1_14203 = _14202;
	float2 _14205 = float2(2.00000000e+00, 0.00000000e+00) * xy_step_14192;
	float2 _14206 = xy_start_offset_14195 + _14205;
	float2 xy_offset2_14207 = _14206;
	float2 _14209 = float2(3.00000000e+00, 0.00000000e+00) * xy_step_14192;
	float2 _14210 = xy_start_offset_14195 + _14209;
	float2 xy_offset3_14211 = _14210;
	float2 _14213 = float2(0.00000000e+00, 1.00000000e+00) * xy_step_14192;
	float2 _14214 = xy_start_offset_14195 + _14213;
	float2 xy_offset4_14215 = _14214;
	float2 _14217 = float2(1.00000000e+00, 1.00000000e+00) * xy_step_14192;
	float2 _14218 = xy_start_offset_14195 + _14217;
	float2 xy_offset5_14219 = _14218;
	float2 _14221 = float2(2.00000000e+00, 1.00000000e+00) * xy_step_14192;
	float2 _14222 = xy_start_offset_14195 + _14221;
	float2 xy_offset6_14223 = _14222;
	float2 _14225 = float2(3.00000000e+00, 1.00000000e+00) * xy_step_14192;
	float2 _14226 = xy_start_offset_14195 + _14225;
	float2 xy_offset7_14227 = _14226;
	float2 _14228;
	float2 _14229;
	_14228 = xy_offset0_14199;
	_14229 = final_axis_importance_14189;
	float3 _14230 = F__eval_unorm_rgb_weights(_14228, _14229);
	float3 w0_14231 = _14230;
	float2 _14232;
	float2 _14233;
	_14232 = xy_offset1_14203;
	_14233 = final_axis_importance_14189;
	float3 _14234 = F__eval_unorm_rgb_weights(_14232, _14233);
	float3 w1_14235 = _14234;
	float2 _14236;
	float2 _14237;
	_14236 = xy_offset2_14207;
	_14237 = final_axis_importance_14189;
	float3 _14238 = F__eval_unorm_rgb_weights(_14236, _14237);
	float3 w2_14239 = _14238;
	float2 _14240;
	float2 _14241;
	_14240 = xy_offset3_14211;
	_14241 = final_axis_importance_14189;
	float3 _14242 = F__eval_unorm_rgb_weights(_14240, _14241);
	float3 w3_14243 = _14242;
	float2 _14244;
	float2 _14245;
	_14244 = xy_offset4_14215;
	_14245 = final_axis_importance_14189;
	float3 _14246 = F__eval_unorm_rgb_weights(_14244, _14245);
	float3 w4_14247 = _14246;
	float2 _14248;
	float2 _14249;
	_14248 = xy_offset5_14219;
	_14249 = final_axis_importance_14189;
	float3 _14250 = F__eval_unorm_rgb_weights(_14248, _14249);
	float3 w5_14251 = _14250;
	float2 _14252;
	float2 _14253;
	_14252 = xy_offset6_14223;
	_14253 = final_axis_importance_14189;
	float3 _14254 = F__eval_unorm_rgb_weights(_14252, _14253);
	float3 w6_14255 = _14254;
	float2 _14256;
	float2 _14257;
	_14256 = xy_offset7_14227;
	_14257 = final_axis_importance_14189;
	float3 _14258 = F__eval_unorm_rgb_weights(_14256, _14257);
	float3 w7_14259 = _14258;
	float3 w8_14261 = w7_14259.zyx;
	float3 w9_14263 = w6_14255.zyx;
	float3 w10_14265 = w5_14251.zyx;
	float3 w11_14267 = w4_14247.zyx;
	float3 w12_14269 = w3_14243.zyx;
	float3 w13_14271 = w2_14239.zyx;
	float3 w14_14273 = w1_14235.zyx;
	float3 w15_14275 = w0_14231.zyx;
	float3 _14276 = w0_14231 + w1_14235;
	float3 _14277 = _14276 + w2_14239;
	float3 _14278 = _14277 + w3_14243;
	float3 _14279 = _14278 + w4_14247;
	float3 _14280 = _14279 + w5_14251;
	float3 _14281 = _14280 + w6_14255;
	float3 _14282 = _14281 + w7_14259;
	float3 half_sum_14283 = _14282;
	float3 _14285 = half_sum_14283 + half_sum_14283.zyx;
	float3 w_sum_14286 = _14285;
	float3 _14288 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_14286;
	float3 w_sum_inv_14289 = _14288;
	float2x2 _14291 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_14292 = _14291;
	float2 _14295 = float2(xy_step_14192.x, 0.00000000e+00);
	float2 _14296 = mul(true_pixel_to_tex_uv_14292, _14295);
	float2 uv_step_x_14297 = _14296;
	float2 _14300 = float2(0.00000000e+00, xy_step_14192.y);
	float2 _14301 = mul(true_pixel_to_tex_uv_14292, _14300);
	float2 uv_step_y = _14301;
	float2 _14303 = uv_step_x_14297 + uv_step_y;
	float2 _14305 = float2(-1.50000000e+00, -1.50000000e+00) * _14303;
	float2 uv_offset0_14306 = _14305;
	float2 _14307 = tex_uv + uv_offset0_14306;
	float2 sample0_uv = _14307;
	float2 _14309 = sample0_uv + uv_step_y;
	float2 sample4_uv_14310 = _14309;
	float2 _14312 = uv_step_y * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14313 = sample0_uv + _14312;
	float2 sample8_uv = _14313;
	float2 _14316 = uv_step_y * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14317 = sample0_uv + _14316;
	float2 sample12_uv = _14317;
	float2 _14319;
	float _14320;
	_14319 = sample0_uv;
	_14320 = input_gamma;
	float4 _14321 = F__tex2Daa_tiled_linearize(tex, _14319, _14320);
	float3 sample0_14323 = _14321.xyz;
	float2 _14324 = sample0_uv + uv_step_x_14297;
	float2 _14325;
	float _14326;
	_14325 = _14324;
	_14326 = input_gamma;
	float4 _14327 = F__tex2Daa_tiled_linearize(tex, _14325, _14326);
	float3 sample1_14329 = _14327.xyz;
	float2 _14331 = uv_step_x_14297 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14332 = sample0_uv + _14331;
	float2 _14333;
	float _14334;
	_14333 = _14332;
	_14334 = input_gamma;
	float4 _14335 = F__tex2Daa_tiled_linearize(tex, _14333, _14334);
	float3 sample2_14337 = _14335.xyz;
	float2 _14339 = uv_step_x_14297 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14340 = sample0_uv + _14339;
	float2 _14341;
	float _14342;
	_14341 = _14340;
	_14342 = input_gamma;
	float4 _14343 = F__tex2Daa_tiled_linearize(tex, _14341, _14342);
	float3 sample3_14345 = _14343.xyz;
	float2 _14346;
	float _14347;
	_14346 = sample4_uv_14310;
	_14347 = input_gamma;
	float4 _14348 = F__tex2Daa_tiled_linearize(tex, _14346, _14347);
	float3 sample4_14350 = _14348.xyz;
	float2 _14351 = sample4_uv_14310 + uv_step_x_14297;
	float2 _14352;
	float _14353;
	_14352 = _14351;
	_14353 = input_gamma;
	float4 _14354 = F__tex2Daa_tiled_linearize(tex, _14352, _14353);
	float3 sample5_14356 = _14354.xyz;
	float2 _14358 = uv_step_x_14297 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14359 = sample4_uv_14310 + _14358;
	float2 _14360;
	float _14361;
	_14360 = _14359;
	_14361 = input_gamma;
	float4 _14362 = F__tex2Daa_tiled_linearize(tex, _14360, _14361);
	float3 sample6_14364 = _14362.xyz;
	float2 _14366 = uv_step_x_14297 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14367 = sample4_uv_14310 + _14366;
	float2 _14368;
	float _14369;
	_14368 = _14367;
	_14369 = input_gamma;
	float4 _14370 = F__tex2Daa_tiled_linearize(tex, _14368, _14369);
	float3 sample7_14372 = _14370.xyz;
	float2 _14373;
	float _14374;
	_14373 = sample8_uv;
	_14374 = input_gamma;
	float4 _14375 = F__tex2Daa_tiled_linearize(tex, _14373, _14374);
	float3 sample8_14377 = _14375.xyz;
	float2 _14378 = sample8_uv + uv_step_x_14297;
	float2 _14379;
	float _14380;
	_14379 = _14378;
	_14380 = input_gamma;
	float4 _14381 = F__tex2Daa_tiled_linearize(tex, _14379, _14380);
	float3 sample9_14383 = _14381.xyz;
	float2 _14385 = uv_step_x_14297 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14386 = sample8_uv + _14385;
	float2 _14387;
	float _14388;
	_14387 = _14386;
	_14388 = input_gamma;
	float4 _14389 = F__tex2Daa_tiled_linearize(tex, _14387, _14388);
	float3 sample10_14391 = _14389.xyz;
	float2 _14393 = uv_step_x_14297 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14394 = sample8_uv + _14393;
	float2 _14395;
	float _14396;
	_14395 = _14394;
	_14396 = input_gamma;
	float4 _14397 = F__tex2Daa_tiled_linearize(tex, _14395, _14396);
	float3 sample11_14399 = _14397.xyz;
	float2 _14400;
	float _14401;
	_14400 = sample12_uv;
	_14401 = input_gamma;
	float4 _14402 = F__tex2Daa_tiled_linearize(tex, _14400, _14401);
	float3 sample12_14404 = _14402.xyz;
	float2 _14405 = sample12_uv + uv_step_x_14297;
	float2 _14406;
	float _14407;
	_14406 = _14405;
	_14407 = input_gamma;
	float4 _14408 = F__tex2Daa_tiled_linearize(tex, _14406, _14407);
	float3 sample13_14410 = _14408.xyz;
	float2 _14412 = uv_step_x_14297 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14413 = sample12_uv + _14412;
	float2 _14414;
	float _14415;
	_14414 = _14413;
	_14415 = input_gamma;
	float4 _14416 = F__tex2Daa_tiled_linearize(tex, _14414, _14415);
	float3 sample14_14418 = _14416.xyz;
	float2 _14420 = uv_step_x_14297 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14421 = sample12_uv + _14420;
	float2 _14422;
	float _14423;
	_14422 = _14421;
	_14423 = input_gamma;
	float4 _14424 = F__tex2Daa_tiled_linearize(tex, _14422, _14423);
	float3 sample15_14426 = _14424.xyz;
	float3 _14427 = w0_14231 * sample0_14323;
	float3 _14428 = w1_14235 * sample1_14329;
	float3 _14429 = _14427 + _14428;
	float3 _14430 = w2_14239 * sample2_14337;
	float3 _14431 = _14429 + _14430;
	float3 _14432 = w3_14243 * sample3_14345;
	float3 _14433 = _14431 + _14432;
	float3 _14434 = w4_14247 * sample4_14350;
	float3 _14435 = _14433 + _14434;
	float3 _14436 = w5_14251 * sample5_14356;
	float3 _14437 = _14435 + _14436;
	float3 _14438 = w6_14255 * sample6_14364;
	float3 _14439 = _14437 + _14438;
	float3 _14440 = w7_14259 * sample7_14372;
	float3 _14441 = _14439 + _14440;
	float3 _14442 = w8_14261 * sample8_14377;
	float3 _14443 = _14441 + _14442;
	float3 _14444 = w9_14263 * sample9_14383;
	float3 _14445 = _14443 + _14444;
	float3 _14446 = w10_14265 * sample10_14391;
	float3 _14447 = _14445 + _14446;
	float3 _14448 = w11_14267 * sample11_14399;
	float3 _14449 = _14447 + _14448;
	float3 _14450 = w12_14269 * sample12_14404;
	float3 _14451 = _14449 + _14450;
	float3 _14452 = w13_14271 * sample13_14410;
	float3 _14453 = _14451 + _14452;
	float3 _14454 = w14_14273 * sample14_14418;
	float3 _14455 = _14453 + _14454;
	float3 _14456 = w15_14275 * sample15_14426;
	float3 _14457 = _14455 + _14456;
	float3 _14458 = w_sum_inv_14289 * _14457;
	return _14458;
}
float3 F__tex2Daa_debug_dynamic(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _14467 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_14468 = _14467;
	float2 subpixel_support_diameter_14470 = ssd_fai_14468.xy;
	float2 final_axis_importance_14472 = ssd_fai_14468.zw;
	float2 _14474 = subpixel_support_diameter_14470 / float2(8.00000000e+00, 8.00000000e+00);
	float2 filter_space_offset_step = _14474;
	float2 _14477 = float2(-3.50000000e+00, -3.50000000e+00) * filter_space_offset_step;
	float2 sample0_filter_space_offset = _14477;
	float3 weights_14480[64] = _14479;
	float3 weight_sum_14482 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	int i_14484 = 0;
	while (i_14484 < 8)
	{
		{
			int j = 0;
			while (j < 8)
			{
				{
					float2 _14507 = float2(((float)j), ((float)i_14484));
					float2 _14508 = _14507 * filter_space_offset_step;
					float2 _14509 = sample0_filter_space_offset + _14508;
					float2 offset_14510 = _14509;
					float2 _14511;
					float2 _14512;
					_14511 = offset_14510;
					_14512 = final_axis_importance_14472;
					float3 _14513 = F__eval_unorm_rgb_weights(_14511, _14512);
					float3 weight_14514 = _14513;
					int _14516 = i_14484 * 8;
					int _14517 = _14516 + j;
					weights_14480[_14517] = weight_14514;
					float3 _14518 = weight_sum_14482 + weight_14514;
					weight_sum_14482 = _14518;
				}
				int _14504 = j + 1;
				j = _14504;
			}
		}
		int _14493 = i_14484 + 1;
		i_14484 = _14493;
	}
	float2x2 _14520 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_14521 = _14520;
	float2 _14524 = float2(filter_space_offset_step.x, 0.00000000e+00);
	float2 _14525 = mul(true_pixel_to_tex_uv_14521, _14524);
	float2 uv_offset_step_x = _14525;
	float2 _14529 = float2(0.00000000e+00, filter_space_offset_step.y);
	float2 _14530 = mul(true_pixel_to_tex_uv_14521, _14529);
	float2 uv_offset_step_y = _14530;
	float2 _14532 = uv_offset_step_x + uv_offset_step_y;
	float2 _14534 = float2(-3.50000000e+00, -3.50000000e+00) * _14532;
	float2 sample0_uv_offset = _14534;
	float2 _14536 = tex_uv + sample0_uv_offset;
	float2 sample0_uv_14537 = _14536;
	float3 sum_14539 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 _14541 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / weight_sum_14482;
	float3 weight_sum_inv_14542 = _14541;
	int i_14544 = 0;
	while (i_14544 < 8)
	{
		{
			float2 _14555 = ((float2)i_14544.xx) * uv_offset_step_y;
			float2 _14556 = sample0_uv_14537 + _14555;
			float2 row_i_first_sample_uv = _14556;
			int j_14559 = 0;
			while (j_14559 < 8)
			{
				{
					float2 _14570 = ((float2)j_14559.xx) * uv_offset_step_x;
					float2 _14571 = row_i_first_sample_uv + _14570;
					float2 sample_uv = _14571;
					int _14574 = i_14544 * 8;
					int _14575 = _14574 + j_14559;
					float2 _14576;
					float _14577;
					_14576 = sample_uv;
					_14577 = input_gamma;
					float4 _14578 = F__tex2Daa_tiled_linearize(tex, _14576, _14577);
					float3 _14581 = weights_14480[_14575] * _14578.xyz;
					float3 _14582 = sum_14539 + _14581;
					sum_14539 = _14582;
				}
				int _14568 = j_14559 + 1;
				j_14559 = _14568;
			}
		}
		int _14553 = i_14544 + 1;
		i_14544 = _14553;
	}
	float3 _14583 = sum_14539 * weight_sum_inv_14542;
	return _14583;
}
float3 F__tex2Daa(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	float2 _14591;
	float _14592;
	_14591 = tex_uv;
	_14592 = input_gamma;
	float4 _14593 = F__tex2D_linearize(tex, _14591, _14592);
	float2 _14594;
	float2x2 _14595;
	float _14596;
	_14594 = tex_uv;
	_14595 = pixel_to_tex_uv;
	_14596 = input_gamma;
	float3 _14597 = F__tex2Daa_subpixel_weights_only(tex, _14594, _14595, _14596);
	float2 _14598;
	float2x2 _14599;
	float _14600;
	float _14601;
	_14598 = tex_uv;
	_14599 = pixel_to_tex_uv;
	_14600 = frame;
	_14601 = input_gamma;
	float3 _14602 = F__tex2Daa4x(tex, _14598, _14599, _14600, _14601);
	float2 _14603;
	float2x2 _14604;
	float _14605;
	float _14606;
	_14603 = tex_uv;
	_14604 = pixel_to_tex_uv;
	_14605 = frame;
	_14606 = input_gamma;
	float3 _14607 = F__tex2Daa5x(tex, _14603, _14604, _14605, _14606);
	float2 _14608;
	float2x2 _14609;
	float _14610;
	float _14611;
	_14608 = tex_uv;
	_14609 = pixel_to_tex_uv;
	_14610 = frame;
	_14611 = input_gamma;
	float3 _14612 = F__tex2Daa6x(tex, _14608, _14609, _14610, _14611);
	float2 _14613;
	float2x2 _14614;
	float _14615;
	float _14616;
	_14613 = tex_uv;
	_14614 = pixel_to_tex_uv;
	_14615 = frame;
	_14616 = input_gamma;
	float3 _14617 = F__tex2Daa7x(tex, _14613, _14614, _14615, _14616);
	float2 _14618;
	float2x2 _14619;
	float _14620;
	float _14621;
	_14618 = tex_uv;
	_14619 = pixel_to_tex_uv;
	_14620 = frame;
	_14621 = input_gamma;
	float3 _14622 = F__tex2Daa8x(tex, _14618, _14619, _14620, _14621);
	float2 _14623;
	float2x2 _14624;
	float _14625;
	float _14626;
	_14623 = tex_uv;
	_14624 = pixel_to_tex_uv;
	_14625 = frame;
	_14626 = input_gamma;
	float3 _14627 = F__tex2Daa12x(tex, _14623, _14624, _14625, _14626);
	float2 _14628;
	float2x2 _14629;
	float _14630;
	float _14631;
	_14628 = tex_uv;
	_14629 = pixel_to_tex_uv;
	_14630 = frame;
	_14631 = input_gamma;
	float3 _14632 = F__tex2Daa16x(tex, _14628, _14629, _14630, _14631);
	float2 _14633;
	float2x2 _14634;
	float _14635;
	float _14636;
	_14633 = tex_uv;
	_14634 = pixel_to_tex_uv;
	_14635 = frame;
	_14636 = input_gamma;
	float3 _14637 = F__tex2Daa20x(tex, _14633, _14634, _14635, _14636);
	float2 _14638;
	float2x2 _14639;
	float _14640;
	float _14641;
	_14638 = tex_uv;
	_14639 = pixel_to_tex_uv;
	_14640 = frame;
	_14641 = input_gamma;
	float3 _14642 = F__tex2Daa24x(tex, _14638, _14639, _14640, _14641);
	float2 _14643;
	float2x2 _14644;
	float _14645;
	float _14646;
	_14643 = tex_uv;
	_14644 = pixel_to_tex_uv;
	_14645 = frame;
	_14646 = input_gamma;
	float3 _14647 = F__tex2Daa_debug_16x_regular(tex, _14643, _14644, _14645, _14646);
	float2 _14648;
	float2x2 _14649;
	float _14650;
	float _14651;
	_14648 = tex_uv;
	_14649 = pixel_to_tex_uv;
	_14650 = frame;
	_14651 = input_gamma;
	float3 _14652 = F__tex2Daa_debug_dynamic(tex, _14648, _14649, _14650, _14651);
	float3 _14654 = bool3(true, true, true) ? _14647 : _14652;
	float3 _14656 = bool3(true, true, true) ? _14642 : _14654;
	float3 _14658 = bool3(true, true, true) ? _14637 : _14656;
	float3 _14660 = bool3(true, true, true) ? _14632 : _14658;
	float3 _14662 = bool3(true, true, true) ? _14627 : _14660;
	float3 _14664 = bool3(true, true, true) ? _14622 : _14662;
	float3 _14666 = bool3(true, true, true) ? _14617 : _14664;
	float3 _14668 = bool3(true, true, true) ? _14612 : _14666;
	float3 _14670 = bool3(true, true, true) ? _14607 : _14668;
	float3 _14672 = bool3(true, true, true) ? _14602 : _14670;
	float3 _14674 = bool3(true, true, true) ? _14597 : _14672;
	float3 _14677 = bool3(true, true, true) ? _14593.xyz : _14674;
	return _14677;
}
float2 F__quadratic_solve(
	in float a,
	in float b_over_2,
	in float c)
{
	float _14683 = b_over_2 * b_over_2;
	float _14684 = a * c;
	float _14685 = _14683 - _14684;
	float discriminant = _14685;
	float _14687 = -b_over_2;
	float _14688 = sqrt(discriminant);
	float _14689 = _14687 + _14688;
	float _14690 = c / _14689;
	float solution0 = _14690;
	float2 _14692 = float2(solution0, discriminant);
	return _14692;
}
float2 F__intersect_sphere(
	in float3 view_vec,
	in float3 eye_pos_vec)
{
	float _14697 = dot(view_vec, view_vec);
	float a_14698 = _14697;
	float _14699 = dot(view_vec, eye_pos_vec);
	float b_over_2_14700 = _14699;
	float _14701 = dot(eye_pos_vec, eye_pos_vec);
	float _14702 = V__geom_radius * V__geom_radius;
	float _14703 = _14701 - _14702;
	float c_14704 = _14703;
	float _14705;
	float _14706;
	float _14707;
	_14705 = a_14698;
	_14706 = b_over_2_14700;
	_14707 = c_14704;
	float2 _14708 = F__quadratic_solve(_14705, _14706, _14707);
	return _14708;
}
float2 F__intersect_cylinder(
	in float3 view_vec,
	in float3 eye_pos_vec)
{
	float3 _14715 = float3(0.00000000e+00, V__geom_radius, 0.00000000e+00);
	float3 cylinder_top_vec = _14715;
	float3 _14717 = eye_pos_vec - cylinder_top_vec;
	float3 top_to_eye_vec = _14717;
	float3 _14720 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), view_vec);
	float3 axis_x_view = _14720;
	float3 _14723 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), top_to_eye_vec);
	float3 axis_x_top_to_eye = _14723;
	float _14725 = dot(axis_x_view, axis_x_view);
	float a_14726 = _14725;
	float _14727 = dot(axis_x_top_to_eye, axis_x_view);
	float b_over_2_14728 = _14727;
	float _14729 = dot(axis_x_top_to_eye, axis_x_top_to_eye);
	float _14730 = V__geom_radius * V__geom_radius;
	float _14731 = _14729 - _14730;
	float c_14732 = _14731;
	float _14733;
	float _14734;
	float _14735;
	_14733 = a_14726;
	_14734 = b_over_2_14728;
	_14735 = c_14732;
	float2 _14736 = F__quadratic_solve(_14733, _14734, _14735);
	return _14736;
}
float2 F__cylinder_xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect)
{
	float _14743 = atan2(intersection_pos_local.x, intersection_pos_local.z);
	float angle_from_image_center = _14743;
	float _14745 = angle_from_image_center * V__geom_radius;
	float signed_arc_len = _14745;
	float _14748 = -intersection_pos_local.y;
	float2 _14749 = float2(signed_arc_len, _14748);
	float2 square_uv = _14749;
	float2 _14751 = square_uv / geom_aspect;
	float2 video_uv = _14751;
	return video_uv;
}
float3 F__cylinder_uv_to_xyz(
	in float2 video_uv,
	in float2 geom_aspect)
{
	float2 _14757 = video_uv * geom_aspect;
	float2 square_uv_14758 = _14757;
	float arc_len = square_uv_14758.x;
	float _14761 = arc_len / V__geom_radius;
	float angle_from_image_center_14762 = _14761;
	float _14763 = sin(angle_from_image_center_14762);
	float _14764 = _14763 * V__geom_radius;
	float x_pos = _14764;
	float _14766 = cos(angle_from_image_center_14762);
	float _14767 = _14766 * V__geom_radius;
	float z_pos = _14767;
	float _14770 = -square_uv_14758.y;
	float3 _14771 = float3(x_pos, _14770, z_pos);
	float3 intersection_pos_local_14772 = _14771;
	return intersection_pos_local_14772;
}
float2 F__sphere_xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect)
{
	float3 _14779 = float3(0.00000000e+00, 0.00000000e+00, V__geom_radius);
	float3 image_center_pos_local = _14779;
	float3 _14781 = cross(intersection_pos_local, image_center_pos_local);
	float _14782 = length(_14781);
	float cp_len = _14782;
	float _14784 = dot(intersection_pos_local, image_center_pos_local);
	float dp = _14784;
	float _14786 = atan2(cp_len, dp);
	float angle_from_image_center_14787 = _14786;
	float _14788 = angle_from_image_center_14787 * V__geom_radius;
	float arc_len_14789 = _14788;
	float _14791 = -intersection_pos_local.y;
	float2 _14793 = float2(intersection_pos_local.x, _14791);
	float2 _14794 = normalize(_14793);
	float2 square_uv_unit = _14794;
	float2 _14797 = arc_len_14789.xx * square_uv_unit;
	float2 square_uv_14798 = _14797;
	float2 _14799 = square_uv_14798 / geom_aspect;
	float2 video_uv_14800 = _14799;
	return video_uv_14800;
}
float3 F__sphere_uv_to_xyz(
	in float2 video_uv,
	in float2 geom_aspect)
{
	bool _14810 = video_uv.x != 0.00000000e+00;
	bool _14813 = video_uv.y != 0.00000000e+00;
	bool _14814 = _14810 && _14813;
	if (_14814)
	{
		float2 _14815 = video_uv * geom_aspect;
		float2 square_uv_14816 = _14815;
		float2 _14817 = normalize(square_uv_14816);
		float2 square_uv_unit_14818 = _14817;
		float _14821 = square_uv_14816.y / square_uv_unit_14818.y;
		float arc_len_14822 = _14821;
		float _14823 = arc_len_14822 / V__geom_radius;
		float angle_from_image_center_14824 = _14823;
		float _14825 = sin(angle_from_image_center_14824);
		float _14826 = _14825 * V__geom_radius;
		float xy_dist_from_sphere_center = _14826;
		float2 _14829 = xy_dist_from_sphere_center.xx * square_uv_unit_14818;
		float2 xy_pos = _14829;
		float _14831 = cos(angle_from_image_center_14824);
		float _14832 = _14831 * V__geom_radius;
		float z_pos_14833 = _14832;
		float _14835 = -xy_pos.y;
		float3 _14837 = float3(xy_pos.x, _14835, z_pos_14833);
		float3 intersection_pos_local_14838 = _14837;
		return intersection_pos_local_14838;
	}
	else
	{
		bool _14844 = video_uv.x != 0.00000000e+00;
		if (_14844)
		{
			float2 _14845 = video_uv * geom_aspect;
			float2 square_uv_14846 = _14845;
			float2 _14847 = normalize(square_uv_14846);
			float2 square_uv_unit_14848 = _14847;
			float _14850 = sin(0.00000000e+00);
			float _14851 = _14850 * V__geom_radius;
			float xy_dist_from_sphere_center_14852 = _14851;
			float2 _14854 = xy_dist_from_sphere_center_14852.xx * square_uv_unit_14848;
			float2 xy_pos_14855 = _14854;
			float _14857 = cos(0.00000000e+00);
			float _14858 = _14857 * V__geom_radius;
			float z_pos_14859 = _14858;
			float _14861 = -xy_pos_14855.y;
			float3 _14863 = float3(xy_pos_14855.x, _14861, z_pos_14859);
			float3 intersection_pos_local_14864 = _14863;
			return intersection_pos_local_14864;
		}
		else
		{
			float z_pos_14865 = V__geom_radius;
			float3 _14868 = float3(0.00000000e+00, -0.00000000e+00, z_pos_14865);
			float3 intersection_pos_local_14869 = _14868;
			return intersection_pos_local_14869;
		}
	}
}
float2 F__sphere_alt_xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect)
{
	float _14875 = -intersection_pos_local.y;
	float2 _14877 = float2(intersection_pos_local.x, _14875);
	float2 _14879 = atan2(_14877, intersection_pos_local.zz);
	float2 angle_from_image_center_14880 = _14879;
	float2 _14882 = angle_from_image_center_14880 * V__geom_radius.xx;
	float2 signed_arc_len_14883 = _14882;
	float2 _14884 = signed_arc_len_14883 / geom_aspect;
	float2 video_uv_14885 = _14884;
	return video_uv_14885;
}
float3 F__sphere_alt_uv_to_xyz(
	in float2 video_uv,
	in float2 geom_aspect)
{
	float2 _14890 = video_uv * geom_aspect;
	float2 square_uv_14891 = _14890;
	float2 arc_len_14892 = square_uv_14891;
	float2 _14894 = arc_len_14892 / V__geom_radius.xx;
	float2 angle_from_image_center_14895 = _14894;
	float2 _14896 = sin(angle_from_image_center_14895);
	float2 _14898 = _14896 * V__geom_radius.xx;
	float2 xy_pos_14899 = _14898;
	float _14900 = V__geom_radius * V__geom_radius;
	float _14901 = dot(xy_pos_14899, xy_pos_14899);
	float _14902 = _14900 - _14901;
	float _14903 = sqrt(_14902);
	float z_pos_14904 = _14903;
	float _14906 = -xy_pos_14899.y;
	float3 _14908 = float3(xy_pos_14899.x, _14906, z_pos_14904);
	return _14908;
}
float2 F__intersect(
	in float3 view_vec_local,
	in float3 eye_pos_local,
	in float geom_mode)
{
	bool _14915 = geom_mode < 2.50000000e+00;
	float3 _14916;
	float3 _14917;
	_14916 = view_vec_local;
	_14917 = eye_pos_local;
	float2 _14918 = F__intersect_sphere(_14916, _14917);
	float3 _14919;
	float3 _14920;
	_14919 = view_vec_local;
	_14920 = eye_pos_local;
	float2 _14921 = F__intersect_cylinder(_14919, _14920);
	float2 _14923 = _14915.xx ? _14918 : _14921;
	return _14923;
}
float2 F__xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect,
	in float geom_mode)
{
	bool _14930 = geom_mode < 1.50000000e+00;
	float3 _14931;
	float2 _14932;
	_14931 = intersection_pos_local;
	_14932 = geom_aspect;
	float2 _14933 = F__sphere_xyz_to_uv(_14931, _14932);
	bool _14935 = geom_mode < 2.50000000e+00;
	float3 _14936;
	float2 _14937;
	_14936 = intersection_pos_local;
	_14937 = geom_aspect;
	float2 _14938 = F__sphere_alt_xyz_to_uv(_14936, _14937);
	float3 _14939;
	float2 _14940;
	_14939 = intersection_pos_local;
	_14940 = geom_aspect;
	float2 _14941 = F__cylinder_xyz_to_uv(_14939, _14940);
	float2 _14943 = _14935.xx ? _14938 : _14941;
	float2 _14945 = _14930.xx ? _14933 : _14943;
	return _14945;
}
float3 F__uv_to_xyz(
	in float2 uv,
	in float2 geom_aspect,
	in float geom_mode)
{
	bool _14952 = geom_mode < 1.50000000e+00;
	float2 _14953;
	float2 _14954;
	_14953 = uv;
	_14954 = geom_aspect;
	float3 _14955 = F__sphere_uv_to_xyz(_14953, _14954);
	bool _14957 = geom_mode < 2.50000000e+00;
	float2 _14958;
	float2 _14959;
	_14958 = uv;
	_14959 = geom_aspect;
	float3 _14960 = F__sphere_alt_uv_to_xyz(_14958, _14959);
	float2 _14961;
	float2 _14962;
	_14961 = uv;
	_14962 = geom_aspect;
	float3 _14963 = F__cylinder_uv_to_xyz(_14961, _14962);
	float3 _14965 = _14957.xxx ? _14960 : _14963;
	float3 _14967 = _14952.xxx ? _14955 : _14965;
	return _14967;
}
float2 F__view_vec_to_uv(
	in float3 view_vec_local,
	in float3 eye_pos_local,
	in float2 geom_aspect,
	in float geom_mode,
	out float3 intersection_pos)
{
	float3 _14975;
	float3 _14976;
	float _14977;
	_14975 = view_vec_local;
	_14976 = eye_pos_local;
	_14977 = geom_mode;
	float2 _14978 = F__intersect(_14975, _14976, _14977);
	float2 intersect_dist_and_discriminant = _14978;
	float3 _14981 = view_vec_local * intersect_dist_and_discriminant.x.xxx;
	float3 _14982 = eye_pos_local + _14981;
	float3 intersection_pos_local_14983 = _14982;
	intersection_pos = intersection_pos_local_14983;
	bool _14986 = intersect_dist_and_discriminant.y > 4.99999989e-03;
	float3 _14987;
	float2 _14988;
	float _14989;
	_14987 = intersection_pos_local_14983;
	_14988 = geom_aspect;
	_14989 = geom_mode;
	float2 _14990 = F__xyz_to_uv(_14987, _14988, _14989);
	float2 _14993 = _14986.xx ? _14990 : float2(1.00000000e+00, 1.00000000e+00);
	return _14993;
}
float3 F__get_ideal_global_eye_pos_for_points(
	in float3 eye_pos,
	in float2 geom_aspect,
	in float3 global_coords[9],
	in int num_points)
{
	int iter = 0;
	while (iter < 1)
	{
		{
			float3 eyespace_coords[9] = _15012;
			int i_15015 = 0;
			while (i_15015 < num_points)
			{
				{
					float3 _15026 = global_coords[i_15015] - eye_pos;
					eyespace_coords[i_15015] = _15026;
				}
				int _15023 = i_15015;
				int _15024 = _15023 + 1;
				i_15015 = _15024;
			}
			float _15027 = abs(V__geom_radius);
			float abs_radius = _15027;
			float _15030 = 1.00000000e+01 * abs_radius;
			float _15032 = 1.00000000e+01 * abs_radius;
			float2 _15033 = float2(_15030, _15032);
			float2 offset_dr_min = _15033;
			float _15036 = -1.00000000e+01 * abs_radius;
			float _15038 = -1.00000000e+01 * abs_radius;
			float2 _15039 = float2(_15036, _15038);
			float2 offset_ul_max = _15039;
			int i_15042 = 0;
			while (i_15042 < num_points)
			{
				{
					float3 eyespace_xyz = eyespace_coords[i_15042];
					float _15055 = -eyespace_xyz.z;
					float2 _15057 = geom_aspect * _15055.xx;
					float2 _15059 = float2(-5.00000000e-01, -5.00000000e-01) * _15057;
					float2 _15062 = V__geom_view_dist.xx * float2(1.00000000e+00, -1.00000000e+00);
					float2 _15063 = _15059 / _15062;
					float2 _15065 = eyespace_xyz.xy - _15063;
					float2 offset_dr = _15065;
					float _15068 = -eyespace_xyz.z;
					float2 _15070 = geom_aspect * _15068.xx;
					float2 _15072 = float2(5.00000000e-01, 5.00000000e-01) * _15070;
					float2 _15075 = V__geom_view_dist.xx * float2(1.00000000e+00, -1.00000000e+00);
					float2 _15076 = _15072 / _15075;
					float2 _15078 = eyespace_xyz.xy - _15076;
					float2 offset_ul = _15078;
					float2 _15080 = min(offset_dr_min, offset_dr);
					offset_dr_min = _15080;
					float2 _15081 = max(offset_ul_max, offset_ul);
					offset_ul_max = _15081;
				}
				int _15050 = i_15042;
				int _15051 = _15050 + 1;
				i_15042 = _15051;
			}
			float2 _15082 = offset_ul_max + offset_dr_min;
			float2 _15084 = float2(5.00000000e-01, 5.00000000e-01) * _15082;
			float2 center_offset = _15084;
			float2 _15087 = eye_pos.xy + center_offset;
			eye_pos.xy = _15087;
			int i_15089 = 0;
			while (i_15089 < num_points)
			{
				{
					float3 _15100 = global_coords[i_15089] - eye_pos;
					eyespace_coords[i_15089] = _15100;
				}
				int _15097 = i_15089;
				int _15098 = _15097 + 1;
				i_15089 = _15098;
			}
			float _15102 = -1.00000000e+01 * V__geom_radius;
			float _15103 = _15102 * V__geom_view_dist;
			float offset_z_max = _15103;
			int i_15106 = 0;
			while (i_15106 < num_points)
			{
				{
					float3 _15118 = eyespace_coords[i_15106] * float3(1.00000000e+00, -1.00000000e+00, 1.00000000e+00);
					float3 eyespace_xyz_flipy = _15118;
					float4 _15122 = eyespace_xyz_flipy.xyxy * V__geom_view_dist.xxxx;
					float4 _15127 = float4(geom_aspect.x, geom_aspect.y, geom_aspect.x, geom_aspect.y);
					float4 _15129 = float4(-5.00000000e-01, -5.00000000e-01, 5.00000000e-01, 5.00000000e-01) * _15127;
					float4 _15130 = _15122 / _15129;
					float4 _15132 = eyespace_xyz_flipy.zzzz + _15130;
					float4 offset_zzzz = _15132;
					bool _15136 = eyespace_xyz_flipy.x < 0.00000000e+00;
					float _15138 = max(offset_z_max, offset_zzzz.x);
					float _15139 = _15136 ? _15138 : offset_z_max;
					offset_z_max = _15139;
					bool _15142 = eyespace_xyz_flipy.y < 0.00000000e+00;
					float _15144 = max(offset_z_max, offset_zzzz.y);
					float _15145 = _15142 ? _15144 : offset_z_max;
					offset_z_max = _15145;
					bool _15148 = eyespace_xyz_flipy.x > 0.00000000e+00;
					float _15150 = max(offset_z_max, offset_zzzz.z);
					float _15151 = _15148 ? _15150 : offset_z_max;
					offset_z_max = _15151;
					bool _15154 = eyespace_xyz_flipy.y > 0.00000000e+00;
					float _15156 = max(offset_z_max, offset_zzzz.w);
					float _15157 = _15154 ? _15156 : offset_z_max;
					offset_z_max = _15157;
					float _15159 = max(offset_z_max, eyespace_xyz_flipy.z);
					offset_z_max = _15159;
				}
				int _15114 = i_15106;
				int _15115 = _15114 + 1;
				i_15106 = _15115;
			}
			float _15161 = eye_pos.z + offset_z_max;
			eye_pos[2] = _15161;
		}
		int _15010 = iter;
		int _15011 = _15010 + 1;
		iter = _15011;
	}
	return eye_pos;
}
float3 F__get_ideal_global_eye_pos(
	in float3x3 local_to_global,
	in float2 geom_aspect,
	in float geom_mode)
{
	float _15167 = -V__geom_view_dist;
	float3 _15170 = float3(0.00000000e+00, geom_aspect.y, _15167);
	float3 high_view = _15170;
	float3 _15173 = high_view * float3(1.00000000e+00, -1.00000000e+00, 1.00000000e+00);
	float3 low_view = _15173;
	float _15175 = dot(high_view, high_view);
	float len_sq = _15175;
	float _15177 = dot(high_view, low_view);
	float _15178 = _15177 / len_sq;
	float _15179 = acos(_15178);
	float _15180 = abs(_15179);
	float fov = _15180;
	float _15183 = fov * 5.00000000e-01;
	float _15184 = sin(_15183);
	float _15185 = V__geom_radius / _15184;
	float eye_z_spherical = _15185;
	bool _15188 = geom_mode < 2.50000000e+00;
	float3 _15191 = float3(0.00000000e+00, 0.00000000e+00, eye_z_spherical);
	float _15192 = max(V__geom_view_dist, eye_z_spherical);
	float3 _15195 = float3(0.00000000e+00, 0.00000000e+00, _15192);
	float3 _15197 = _15188.xxx ? _15191 : _15195;
	float3 eye_pos_15198 = _15197;
	float3 global_coords_15200[9] = _15012;
	float2 _15201;
	float2 _15202;
	float _15203;
	_15201 = float2(0.00000000e+00, 0.00000000e+00);
	_15202 = geom_aspect;
	_15203 = geom_mode;
	float3 _15205 = F__uv_to_xyz(_15201, _15202, _15203);
	float3 _15206 = mul(local_to_global, _15205);
	global_coords_15200[0] = _15206;
	float2 _15207;
	float2 _15208;
	float _15209;
	_15207 = float2(0.00000000e+00, -5.00000000e-01);
	_15208 = geom_aspect;
	_15209 = geom_mode;
	float3 _15211 = F__uv_to_xyz(_15207, _15208, _15209);
	float3 _15212 = mul(local_to_global, _15211);
	global_coords_15200[1] = _15212;
	float2 _15213;
	float2 _15214;
	float _15215;
	_15213 = float2(0.00000000e+00, 5.00000000e-01);
	_15214 = geom_aspect;
	_15215 = geom_mode;
	float3 _15217 = F__uv_to_xyz(_15213, _15214, _15215);
	float3 _15218 = mul(local_to_global, _15217);
	global_coords_15200[2] = _15218;
	float2 _15219;
	float2 _15220;
	float _15221;
	_15219 = float2(-5.00000000e-01, 0.00000000e+00);
	_15220 = geom_aspect;
	_15221 = geom_mode;
	float3 _15223 = F__uv_to_xyz(_15219, _15220, _15221);
	float3 _15224 = mul(local_to_global, _15223);
	global_coords_15200[3] = _15224;
	float2 _15225;
	float2 _15226;
	float _15227;
	_15225 = float2(5.00000000e-01, 0.00000000e+00);
	_15226 = geom_aspect;
	_15227 = geom_mode;
	float3 _15229 = F__uv_to_xyz(_15225, _15226, _15227);
	float3 _15230 = mul(local_to_global, _15229);
	global_coords_15200[4] = _15230;
	float2 _15231;
	float2 _15232;
	float _15233;
	_15231 = float2(-5.00000000e-01, -5.00000000e-01);
	_15232 = geom_aspect;
	_15233 = geom_mode;
	float3 _15235 = F__uv_to_xyz(_15231, _15232, _15233);
	float3 _15236 = mul(local_to_global, _15235);
	global_coords_15200[5] = _15236;
	float2 _15237;
	float2 _15238;
	float _15239;
	_15237 = float2(5.00000000e-01, -5.00000000e-01);
	_15238 = geom_aspect;
	_15239 = geom_mode;
	float3 _15241 = F__uv_to_xyz(_15237, _15238, _15239);
	float3 _15242 = mul(local_to_global, _15241);
	global_coords_15200[6] = _15242;
	float2 _15243;
	float2 _15244;
	float _15245;
	_15243 = float2(-5.00000000e-01, 5.00000000e-01);
	_15244 = geom_aspect;
	_15245 = geom_mode;
	float3 _15247 = F__uv_to_xyz(_15243, _15244, _15245);
	float3 _15248 = mul(local_to_global, _15247);
	global_coords_15200[7] = _15248;
	float2 _15249;
	float2 _15250;
	float _15251;
	_15249 = float2(5.00000000e-01, 5.00000000e-01);
	_15250 = geom_aspect;
	_15251 = geom_mode;
	float3 _15253 = F__uv_to_xyz(_15249, _15250, _15251);
	float3 _15254 = mul(local_to_global, _15253);
	global_coords_15200[8] = _15254;
	float num_negative_z_coords = 0.00000000e+00;
	int i_15258 = 0;
	while (i_15258 < 9)
	{
		{
			bool _15271 = global_coords_15200[0].z < 0.00000000e+00;
			float _15273 = num_negative_z_coords + ((float)_15271);
			num_negative_z_coords = _15273;
		}
		int _15267 = i_15258;
		int _15268 = _15267 + 1;
		i_15258 = _15268;
	}
	bool _15275 = num_negative_z_coords > 5.00000000e-01;
	float3 _15276;
	float2 _15277;
	float3 _15278[9];
	int _15279;
	_15276 = eye_pos_15198;
	_15277 = geom_aspect;
	_15278 = global_coords_15200;
	_15279 = 9;
	float3 _15281 = F__get_ideal_global_eye_pos_for_points(_15276, _15277, _15278, _15279);
	float3 _15283 = _15275.xxx ? eye_pos_15198 : _15281;
	return _15283;
}
float3x3 F__get_pixel_to_object_matrix(
	in float3x3 global_to_local,
	in float3 eye_pos_local,
	in float3 view_vec_global,
	in float3 intersection_pos_local,
	in float3 normal,
	in float2 output_size_inv)
{
	float3 pos_15292 = intersection_pos_local;
	float3 eye_pos_15293 = eye_pos_local;
	float3 _15297 = float3(output_size_inv.x, 0.00000000e+00, 0.00000000e+00);
	float3 _15298 = view_vec_global + _15297;
	float3 view_vec_right_global = _15298;
	float _15301 = -output_size_inv.y;
	float3 _15304 = float3(0.00000000e+00, _15301, 0.00000000e+00);
	float3 _15305 = view_vec_global + _15304;
	float3 view_vec_down_global = _15305;
	float3 _15307 = mul(global_to_local, view_vec_right_global);
	float3 view_vec_right_local = _15307;
	float3 _15309 = mul(global_to_local, view_vec_down_global);
	float3 view_vec_down_local = _15309;
	float3 _15311 = pos_15292 - eye_pos_15293;
	float _15312 = dot(_15311, normal);
	float3 _15313 = pos_15292 - eye_pos_15293;
	float _15314 = dot(_15313, normal);
	float3 _15315 = pos_15292 - eye_pos_15293;
	float _15316 = dot(_15315, normal);
	float3 _15317 = float3(_15312, _15314, _15316);
	float3 intersection_vec_dot_normal = _15317;
	float _15319 = dot(view_vec_right_local, normal);
	float3 _15321 = intersection_vec_dot_normal / _15319.xxx;
	float3 _15322 = _15321 * view_vec_right_local;
	float3 _15323 = eye_pos_15293 + _15322;
	float3 right_pos = _15323;
	float _15325 = dot(view_vec_down_local, normal);
	float3 _15327 = intersection_vec_dot_normal / _15325.xxx;
	float3 _15328 = _15327 * view_vec_down_local;
	float3 _15329 = eye_pos_15293 + _15328;
	float3 down_pos = _15329;
	float3 _15331 = right_pos - pos_15292;
	float3 object_right_vec = _15331;
	float3 _15333 = down_pos - pos_15292;
	float3 object_down_vec = _15333;
	float3x3 _15344 = float3x3(object_right_vec.x, object_down_vec.x, 0.00000000e+00, object_right_vec.y, object_down_vec.y, 0.00000000e+00, object_right_vec.z, object_down_vec.z, 0.00000000e+00);
	float3x3 pixel_to_object = _15344;
	return pixel_to_object;
}
float3x3 F__get_object_to_tangent_matrix(
	in float3 intersection_pos_local,
	in float3 normal,
	in float2 geom_aspect,
	in float geom_mode)
{
	float3 pos_15352 = intersection_pos_local;
	float3 cotangent_unscaled = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 cobitangent_unscaled = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _15361 = geom_mode < 1.50000000e+00;
	if (_15361)
	{
		float3 _15363 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), pos_15352);
		float3 _15364 = normalize(_15363);
		float3 _15366 = _15364 * geom_aspect.y.xxx;
		cotangent_unscaled = _15366;
		float3 _15368 = cross(float3(1.00000000e+00, 0.00000000e+00, 0.00000000e+00), pos_15352);
		float3 _15369 = normalize(_15368);
		float3 _15371 = _15369 * geom_aspect.x.xxx;
		cobitangent_unscaled = _15371;
	}
	else
	{
		bool _15376 = geom_mode < 2.50000000e+00;
		if (_15376)
		{
			float3 _15380 = float3(pos_15352.x, 0.00000000e+00, pos_15352.z);
			float3 _15382 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), _15380);
			float3 _15383 = normalize(_15382);
			float3 _15385 = _15383 * geom_aspect.x.xxx;
			float3 tangent = _15385;
			float3 _15390 = float3(0.00000000e+00, pos_15352.yz.x, pos_15352.yz.y);
			float3 _15392 = cross(float3(1.00000000e+00, 0.00000000e+00, 0.00000000e+00), _15390);
			float3 _15393 = normalize(_15392);
			float3 _15395 = _15393 * geom_aspect.y.xxx;
			float3 bitangent = _15395;
			float3 _15397 = cross(normal, bitangent);
			cotangent_unscaled = _15397;
			float3 _15398 = cross(tangent, normal);
			cobitangent_unscaled = _15398;
		}
		else
		{
			float3 _15400 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), normal);
			float3 _15402 = _15400 * geom_aspect.y.xxx;
			cotangent_unscaled = _15402;
			float _15404 = -geom_aspect.x;
			float3 _15407 = float3(0.00000000e+00, _15404, 0.00000000e+00);
			cobitangent_unscaled = _15407;
		}
	}
	float3 _15408 = cross(cobitangent_unscaled, cotangent_unscaled);
	float3 computed_normal = _15408;
	float _15410 = dot(computed_normal, computed_normal);
	float _15411 = rsqrt(_15410);
	float inv_determinant = _15411;
	float3 _15414 = cotangent_unscaled * inv_determinant.xxx;
	float3 cotangent = _15414;
	float3 _15417 = cobitangent_unscaled * inv_determinant.xxx;
	float3 cobitangent = _15417;
	float3x3 _15428 = float3x3(cotangent.x, cotangent.y, cotangent.z, cobitangent.x, cobitangent.y, cobitangent.z, normal.x, normal.y, normal.z);
	float3x3 object_to_tangent = _15428;
	return object_to_tangent;
}
float2 F__get_curved_video_uv_coords_and_tangent_matrix(
	in float2 flat_video_uv,
	in float3 eye_pos_local,
	in float2 output_size_inv,
	in float2 geom_aspect,
	in float geom_mode,
	in float3x3 global_to_local,
	out float2x2 pixel_to_tangent_video_uv)
{
	float2 _15440 = flat_video_uv - float2(5.00000000e-01, 5.00000000e-01);
	float2 _15441 = _15440 * geom_aspect;
	float2 view_uv = _15441;
	float _15444 = -view_uv.y;
	float _15445 = -V__geom_view_dist;
	float3 _15447 = float3(view_uv.x, _15444, _15445);
	float3 view_vec_global_15448 = _15447;
	float3 _15449 = mul(global_to_local, view_vec_global_15448);
	float3 view_vec_local_15450 = _15449;
	float3 pos_15452 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 _15453;
	float3 _15454;
	float2 _15455;
	float _15456;
	float3 _15457;
	_15453 = view_vec_local_15450;
	_15454 = eye_pos_local;
	_15455 = geom_aspect;
	_15456 = geom_mode;
	float2 _15458 = F__view_vec_to_uv(_15453, _15454, _15455, _15456, _15457);
	pos_15452 = _15457;
	float2 centered_uv = _15458;
	float2 _15461 = centered_uv + float2(5.00000000e-01, 5.00000000e-01);
	float2 video_uv_15462 = _15461;
	if (true)
	{
		bool _15468 = geom_mode < 2.50000000e+00;
		float3 _15472 = float3(pos_15452.x, 0.00000000e+00, pos_15452.z);
		float3 _15474 = _15468.xxx ? pos_15452 : _15472;
		float3 normal_base = _15474;
		float3 _15476 = normalize(normal_base);
		float3 normal_15477 = _15476;
		float3x3 _15478;
		float3 _15479;
		float3 _15480;
		float3 _15481;
		float3 _15482;
		float2 _15483;
		_15478 = global_to_local;
		_15479 = eye_pos_local;
		_15480 = view_vec_global_15448;
		_15481 = pos_15452;
		_15482 = normal_15477;
		_15483 = output_size_inv;
		float3x3 _15484 = F__get_pixel_to_object_matrix(_15478, _15479, _15480, _15481, _15482, _15483);
		float3x3 pixel_to_object_15485 = _15484;
		float3 _15486;
		float3 _15487;
		float2 _15488;
		float _15489;
		_15486 = pos_15452;
		_15487 = normal_15477;
		_15488 = geom_aspect;
		_15489 = geom_mode;
		float3x3 _15490 = F__get_object_to_tangent_matrix(_15486, _15487, _15488, _15489);
		float3x3 object_to_tangent_15491 = _15490;
		float3x3 _15492 = mul(object_to_tangent_15491, pixel_to_object_15485);
		float3x3 pixel_to_tangent3x3 = _15492;
		float2x2 _15498 = float2x2(pixel_to_tangent3x3[0].x, pixel_to_tangent3x3[0].y, pixel_to_tangent3x3[1].x, pixel_to_tangent3x3[1].y);
		pixel_to_tangent_video_uv = _15498;
	}
	else
	{
		float2x2 _15503 = float2x2(output_size_inv.x, 0.00000000e+00, 0.00000000e+00, output_size_inv.y);
		pixel_to_tangent_video_uv = _15503;
	}
	return video_uv_15462;
}
float F__get_border_dim_factor(
	in float2 video_uv,
	in float2 geom_aspect)
{
	float2 _15509 = float2(1.00000000e+00, 1.00000000e+00) - video_uv;
	float2 _15510 = min(video_uv, _15509);
	float2 _15511 = _15510 * geom_aspect;
	float2 edge_dists = _15511;
	float2 _15513 = float2(V__border_size, V__border_size);
	float2 _15514 = _15513 - edge_dists;
	float2 _15516 = max(_15514, float2(0.00000000e+00, 0.00000000e+00));
	float2 border_penetration = _15516;
	bool _15519 = V__border_size > 0.00000000e+00;
	float _15520 = length(border_penetration);
	float _15521 = _15520 / V__border_size;
	float _15523 = _15519 ? _15521 : 0.00000000e+00;
	float penetration_ratio = _15523;
	float _15526 = 1.00000000e+00 - penetration_ratio;
	float _15528 = max(_15526, 0.00000000e+00);
	float border_escape_ratio = _15528;
	float _15530 = pow(border_escape_ratio, V__border_darkness);
	float _15532 = max(1.00000000e+00, V__border_compress);
	float _15533 = _15530 * _15532;
	float border_dim_factor = _15533;
	float _15536 = min(border_dim_factor, 1.00000000e+00);
	return _15536;
}
float2x2 F__mul_scale(
	in float2 scale,
	in float2x2 mtrx)
{
	float4 _15545 = float4(mtrx[0].x, mtrx[0].y, mtrx[1].x, mtrx[1].y);
	float4 _15547 = _15545 * scale.xxyy;
	float4 temp_matrix = _15547;
	float2x2 _15553 = float2x2(temp_matrix.x, temp_matrix.y, temp_matrix.z, temp_matrix.w);
	return _15553;
}
void F__geometryVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 output_size_inv : TEXCOORD1,
	out float4 geom_aspect_and_overscan : TEXCOORD2,
	out float3 eye_pos_local : TEXCOORD3,
	out float3 global_to_local_row0 : TEXCOORD4,
	out float3 global_to_local_row1 : TEXCOORD5,
	out float3 global_to_local_row2 : TEXCOORD6)
{
	uint _15565;
	float4 _15566;
	float2 _15567;
	_15565 = id;
	F__PostProcessVS(_15565, _15566, _15567);
	position = _15566;
	texcoord = _15567;
	output_size_inv = float2(5.20833360e-04, 9.25925910e-04);
	float _15572 = output_size_inv.y / output_size_inv.x;
	float viewport_aspect_ratio = _15572;
	float _15574;
	_15574 = viewport_aspect_ratio;
	float2 _15575 = F__get_aspect_vector(_15574);
	float2 geom_aspect_15576 = _15575;
	float2 _15577 = F__get_geom_overscan_vector();
	float2 geom_overscan = _15577;
	float4 _15583 = float4(geom_aspect_15576.x, geom_aspect_15576.y, geom_overscan.x, geom_overscan.y);
	geom_aspect_and_overscan = _15583;
	float2 _15584 = F__get_geom_tilt_angle_vector();
	float2 geom_tilt_angle = _15584;
	float2 _15586 = sin(geom_tilt_angle);
	float2 sin_tilt = _15586;
	float2 _15588 = cos(geom_tilt_angle);
	float2 cos_tilt = _15588;
	float _15591 = -sin_tilt.y;
	float3x3 _15600 = float3x3(1.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00, cos_tilt.y, _15591, 0.00000000e+00, sin_tilt.y, cos_tilt.y);
	float3x3 rot_x_matrix = _15600;
	float _15603 = -sin_tilt.x;
	float3x3 _15612 = float3x3(cos_tilt.x, 0.00000000e+00, sin_tilt.x, 0.00000000e+00, 1.00000000e+00, 0.00000000e+00, _15603, 0.00000000e+00, cos_tilt.x);
	float3x3 rot_y_matrix = _15612;
	float3x3 _15614 = mul(rot_y_matrix, rot_x_matrix);
	float3x3 local_to_global_15615 = _15614;
	float3x3 _15616 = transpose(local_to_global_15615);
	float3x3 global_to_local_15617 = _15616;
	float3 _15621 = float3(global_to_local_15617[0].x, global_to_local_15617[0].y, global_to_local_15617[0].z);
	global_to_local_row0 = _15621;
	float3 _15625 = float3(global_to_local_15617[1].x, global_to_local_15617[1].y, global_to_local_15617[1].z);
	global_to_local_row1 = _15625;
	float3 _15629 = float3(global_to_local_15617[2].x, global_to_local_15617[2].y, global_to_local_15617[2].z);
	global_to_local_row2 = _15629;
	float geom_mode_15631 = ((float)V__geom_mode_runtime);
	float3x3 _15632;
	float2 _15633;
	float _15634;
	_15632 = local_to_global_15615;
	_15633 = geom_aspect_15576;
	_15634 = geom_mode_15631;
	float3 _15635 = F__get_ideal_global_eye_pos(_15632, _15633, _15634);
	float3 eye_pos_global = _15635;
	float3 _15637 = mul(global_to_local_15617, eye_pos_global);
	eye_pos_local = _15637;
	return;
}
void F__geometryPS(
	in float4 position : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 output_size_inv : TEXCOORD1,
	in float4 geom_aspect_and_overscan : TEXCOORD2,
	in float3 eye_pos_local : TEXCOORD3,
	in float3 global_to_local_row0 : TEXCOORD4,
	in float3 global_to_local_row1 : TEXCOORD5,
	in float3 global_to_local_row2 : TEXCOORD6,
	out float4 color : SV_TARGET)
{
	float2 geom_aspect_15650 = geom_aspect_and_overscan.xy;
	float2 geom_overscan_15652 = geom_aspect_and_overscan.zw;
	float3x3 _15662 = float3x3(global_to_local_row0.x, global_to_local_row0.y, global_to_local_row0.z, global_to_local_row1.x, global_to_local_row1.y, global_to_local_row1.z, global_to_local_row2.x, global_to_local_row2.y, global_to_local_row2.z);
	float3x3 global_to_local_15663 = _15662;
	float geom_mode_15665 = ((float)V__geom_mode_runtime);
	float2 flat_video_uv_15666 = texcoord;
	float2x2 pixel_to_video_uv = float2x2(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 video_uv_no_geom_overscan = float2(0.00000000e+00, 0.00000000e+00);
	bool _15675 = geom_mode_15665 > 5.00000000e-01;
	if (_15675)
	{
		float2 _15676;
		float3 _15677;
		float2 _15678;
		float2 _15679;
		float _15680;
		float3x3 _15681;
		float2x2 _15682;
		_15676 = flat_video_uv_15666;
		_15677 = eye_pos_local;
		_15678 = output_size_inv;
		_15679 = geom_aspect_15650;
		_15680 = geom_mode_15665;
		_15681 = global_to_local_15663;
		float2 _15683 = F__get_curved_video_uv_coords_and_tangent_matrix(_15676, _15677, _15678, _15679, _15680, _15681, _15682);
		pixel_to_video_uv = _15682;
		video_uv_no_geom_overscan = _15683;
	}
	else
	{
		video_uv_no_geom_overscan = flat_video_uv_15666;
		float2x2 _15688 = float2x2(output_size_inv.x, 0.00000000e+00, 0.00000000e+00, output_size_inv.y);
		pixel_to_video_uv = _15688;
	}
	float2 _15690 = video_uv_no_geom_overscan - float2(5.00000000e-01, 5.00000000e-01);
	float2 _15691 = _15690 / geom_overscan_15652;
	float2 _15693 = _15691 + float2(5.00000000e-01, 5.00000000e-01);
	float2 video_uv_15694 = _15693;
	float2 tex_uv_15695 = video_uv_15694;
	float2 _15697 = float2(1.00000000e+00, 1.00000000e+00) / geom_overscan_15652;
	float2 _15698;
	float2x2 _15699;
	_15698 = _15697;
	_15699 = pixel_to_video_uv;
	float2x2 _15700 = F__mul_scale(_15698, _15699);
	float2x2 pixel_to_tex_uv_15701 = _15700;
	float2 _15702 = F__get_aa_subpixel_r_offset();
	float2 _15703 = abs(_15702);
	float2 abs_aa_r_offset = _15703;
	float3 raw_color_15706 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _15711 = geom_mode_15665 > 5.00000000e-01;
	bool _15714 = geom_overscan_15652.x != 1.00000000e+00;
	bool _15717 = geom_overscan_15652.y != 1.00000000e+00;
	bool2 _15718 = bool2(_15714, _15717);
	bool _15719 = any(_15718);
	bool _15720 = _15711 || _15719;
	bool _15722 = false && _15720;
	if (_15722)
	{
		float _15723 = F__get_intermediate_gamma();
		float2 _15724;
		float2x2 _15725;
		float _15726;
		float _15727;
		_15724 = tex_uv_15695;
		_15725 = pixel_to_tex_uv_15701;
		_15726 = ((float)V__frame_count);
		_15727 = _15723;
		float3 _15729 = F__tex2Daa(V__samplerBloomHorizontal, _15724, _15725, _15726, _15727);
		raw_color_15706 = _15729;
	}
	else
	{
		if (false)
		{
			float _15734 = F__get_intermediate_gamma();
			float2 _15735;
			float2x2 _15736;
			float _15737;
			_15735 = tex_uv_15695;
			_15736 = pixel_to_tex_uv_15701;
			_15737 = _15734;
			float3 _15738 = F__tex2Daa_subpixel_weights_only(V__samplerBloomHorizontal, _15735, _15736, _15737);
			raw_color_15706 = _15738;
		}
		else
		{
			float _15739 = F__get_intermediate_gamma();
			float2 _15740;
			float _15741;
			_15740 = tex_uv_15695;
			_15741 = _15739;
			float4 _15742 = F__tex2D_linearize(V__samplerBloomHorizontal, _15740, _15741);
			raw_color_15706 = _15742.xyz;
		}
	}
	float2 _15744;
	float2 _15745;
	_15744 = video_uv_15694;
	_15745 = geom_aspect_15650;
	float _15746 = F__get_border_dim_factor(_15744, _15745);
	float border_dim_factor_15747 = _15746;
	float3 _15749 = raw_color_15706 * border_dim_factor_15747.xxx;
	float3 final_color = _15749;
	float4 _15755 = float4(final_color.x, final_color.y, final_color.z, 1.00000000e+00);
	float _15756 = F__get_output_gamma();
	float4 _15757;
	float _15758;
	_15757 = _15755;
	_15758 = _15756;
	float4 _15759 = F__encode_output(_15757, _15758);
	color = _15759;
	return;
}
float4 F__leanUNorm16(
	in float4 value)
{
	float4 _15763 = saturate(value);
	float4 _15765 = _15763 * float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	float4 _15766 = round(_15765);
	float4 _15768 = _15766 / float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	return _15768;
}
float4 F__leanCode16Rop(
	in float4 value)
{
	float4 _15772 = saturate(value);
	float4 x_15773 = _15772;
	float4 _15775 = x_15773 * float4(6.55360000e+04, 6.55360000e+04, 6.55360000e+04, 6.55360000e+04);
	float4 _15777 = x_15773 * float4(1.60000000e+01, 1.60000000e+01, 1.60000000e+01, 1.60000000e+01);
	float4 _15778 = floor(_15777);
	float4 _15780 = _15778 * float4(6.25000000e-02, 6.25000000e-02, 6.25000000e-02, 6.25000000e-02);
	float4 _15781 = _15775 - _15780;
	float4 _15783 = _15781 + float4(4.37500000e-01, 4.37500000e-01, 4.37500000e-01, 4.37500000e-01);
	float4 _15784 = floor(_15783);
	float4 _15786 = min(_15784, float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04));
	return _15786;
}
float4 F__leanUNorm16Rop(
	in float4 value)
{
	float4 _15790;
	_15790 = value;
	float4 _15791 = F__leanCode16Rop(_15790);
	float4 _15793 = _15791 / float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	return _15793;
}
float4 F__leanCode16Fast(
	in float4 value)
{
	float4 _15797 = saturate(value);
	float4 _15799 = _15797 * float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	float4 _15801 = _15799 + float4(4.37500000e-01, 4.37500000e-01, 4.37500000e-01, 4.37500000e-01);
	float4 _15802 = floor(_15801);
	return _15802;
}
float4 F__leanCode16(
	in float4 value,
	in bool exact)
{
	float4 _15807;
	_15807 = value;
	float4 _15808 = F__leanCode16Rop(_15807);
	float4 _15809;
	_15809 = value;
	float4 _15810 = F__leanCode16Fast(_15809);
	float4 _15812 = exact.xxxx ? _15808 : _15810;
	return _15812;
}
void F__leanBloomVerticalVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0,
	nointerpolation out float sigma : TEXCOORD1)
{
	uint _15819;
	float4 _15820;
	float2 _15821;
	float _15822;
	_15819 = id;
	F__bloomVerticalVS(_15819, _15820, _15821, _15822);
	pos = _15820;
	uv = _15821;
	sigma = _15822;
	return;
}
void F__leanBloomVerticalPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	nointerpolation in float sigma : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float4 _15830;
	float2 _15831;
	float _15832;
	float4 _15833;
	_15830 = pos;
	_15831 = uv;
	_15832 = sigma;
	F__bloomVerticalPS(_15830, _15831, _15832, _15833);
	color = _15833;
	return;
}
void F__leanPhosphorPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	in float2 frequency : TEXCOORD1,
	in float2 pqx : TEXCOORD2,
	in float2 pqy : TEXCOORD3,
	out float4 rg : SV_TARGET,
	out float4 blue : SV_TARGET1)
{
	float4 _15844;
	float2 _15845;
	float2 _15846;
	float2 _15847;
	float2 _15848;
	float4 _15849;
	_15844 = pos;
	_15845 = uv;
	_15846 = frequency;
	_15847 = pqx;
	_15848 = pqy;
	F__generatePhosphorMaskPS(_15844, _15845, _15846, _15847, _15848, _15849);
	rg = _15849;
	float4 _15855 = float4(rg.z, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
	blue = _15855;
	return;
}
void F__leanMaskPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float4 _15861 = V__samplerPhosphorMask.t.Sample(V__samplerPhosphorMask.s, uv);
	float2 rg_15863 = _15861.xy;
	bool _15865 = V__mask_type >= 3;
	bool _15868 = V__phosphor_offset_x.x == V__phosphor_offset_x.z;
	bool _15869 = _15865 && _15868;
	bool _15872 = V__phosphor_offset_y.x == V__phosphor_offset_y.z;
	bool _15873 = _15869 && _15872;
	bool shared_blue = _15873;
	float4 _15875 = V__samplerPhosphorBlue.t.Sample(V__samplerPhosphorBlue.s, uv);
	float _15878 = shared_blue ? rg_15863.x : _15875.x;
	float blue_15879 = _15878;
	bool _15881 = V__scanline_deinterlacing_mode == 2u;
	bool _15883 = V__scanline_deinterlacing_mode == 3u;
	bool _15884 = _15881 || _15883;
	bool _15885 = V__enable_interlacing && _15884;
	bool interlaced_15886 = _15885;
	float4 _15887 = V__samplerDeinterlace.t.Sample(V__samplerDeinterlace.s, uv);
	float4 _15888 = V__samplerBeamConvergence.t.Sample(V__samplerBeamConvergence.s, uv);
	float3 _15892 = interlaced_15886.xxx ? _15887.xyz : _15888.xyz;
	float3 scanlines = _15892;
	float _15894 = F__get_intermediate_gamma();
	float2 _15895;
	float _15896;
	_15895 = uv;
	_15896 = _15894;
	float4 _15897 = F__tex2D_linearize(V__samplerBlurHorizontal, _15895, _15896);
	float3 halation = _15897.xyz;
	float _15901 = dot(halation, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _15903 = _15901 / 3.00000000e+00;
	float3 _15906 = lerp(scanlines, _15903.xxx, V__halation_weight.xxx);
	float3 _15909 = float3(rg_15863.x, rg_15863.y, blue_15879);
	float3 _15910 = _15906 * _15909;
	float4 _15915 = float4(_15910.x, _15910.y, _15910.z, 1.00000000e+00);
	color = _15915;
	return;
}
void F__leanPreblurVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0)
{
	uint _15921;
	float4 _15922;
	float2 _15923;
	_15921 = id;
	F__contentCropVS(_15921, _15922, _15923);
	pos = _15922;
	uv = _15923;
	bool _15929 = all(bool2(true, true));
	float2 _15931 = frac(float2(0.00000000e+00, 0.00000000e+00));
	bool2 _15933 = _15931 == float2(0.00000000e+00, 0.00000000e+00);
	bool _15934 = all(_15933);
	bool _15935 = _15929 && _15934;
	if (_15935)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
void F__leanPreblurHorizVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0)
{
	uint _15942;
	float4 _15943;
	float2 _15944;
	_15942 = id;
	F__PostProcessVS(_15942, _15943, _15944);
	pos = _15943;
	uv = _15944;
	bool _15950 = all(bool2(true, true));
	float2 _15952 = frac(float2(0.00000000e+00, 0.00000000e+00));
	bool2 _15954 = _15952 == float2(0.00000000e+00, 0.00000000e+00);
	bool _15955 = all(_15954);
	bool _15956 = _15950 && _15955;
	if (_15956)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
float3 F__leanInput(
	in float2 uv)
{
	float2 _15962 = uv * float2(1.00000000e+00, 1.00000000e+00);
	float2 _15964 = _15962 + float2(0.00000000e+00, 0.00000000e+00);
	float4 _15969 = float4(_15964.x, _15964.y, 0.00000000e+00, 0.00000000e+00);
	float4 _15970 = V__ReShade__BackBuffer.t.SampleLevel(V__ReShade__BackBuffer.s, _15969.xy, _15969.w);
	float _15971 = F__get_input_gamma();
	float3 _15974 = pow(_15970.xyz, _15971.xxx);
	return _15974;
}
float3 F__leanBeam(
	in float2 uv)
{
	bool _15979 = V__geom_rotation_mode == 0u;
	bool _15981 = V__geom_rotation_mode == 2u;
	bool _15982 = _15979 || _15981;
	bool landscape = _15982;
	float2 _15986 = landscape.xx ? uv : uv.yx;
	float2 rotated = _15986;
	int _15990 = landscape ? 1080 : 1920;
	float scale_15992 = ((float)_15990);
	float2 _15993;
	float _15994;
	_15993 = rotated;
	_15994 = scale_15992;
	S__InterpolationFieldData _15995 = F__calc_interpolation_field_data(_15993, _15994);
	S__InterpolationFieldData field = _15995;
	float _15999 = rotated.y * field.triangle_wave_freq;
	float _16001 = _15999 + ((float)field.field_parity);
	float _16003 = _16001 * 5.00000000e-01;
	float ypos_16004 = _16003;
	float2 _16007 = float2(1.00000000e+00, ((float)V__scanline_thickness));
	float2 _16010 = float2(((float)V__scanline_thickness), 1.00000000e+00);
	float2 _16012 = landscape.xx ? _16007 : _16010;
	float2 _16014 = _16012 / float2(1.92000000e+03, 1.08000000e+03);
	float2 bin_size_16015 = _16014;
	float2 _16016;
	float2 _16017;
	float2 _16018;
	_16016 = uv;
	_16017 = float2(0.00000000e+00, 0.00000000e+00);
	_16018 = bin_size_16015;
	float2 _16020 = F__round_coord(_16016, _16017, _16018);
	float2 sample_uv_16021 = _16020;
	if (field.wrong_field)
	{
		if (landscape)
		{
			bool _16031 = sample_uv_16021.y <= uv.y;
			int _16034 = _16031 ? 1 : -1;
			uint _16036 = ((uint)_16034) * V__scanline_thickness;
			uint _16038 = _16036 / 1080u;
			float _16041 = sample_uv_16021.y + ((float)_16038);
			sample_uv_16021[1] = _16041;
		}
		else
		{
			bool _16044 = sample_uv_16021.x <= uv.x;
			int _16047 = _16044 ? 1 : -1;
			uint _16049 = ((uint)_16047) * V__scanline_thickness;
			uint _16051 = _16049 / 1920u;
			float _16054 = sample_uv_16021.x + ((float)_16051);
			sample_uv_16021[0] = _16054;
		}
	}
	float2 _16055;
	_16055 = sample_uv_16021;
	float3 _16056 = F__leanInput(_16055);
	float3 current = _16056;
	float2 _16059 = float2(current.x, ypos_16004);
	float2 _16060;
	_16060 = _16059;
	float4 _16061 = F__tex2D_nograd(V__samplerBeamDist, _16060);
	float2 _16063 = float2(current.y, ypos_16004);
	float2 _16064;
	_16064 = _16063;
	float4 _16065 = F__tex2D_nograd(V__samplerBeamDist, _16064);
	float2 _16067 = float2(current.z, ypos_16004);
	float2 _16068;
	_16068 = _16067;
	float4 _16069 = F__tex2D_nograd(V__samplerBeamDist, _16068);
	float3 _16073 = float3(_16061.x, _16065.x, _16069.x);
	float3 result_16074 = _16073;
	bool _16079 = V__beam_shape_mode == 3u;
	if (_16079)
	{
		float2 _16082 = float2(0.00000000e+00, ((float)V__scanline_thickness));
		int _16085 = 1 + ((int)V__enable_interlacing);
		float2 _16087 = _16082 * ((float2)_16085.xx);
		float2 _16089 = _16087 / float2(1.92000000e+03, 1.08000000e+03);
		float2 offset_16090 = _16089;
		float2 _16091 = sample_uv_16021 - offset_16090;
		float2 _16092;
		_16092 = _16091;
		float3 _16093 = F__leanInput(_16092);
		float3 upper = _16093;
		float2 _16095 = sample_uv_16021 + offset_16090;
		float2 _16096;
		_16096 = _16095;
		float3 _16097 = F__leanInput(_16096);
		float3 lower = _16097;
		float2 _16100 = float2(upper.x, ypos_16004);
		float2 _16101;
		_16101 = _16100;
		float4 _16102 = F__tex2D_nograd(V__samplerBeamDist, _16101);
		float2 _16104 = float2(upper.y, ypos_16004);
		float2 _16105;
		_16105 = _16104;
		float4 _16106 = F__tex2D_nograd(V__samplerBeamDist, _16105);
		float2 _16108 = float2(upper.z, ypos_16004);
		float2 _16109;
		_16109 = _16108;
		float4 _16110 = F__tex2D_nograd(V__samplerBeamDist, _16109);
		float3 _16114 = float3(_16102.y, _16106.y, _16110.y);
		float3 _16115 = result_16074 + _16114;
		result_16074 = _16115;
		float2 _16117 = float2(lower.x, ypos_16004);
		float2 _16118;
		_16118 = _16117;
		float4 _16119 = F__tex2D_nograd(V__samplerBeamDist, _16118);
		float2 _16121 = float2(lower.y, ypos_16004);
		float2 _16122;
		_16122 = _16121;
		float4 _16123 = F__tex2D_nograd(V__samplerBeamDist, _16122);
		float2 _16125 = float2(lower.z, ypos_16004);
		float2 _16126;
		_16126 = _16125;
		float4 _16127 = F__tex2D_nograd(V__samplerBeamDist, _16126);
		float3 _16131 = float3(_16119.z, _16123.z, _16127.z);
		float3 _16132 = result_16074 + _16131;
		result_16074 = _16132;
	}
	return result_16074;
}
void F__leanCachedBeamVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0)
{
	uint _16138;
	float4 _16139;
	float2 _16140;
	_16138 = id;
	F__PostProcessVS(_16138, _16139, _16140);
	pos = _16139;
	uv = _16140;
	bool3 _16146 = V__convergence_offset_x == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16147 = all(_16146);
	bool3 _16149 = V__convergence_offset_y == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16150 = all(_16149);
	bool _16151 = _16147 && _16150;
	bool _16153 = V__scanline_offset == 0.00000000e+00;
	bool _16154 = _16151 && _16153;
	if (_16154)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
void F__leanCachedBeamPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float2 _16161;
	_16161 = uv;
	float3 _16162 = F__leanBeam(_16161);
	float4 _16167 = float4(_16162.x, _16162.y, _16162.z, 1.00000000e+00);
	color = _16167;
	return;
}
void F__leanBeamsPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	bool3 _16177 = V__convergence_offset_x == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16178 = all(_16177);
	bool3 _16180 = V__convergence_offset_y == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16181 = all(_16180);
	bool _16182 = _16178 && _16181;
	bool _16184 = V__scanline_offset == 0.00000000e+00;
	bool _16185 = _16182 && _16184;
	if (_16185)
	{
		float2 _16186;
		_16186 = uv;
		float3 _16187 = F__leanBeam(_16186);
		float4 _16192 = float4(_16187.x, _16187.y, _16187.z, 1.00000000e+00);
		color = _16192;
		return;
	}
	bool3 _16194 = V__convergence_offset_x != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16195 = any(_16194);
	bool3 _16197 = V__convergence_offset_y != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16198 = any(_16197);
	bool _16199 = _16195 || _16198;
	float run_convergence_16201 = ((float)_16199);
	float4 _16202;
	float2 _16203;
	float _16204;
	float4 _16205;
	_16202 = pos;
	_16203 = uv;
	_16204 = run_convergence_16201;
	F__beamConvergencePS(_16202, _16203, _16204, _16205);
	color = _16205;
	return;
}
bool F__leanFuseGeometry()
{
	float mode = ((float)V__geom_mode_runtime);
	bool _16212 = mode <= 5.00000000e-01;
	bool2 _16214 = V__geom_overscan == float2(1.00000000e+00, 1.00000000e+00);
	bool _16215 = all(_16214);
	bool _16216 = _16212 && _16215;
	bool _16218 = true || _16216;
	bool _16220 = true && _16218;
	return _16220;
}
void F__leanGeometryCacheVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0,
	out float2 output_size_inv : TEXCOORD1,
	out float4 aspect_overscan : TEXCOORD2,
	out float3 eye : TEXCOORD3,
	out float3 row0 : TEXCOORD4,
	out float3 row1 : TEXCOORD5,
	out float3 row2 : TEXCOORD6)
{
	uint _16232;
	float4 _16233;
	float2 _16234;
	float2 _16235;
	float4 _16236;
	float3 _16237;
	float3 _16238;
	float3 _16239;
	float3 _16240;
	_16232 = id;
	F__geometryVS(_16232, _16233, _16234, _16235, _16236, _16237, _16238, _16239, _16240);
	pos = _16233;
	uv = _16234;
	output_size_inv = _16235;
	aspect_overscan = _16236;
	eye = _16237;
	row0 = _16238;
	row1 = _16239;
	row2 = _16240;
	bool _16245 = F__leanFuseGeometry();
	if (_16245)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
void F__leanOutputPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	in float2 output_size_inv : TEXCOORD1,
	in float4 aspect_overscan : TEXCOORD2,
	in float3 eye : TEXCOORD3,
	in float3 row0 : TEXCOORD4,
	in float3 row1 : TEXCOORD5,
	in float3 row2 : TEXCOORD6,
	out float4 color : SV_TARGET)
{
	bool _16261 = F__leanFuseGeometry();
	bool _16262 = !_16261;
	if (_16262)
	{
		float4 _16263;
		float2 _16264;
		float4 _16265;
		_16263 = pos;
		_16264 = uv;
		F__uncropContentPixelShader(_16263, _16264, _16265);
		color = _16265;
		return;
	}
	bool _16272 = uv.x < 0.00000000e+00;
	bool _16275 = uv.x > 1.00000000e+00;
	bool _16276 = _16272 || _16275;
	bool _16279 = uv.y < 0.00000000e+00;
	bool _16280 = _16276 || _16279;
	bool _16283 = uv.y > 1.00000000e+00;
	bool _16284 = _16280 || _16283;
	if (_16284)
	{
		color = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
		return;
	}
	float2 _16287 = uv - float2(0.00000000e+00, 0.00000000e+00);
	float2 _16289 = _16287 / float2(1.00000000e+00, 1.00000000e+00);
	float2 local_uv = _16289;
	float4 _16291;
	float2 _16292;
	float2 _16293;
	float4 _16294;
	float3 _16295;
	float3 _16296;
	float3 _16297;
	float3 _16298;
	float4 _16299;
	_16291 = pos;
	_16292 = local_uv;
	_16293 = output_size_inv;
	_16294 = aspect_overscan;
	_16295 = eye;
	_16296 = row0;
	_16297 = row1;
	_16298 = row2;
	F__geometryPS(_16291, _16292, _16293, _16294, _16295, _16296, _16297, _16298, _16299);
	color = _16299;
	float4 _16301;
	_16301 = color;
	float4 _16302 = F__leanUNorm16(_16301);
	color = _16302;
	return;
}
void F__leanOutputVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0,
	out float2 output_size_inv : TEXCOORD1,
	out float4 aspect_overscan : TEXCOORD2,
	out float3 eye : TEXCOORD3,
	out float3 row0 : TEXCOORD4,
	out float3 row1 : TEXCOORD5,
	out float3 row2 : TEXCOORD6)
{
	int _16316 = min(((int)id), 2);
	uint _16317;
	float4 _16318;
	float2 _16319;
	float2 _16320;
	float4 _16321;
	float3 _16322;
	float3 _16323;
	float3 _16324;
	float3 _16325;
	_16317 = ((uint)_16316);
	F__geometryVS(_16317, _16318, _16319, _16320, _16321, _16322, _16323, _16324, _16325);
	pos = _16318;
	uv = _16319;
	output_size_inv = _16320;
	aspect_overscan = _16321;
	eye = _16322;
	row0 = _16323;
	row1 = _16324;
	row2 = _16325;
	bool _16331 = F__leanFuseGeometry();
	bool _16332 = !_16331;
	if (_16332)
	{
		uint _16333;
		float4 _16334;
		float2 _16335;
		_16333 = id;
		F__contentUncropVS(_16333, _16334, _16335);
		pos = _16334;
		uv = _16335;
	}
	return;
}
float3 F__leanFilterCode(
	in float3 a,
	in float3 b,
	in float w)
{
	float _16343 = 2.56000000e+02 - w;
	float3 _16345 = a * _16343.xxx;
	float3 _16347 = b * w.xxx;
	float3 _16348 = _16345 + _16347;
	float3 _16350 = _16348 + float3(1.28000000e+02, 1.28000000e+02, 1.28000000e+02);
	float3 _16352 = _16350 * float3(3.90625000e-03, 3.90625000e-03, 3.90625000e-03);
	float3 _16353 = floor(_16352);
	return _16353;
}
float3 F__leanTap(
	in float3 a,
	in float3 b,
	in float w,
	in bool exact)
{
	float3 _16360;
	float3 _16361;
	float _16362;
	_16360 = a;
	_16361 = b;
	_16362 = w;
	float3 _16363 = F__leanFilterCode(_16360, _16361, _16362);
	float _16365 = w * 3.90625000e-03;
	float3 _16367 = lerp(a, b, _16365.xxx);
	float3 _16369 = exact.xxx ? _16363 : _16367;
	float3 _16371 = _16369 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	return _16371;
}
float3 F__leanApproxColumn(
	in int column,
	in float2 uv,
	in uint pairs,
	in float2 delta)
{
	float _16380 = ((float)column) + 5.00000000e-01;
	float _16382 = _16380 / 1.92000000e+03;
	float2 _16384 = float2(_16382, uv.y);
	float2 _16386 = delta * ((float2)pairs.xx);
	float2 _16387 = _16384 - _16386;
	float2 coord_top = _16387;
	float3 acc_16390 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	int i_16392 = 0;
	uint _16399 = pairs * 2u;
	uint _16401 = _16399 + 1u;
	bool _16403 = ((uint)i_16392) < _16401;
	while (_16403)
	{
		{
			float2 _16407 = ((float2)i_16392.xx) * delta;
			float2 _16408 = coord_top + _16407;
			float4 _16413 = float4(_16408.x, _16408.y, 0.00000000e+00, 0.00000000e+00);
			float4 _16414 = V__samplerBeamConvergence.t.SampleLevel(V__samplerBeamConvergence.s, _16413.xy, _16413.w);
			float3 _16416 = acc_16390 + _16414.xyz;
			acc_16390 = _16416;
		}
		int _16405 = i_16392 + 1;
		i_16392 = _16405;
		uint _16399 = pairs * 2u;
		uint _16401 = _16399 + 1u;
		_16403 = ((uint)i_16392) < _16401;
	}
	uint _16418 = pairs * 2u;
	uint _16420 = _16418 + 1u;
	float3 _16422 = acc_16390 / ((float3)_16420.xxx);
	float4 _16427 = float4(_16422.x, _16422.y, _16422.z, 1.00000000e+00);
	float4 _16428;
	_16428 = _16427;
	float4 _16429 = F__leanCode16Rop(_16428);
	return _16429.xyz;
}
void F__leanApproxBloomPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _16437 = rcp(1.08000000e+03);
	float2 _16439 = float2(0.00000000e+00, _16437);
	float2 _16441 = V__blur_radius.xx * _16439;
	float2 dy_16442 = _16441;
	float _16444 = rcp(1.92000000e+03);
	float _16445 = V__blur_radius * _16444;
	float dx_16446 = _16445;
	bool _16451 = V__blur_radius == 1.00000000e+00;
	bool _16453 = _16451 && true;
	if (_16453)
	{
		float _16455 = uv.x - dx_16446;
		float _16457 = _16455 * 1.92000000e+03;
		float _16459 = _16457 - 5.00000000e-01;
		float x_16460 = _16459;
		float _16461 = floor(x_16460);
		int a_16463 = ((int)_16461);
		float _16464 = frac(x_16460);
		float _16466 = _16464 * 2.56000000e+02;
		float _16468 = _16466 + 5.00000000e-01;
		float _16469 = floor(_16468);
		float w_16470 = _16469;
		int _16473 = clamp(a_16463, 0, 1919);
		int _16474;
		float2 _16475;
		uint _16476;
		float2 _16477;
		_16474 = _16473;
		_16475 = uv;
		_16476 = 1u;
		_16477 = dy_16442;
		float3 _16479 = F__leanApproxColumn(_16474, _16475, _16476, _16477);
		float3 c0 = _16479;
		int _16482 = a_16463 + 1;
		int _16485 = clamp(_16482, 0, 1919);
		int _16486;
		float2 _16487;
		uint _16488;
		float2 _16489;
		_16486 = _16485;
		_16487 = uv;
		_16488 = 1u;
		_16489 = dy_16442;
		float3 _16491 = F__leanApproxColumn(_16486, _16487, _16488, _16489);
		float3 c1 = _16491;
		int _16494 = a_16463 + 2;
		int _16497 = clamp(_16494, 0, 1919);
		int _16498;
		float2 _16499;
		uint _16500;
		float2 _16501;
		_16498 = _16497;
		_16499 = uv;
		_16500 = 1u;
		_16501 = dy_16442;
		float3 _16503 = F__leanApproxColumn(_16498, _16499, _16500, _16501);
		float3 c2 = _16503;
		int _16506 = a_16463 + 3;
		int _16509 = clamp(_16506, 0, 1919);
		int _16510;
		float2 _16511;
		uint _16512;
		float2 _16513;
		_16510 = _16509;
		_16511 = uv;
		_16512 = 1u;
		_16513 = dy_16442;
		float3 _16515 = F__leanApproxColumn(_16510, _16511, _16512, _16513);
		float3 c3 = _16515;
		float3 _16517;
		float3 _16518;
		float _16519;
		_16517 = c0;
		_16518 = c1;
		_16519 = w_16470;
		float3 _16520 = F__leanFilterCode(_16517, _16518, _16519);
		float3 _16522 = _16520 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
		float3 _16523;
		float3 _16524;
		float _16525;
		_16523 = c1;
		_16524 = c2;
		_16525 = w_16470;
		float3 _16526 = F__leanFilterCode(_16523, _16524, _16525);
		float3 _16528 = _16526 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
		float3 _16529 = _16522 + _16528;
		float3 _16530;
		float3 _16531;
		float _16532;
		_16530 = c2;
		_16531 = c3;
		_16532 = w_16470;
		float3 _16533 = F__leanFilterCode(_16530, _16531, _16532);
		float3 _16535 = _16533 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
		float3 _16536 = _16529 + _16535;
		float3 _16538 = _16536 / float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
		float4 _16543 = float4(_16538.x, _16538.y, _16538.z, 1.00000000e+00);
		color = _16543;
		return;
	}
	float3 acc_16545 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _16547 = dx_16446 * 1.00000000e+00;
	float _16549 = uv.x - _16547;
	float x_left = _16549;
	int i_16552 = 0;
	while (((uint)i_16552) < 3u)
	{
		{
			float _16564 = ((float)i_16552) * dx_16446;
			float _16565 = x_left + _16564;
			float _16567 = _16565 * 1.92000000e+03;
			float _16569 = _16567 - 5.00000000e-01;
			float x_16570 = _16569;
			float _16571 = floor(x_16570);
			int a_16573 = ((int)_16571);
			float _16574 = frac(x_16570);
			float _16576 = _16574 * 2.56000000e+02;
			float _16578 = _16576 + 5.00000000e-01;
			float _16579 = floor(_16578);
			float w_16580 = _16579;
			int _16583 = clamp(a_16573, 0, 1919);
			int _16584;
			float2 _16585;
			uint _16586;
			float2 _16587;
			_16584 = _16583;
			_16585 = uv;
			_16586 = 1u;
			_16587 = dy_16442;
			float3 _16589 = F__leanApproxColumn(_16584, _16585, _16586, _16587);
			int _16591 = a_16573 + 1;
			int _16594 = clamp(_16591, 0, 1919);
			int _16595;
			float2 _16596;
			uint _16597;
			float2 _16598;
			_16595 = _16594;
			_16596 = uv;
			_16597 = 1u;
			_16598 = dy_16442;
			float3 _16600 = F__leanApproxColumn(_16595, _16596, _16597, _16598);
			float3 _16601;
			float3 _16602;
			float _16603;
			_16601 = _16589;
			_16602 = _16600;
			_16603 = w_16580;
			float3 _16604 = F__leanFilterCode(_16601, _16602, _16603);
			float3 _16606 = _16604 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
			float3 _16607 = acc_16545 + _16606;
			acc_16545 = _16607;
		}
		int _16562 = i_16552 + 1;
		i_16552 = _16562;
	}
	float3 _16609 = acc_16545 / float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
	float4 _16614 = float4(_16609.x, _16609.y, _16609.z, 1.00000000e+00);
	color = _16614;
	return;
}
