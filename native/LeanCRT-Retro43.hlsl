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
static const float3 _14481[64] = { float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00) };
static const float3 _15014[9] = { float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00) };
groupshared float3 V__br_tile[960];
groupshared float3 V__m_tile[512];
groupshared float3 V__vertical[640];
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
Texture2D<unorm float4> __V__samplerFinal_t : register(t20); 
static const __sampler2D_float4 V__samplerFinal = { __V__samplerFinal_t, __s0 };
RWTexture2D<unorm float4> V__bloom_store : register(u0);
RWTexture2D<unorm float4> V__final_store : register(u1);
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
	uint _218 = id & 1u;
	float _222 = ((bool)_218) ? 8.75000000e-01 : 1.25000000e-01;
	texcoord[0] = _222;
	uint _224 = id & 2u;
	float _228 = ((bool)_224) ? 1.00000000e+00 : 0.00000000e+00;
	texcoord[1] = _228;
	uint _230 = id & 1u;
	int _234 = ((bool)_230) ? 1 : -1;
	position[0] = ((float)_234);
	uint _237 = id & 2u;
	int _241 = ((bool)_237) ? -1 : 1;
	position[1] = ((float)_241);
	position.zw = float2(1.00000000e+00, 1.00000000e+00);
	return;
}
void F__contentUncropVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	uint _250 = id & 1u;
	texcoord[0] = ((float)_250);
	uint _253 = id & 2u;
	bool _255 = !((bool)_253);
	texcoord[1] = ((float)_255);
	uint _258 = id & 1u;
	int _262 = ((bool)_258) ? 1 : -1;
	position[0] = ((float)_262);
	uint _265 = id & 2u;
	int _269 = ((bool)_265) ? 1 : -1;
	position[1] = ((float)_269);
	position.zw = float2(1.00000000e+00, 1.00000000e+00);
	return;
}
void F__uncropContentPixelShader(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	bool _279 = texcoord.x >= 1.25000000e-01;
	bool _282 = texcoord.x <= 8.75000000e-01;
	bool _283 = _279 && _282;
	bool _286 = texcoord.y >= 0.00000000e+00;
	bool _287 = _283 && _286;
	bool _290 = texcoord.y <= 1.00000000e+00;
	bool _291 = _287 && _290;
	bool is_in_boundary = ((bool)((float)_291));
	float2 _295 = texcoord - float2(1.25000000e-01, 0.00000000e+00);
	float2 _297 = _295 * float2(1.92000000e+03, 1.08000000e+03);
	float2 _299 = _297 + float2(0.00000000e+00, 0.00000000e+00);
	float2 _301 = _299 / float2(1.44000000e+03, 1.08000000e+03);
	float2 texcoord_uncropped = _301;
	float4 _303 = V__samplerGeometry.t.Sample(V__samplerGeometry.s, texcoord_uncropped);
	float4 raw_color = _303;
	float3 _307 = ((float3)is_in_boundary.xxx) * raw_color.xyz;
	float4 _312 = float4(_307.x, _307.y, _307.z, raw_color.w);
	color = _312;
	return;
}
float3 F__opaque_linear_downsample(
	in __sampler2D_float4 tex,
	in float2 texcoord,
	in uint num_pairs,
	in float2 delta_uv)
{
	uint _320 = num_pairs * 2u;
	uint _322 = _320 + 1u;
	uint total_num_samples = _322;
	float2 _325 = delta_uv * ((float2)num_pairs.xx);
	float2 _326 = texcoord - _325;
	float2 coord_left = _326;
	float3 acc = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	int i = 0;
	while (((uint)i) < total_num_samples)
	{
		{
			float2 _343 = ((float2)i.xx) * delta_uv;
			float2 _344 = coord_left + _343;
			float2 coord = _344;
			float2 _346;
			_346 = coord;
			float4 _347 = F__tex2D_nograd(tex, _346);
			float3 _349 = acc + _347.xyz;
			acc = _349;
		}
		int _340 = i;
		int _341 = _340 + 1;
		i = _341;
	}
	float3 _351 = acc / ((float3)total_num_samples.xxx);
	return _351;
}
float3 F__opaque_lanczos_downsample(
	in __sampler2D_float4 tex,
	in float2 texcoord,
	in uint num_pairs,
	in float2 delta_uv,
	in float num_sinc_lobes,
	in float weight_at_center)
{
	uint _361 = num_pairs * 2u;
	uint _363 = _361 + 1u;
	uint total_num_samples_364 = _363;
	float2 _366 = delta_uv * ((float2)num_pairs.xx);
	float2 _367 = texcoord - _366;
	float2 coord_left_368 = _367;
	float _370 = num_sinc_lobes / ((float)num_pairs);
	float sinc_dx = _370;
	float3 acc_373 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float w_sum = 0.00000000e+00;
	int i_377 = 0;
	while (((uint)i_377) < total_num_samples_364)
	{
		{
			float2 _389 = ((float2)i_377.xx) * delta_uv;
			float2 _390 = coord_left_368 + _389;
			float2 coord_391 = _390;
			float _393 = ((float)i_377) * sinc_dx;
			float sinc_x = _393;
			bool _396 = ((uint)i_377) != num_pairs;
			float _398 = 3.14159274e+00 * sinc_x;
			float _399 = sin(_398);
			float _400 = num_sinc_lobes * _399;
			float _402 = 3.14159274e+00 * sinc_x;
			float _403 = _402 / num_sinc_lobes;
			float _404 = sin(_403);
			float _405 = _400 * _404;
			float _407 = 9.86960506e+00 * sinc_x;
			float _408 = _407 * sinc_x;
			float _409 = _405 / _408;
			float _410 = _396 ? _409 : weight_at_center;
			float weight = _410;
			float2 _412;
			_412 = coord_391;
			float4 _413 = F__tex2D_nograd(tex, _412);
			float3 _416 = weight.xxx * _413.xyz;
			float3 _417 = acc_373 + _416;
			acc_373 = _417;
			float _418 = w_sum + weight;
			w_sum = _418;
		}
		int _386 = i_377;
		int _387 = _386 + 1;
		i_377 = _387;
	}
	float3 _420 = acc_373 / w_sum.xxx;
	return _420;
}
float3 F__opaque_lanczos_downsample(
	in __sampler2D_float4 tex,
	in float2 texcoord,
	in uint num_pairs,
	in float2 delta_uv,
	in float num_sinc_lobes)
{
	float2 _428;
	uint _429;
	float2 _430;
	float _431;
	float _432;
	_428 = texcoord;
	_429 = num_pairs;
	_430 = delta_uv;
	_431 = num_sinc_lobes;
	_432 = 1.00000000e+00;
	float3 _434 = F__opaque_lanczos_downsample(tex, _428, _429, _430, _431, _432);
	return _434;
}
void F__preblurVertPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float2 texcoord_uncropped_440 = texcoord;
	float _442 = rcp(1.08000000e+03);
	float2 _444 = float2(0.00000000e+00, _442);
	float2 _446 = _444 * float2(0.00000000e+00, 0.00000000e+00);
	float2 max_delta_uv = _446;
	int _450 = max(0, 1);
	float _452 = rcp(((float)_450));
	float2 _454 = max_delta_uv * _452.xx;
	float2 delta_uv_455 = _454;
	float2 _456;
	uint _457;
	float2 _458;
	_456 = texcoord_uncropped_440;
	_457 = 0u;
	_458 = delta_uv_455;
	float3 _460 = F__opaque_linear_downsample(V__ReShade__BackBuffer, _456, _457, _458);
	float4 _465 = float4(_460.x, _460.y, _460.z, 1.00000000e+00);
	color = _465;
	return;
}
void F__preblurHorizPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _472 = rcp(1.44000000e+03);
	float2 _474 = float2(_472, 0.00000000e+00);
	float2 _476 = _474 * float2(0.00000000e+00, 0.00000000e+00);
	float2 max_delta_uv_477 = _476;
	int _480 = max(0, 1);
	float _482 = rcp(((float)_480));
	float2 _484 = max_delta_uv_477 * _482.xx;
	float2 delta_uv_485 = _484;
	float2 _486;
	uint _487;
	float2 _488;
	_486 = texcoord;
	_487 = 0u;
	_488 = delta_uv_485;
	float3 _490 = F__opaque_linear_downsample(V__samplerPreblurVert, _486, _487, _488);
	float4 _495 = float4(_490.x, _490.y, _490.z, 1.00000000e+00);
	color = _495;
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
	float _508 = F__get_crt_gamma();
	return _508;
}
float F__get_output_gamma()
{
	float _511 = F__get_lcd_gamma();
	return _511;
}
float4 F__encode_output_opaque(
	in float4 color,
	in float gamma)
{
	float3 _516 = float3(gamma, gamma, gamma);
	float3 _518 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _516;
	float3 g = _518;
	float3 _521 = pow(color.xyz, g);
	float4 _526 = float4(_521.x, _521.y, _521.z, 1.00000000e+00);
	return _526;
}
float4 F__decode_input_opaque(
	in float4 color,
	in float gamma)
{
	float3 _531 = float3(gamma, gamma, gamma);
	float3 g_532 = _531;
	float3 _534 = pow(color.xyz, g_532);
	float4 _539 = float4(_534.x, _534.y, _534.z, 1.00000000e+00);
	return _539;
}
float4 F__encode_output(
	in float4 color,
	in float gamma)
{
	float3 _544 = float3(gamma, gamma, gamma);
	float3 _546 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _544;
	float3 g_547 = _546;
	float3 _549 = pow(color.xyz, g_547);
	float4 _554 = float4(_549.x, _549.y, _549.z, color.w);
	return _554;
}
float4 F__decode_input(
	in float4 color,
	in float gamma)
{
	float3 _559 = float3(gamma, gamma, gamma);
	float3 g_560 = _559;
	float3 _562 = pow(color.xyz, g_560);
	float4 _567 = float4(_562.x, _562.y, _562.z, color.w);
	return _567;
}
float4 F__tex2D_linearize(
	in __sampler2D_float4 tex,
	in float2 tex_coords,
	in float gamma)
{
	float4 _573 = tex.t.Sample(tex.s, tex_coords);
	float4 _574;
	float _575;
	_574 = _573;
	_575 = gamma;
	float4 _576 = F__decode_input(_574, _575);
	return _576;
}
float4 F__tex2D_linearize(
	in __sampler2D_float4 tex,
	in float3 tex_coords,
	in float gamma)
{
	float4 _583 = tex.t.Sample(tex.s, tex_coords.xy);
	float4 _584;
	float _585;
	_584 = _583;
	_585 = gamma;
	float4 _586 = F__decode_input(_584, _585);
	return _586;
}
float4 F__tex2Dlod_linearize(
	in __sampler2D_float4 tex,
	in float2 tex_coords,
	in float gamma)
{
	float4 _596 = float4(tex_coords.x, tex_coords.y, 0.00000000e+00, 0.00000000e+00);
	float4 _598 = tex.t.SampleLevel(tex.s, _596.xy, _596.w, int2(0, 0));
	float4 _599;
	float _600;
	_599 = _598;
	_600 = gamma;
	float4 _601 = F__decode_input(_599, _600);
	return _601;
}
float4 F__tex2Dlod_linearize(
	in __sampler2D_float4 tex,
	in float4 tex_coords,
	in float gamma)
{
	float4 _611 = float4(tex_coords.xy.x, tex_coords.xy.y, 0.00000000e+00, 0.00000000e+00);
	float4 _613 = tex.t.SampleLevel(tex.s, _611.xy, _611.w, int2(0, 0));
	float4 _614;
	float _615;
	_614 = _613;
	_615 = gamma;
	float4 _616 = F__decode_input(_614, _615);
	return _616;
}
float4 F__erf6(
	in float4 x)
{
	float4 _620 = sign(x);
	float4 sign_x = _620;
	float4 _622 = abs(x);
	float4 _624 = float4(4.70470011e-01, 4.70470011e-01, 4.70470011e-01, 4.70470011e-01) * _622;
	float4 _626 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + _624;
	float4 _628 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _626;
	float4 t = _628;
	float4 _631 = t * float4(7.47855604e-01, 7.47855604e-01, 7.47855604e-01, 7.47855604e-01);
	float4 _633 = float4(-9.58798006e-02, -9.58798006e-02, -9.58798006e-02, -9.58798006e-02) + _631;
	float4 _634 = t * _633;
	float4 _636 = float4(3.48024189e-01, 3.48024189e-01, 3.48024189e-01, 3.48024189e-01) + _634;
	float4 _637 = t * _636;
	float4 _638 = x * x;
	float4 _639 = -_638;
	float4 _640 = exp(_639);
	float4 _641 = _637 * _640;
	float4 _643 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _641;
	float4 result = _643;
	float4 _645 = result * sign_x;
	return _645;
}
float3 F__erf6(
	in float3 x)
{
	float3 _649 = sign(x);
	float3 sign_x_650 = _649;
	float3 _651 = abs(x);
	float3 _653 = float3(4.70470011e-01, 4.70470011e-01, 4.70470011e-01) * _651;
	float3 _655 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + _653;
	float3 _657 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _655;
	float3 t_658 = _657;
	float3 _660 = t_658 * float3(7.47855604e-01, 7.47855604e-01, 7.47855604e-01);
	float3 _662 = float3(-9.58798006e-02, -9.58798006e-02, -9.58798006e-02) + _660;
	float3 _663 = t_658 * _662;
	float3 _665 = float3(3.48024189e-01, 3.48024189e-01, 3.48024189e-01) + _663;
	float3 _666 = t_658 * _665;
	float3 _667 = x * x;
	float3 _668 = -_667;
	float3 _669 = exp(_668);
	float3 _670 = _666 * _669;
	float3 _672 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _670;
	float3 result_673 = _672;
	float3 _674 = result_673 * sign_x_650;
	return _674;
}
float2 F__erf6(
	in float2 x)
{
	float2 _678 = sign(x);
	float2 sign_x_679 = _678;
	float2 _680 = abs(x);
	float2 _682 = float2(4.70470011e-01, 4.70470011e-01) * _680;
	float2 _684 = float2(1.00000000e+00, 1.00000000e+00) + _682;
	float2 _686 = float2(1.00000000e+00, 1.00000000e+00) / _684;
	float2 t_687 = _686;
	float2 _689 = t_687 * float2(7.47855604e-01, 7.47855604e-01);
	float2 _691 = float2(-9.58798006e-02, -9.58798006e-02) + _689;
	float2 _692 = t_687 * _691;
	float2 _694 = float2(3.48024189e-01, 3.48024189e-01) + _692;
	float2 _695 = t_687 * _694;
	float2 _696 = x * x;
	float2 _697 = -_696;
	float2 _698 = exp(_697);
	float2 _699 = _695 * _698;
	float2 _701 = float2(1.00000000e+00, 1.00000000e+00) - _699;
	float2 result_702 = _701;
	float2 _703 = result_702 * sign_x_679;
	return _703;
}
float F__erf6(
	in float x)
{
	float _707 = sign(x);
	float sign_x_708 = _707;
	float _709 = abs(x);
	float _711 = 4.70470011e-01 * _709;
	float _713 = 1.00000000e+00 + _711;
	float _715 = 1.00000000e+00 / _713;
	float t_716 = _715;
	float _718 = t_716 * 7.47855604e-01;
	float _720 = -9.58798006e-02 + _718;
	float _721 = t_716 * _720;
	float _723 = 3.48024189e-01 + _721;
	float _724 = t_716 * _723;
	float _725 = x * x;
	float _726 = -_725;
	float _727 = exp(_726);
	float _728 = _724 * _727;
	float _730 = 1.00000000e+00 - _728;
	float result_731 = _730;
	float _732 = result_731 * sign_x_708;
	return _732;
}
float4 F__erft(
	in float4 x)
{
	float4 _737 = float4(1.20276058e+00, 1.20276058e+00, 1.20276058e+00, 1.20276058e+00) * x;
	float4 _738 = tanh(_737);
	return _738;
}
float3 F__erft(
	in float3 x)
{
	float3 _743 = float3(1.20276058e+00, 1.20276058e+00, 1.20276058e+00) * x;
	float3 _744 = tanh(_743);
	return _744;
}
float2 F__erft(
	in float2 x)
{
	float2 _749 = float2(1.20276058e+00, 1.20276058e+00) * x;
	float2 _750 = tanh(_749);
	return _750;
}
float F__erft(
	in float x)
{
	float _755 = 1.20276058e+00 * x;
	float _756 = tanh(_755);
	return _756;
}
float4 F__erf(
	in float4 x)
{
	float4 _760;
	_760 = x;
	float4 _761 = F__erf6(_760);
	return _761;
}
float3 F__erf(
	in float3 x)
{
	float3 _765;
	_765 = x;
	float3 _766 = F__erf6(_765);
	return _766;
}
float2 F__erf(
	in float2 x)
{
	float2 _770;
	_770 = x;
	float2 _771 = F__erf6(_770);
	return _771;
}
float F__erf(
	in float x)
{
	float _775;
	_775 = x;
	float _776 = F__erf6(_775);
	return _776;
}
float4 F__gamma_impl(
	in float4 s,
	in float4 s_inv)
{
	float4 _782 = s + float4(5.00000000e-01, 5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float4 sph = _782;
	float4 _785 = s + float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 _787 = float4(4.80835468e-01, 4.80835468e-01, 4.80835468e-01, 4.80835468e-01) / _785;
	float4 _789 = float4(8.10911953e-01, 8.10911953e-01, 8.10911953e-01, 8.10911953e-01) + _787;
	float4 lanczos_sum = _789;
	float4 _792 = sph + float4(1.12906826e+00, 1.12906826e+00, 1.12906826e+00, 1.12906826e+00);
	float4 _794 = _792 / float4(2.71828175e+00, 2.71828175e+00, 2.71828175e+00, 2.71828175e+00);
	float4 base = _794;
	float4 _796 = pow(base, sph);
	float4 _797 = _796 * lanczos_sum;
	float4 _798 = _797 * s_inv;
	return _798;
}
float3 F__gamma_impl(
	in float3 s,
	in float3 s_inv)
{
	float3 _804 = s + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 sph_805 = _804;
	float3 _807 = s + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _809 = float3(4.80835468e-01, 4.80835468e-01, 4.80835468e-01) / _807;
	float3 _811 = float3(8.10911953e-01, 8.10911953e-01, 8.10911953e-01) + _809;
	float3 lanczos_sum_812 = _811;
	float3 _814 = sph_805 + float3(1.12906826e+00, 1.12906826e+00, 1.12906826e+00);
	float3 _816 = _814 / float3(2.71828175e+00, 2.71828175e+00, 2.71828175e+00);
	float3 base_817 = _816;
	float3 _818 = pow(base_817, sph_805);
	float3 _819 = _818 * lanczos_sum_812;
	float3 _820 = _819 * s_inv;
	return _820;
}
float2 F__gamma_impl(
	in float2 s,
	in float2 s_inv)
{
	float2 _826 = s + float2(5.00000000e-01, 5.00000000e-01);
	float2 sph_827 = _826;
	float2 _829 = s + float2(1.00000000e+00, 1.00000000e+00);
	float2 _831 = float2(4.80835468e-01, 4.80835468e-01) / _829;
	float2 _833 = float2(8.10911953e-01, 8.10911953e-01) + _831;
	float2 lanczos_sum_834 = _833;
	float2 _836 = sph_827 + float2(1.12906826e+00, 1.12906826e+00);
	float2 _838 = _836 / float2(2.71828175e+00, 2.71828175e+00);
	float2 base_839 = _838;
	float2 _840 = pow(base_839, sph_827);
	float2 _841 = _840 * lanczos_sum_834;
	float2 _842 = _841 * s_inv;
	return _842;
}
float F__gamma_impl(
	in float s,
	in float s_inv)
{
	float _848 = s + 5.00000000e-01;
	float sph_849 = _848;
	float _851 = s + 1.00000000e+00;
	float _853 = 4.80835468e-01 / _851;
	float _855 = 8.10911953e-01 + _853;
	float lanczos_sum_856 = _855;
	float _858 = sph_849 + 1.12906826e+00;
	float _860 = _858 / 2.71828175e+00;
	float base_861 = _860;
	float _862 = pow(base_861, sph_849);
	float _863 = _862 * lanczos_sum_856;
	float _864 = _863 * s_inv;
	return _864;
}
float4 F__gamma(
	in float4 s)
{
	float4 _869 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float4 _870;
	float4 _871;
	_870 = s;
	_871 = _869;
	float4 _872 = F__gamma_impl(_870, _871);
	return _872;
}
float3 F__gamma(
	in float3 s)
{
	float3 _877 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float3 _878;
	float3 _879;
	_878 = s;
	_879 = _877;
	float3 _880 = F__gamma_impl(_878, _879);
	return _880;
}
float2 F__gamma(
	in float2 s)
{
	float2 _885 = float2(1.00000000e+00, 1.00000000e+00) / s;
	float2 _886;
	float2 _887;
	_886 = s;
	_887 = _885;
	float2 _888 = F__gamma_impl(_886, _887);
	return _888;
}
float F__gamma(
	in float s)
{
	float _893 = 1.00000000e+00 / s;
	float _894;
	float _895;
	_894 = s;
	_895 = _893;
	float _896 = F__gamma_impl(_894, _895);
	return _896;
}
float4 F__ligamma_small_z_impl(
	in float4 s,
	in float4 z,
	in float4 s_inv)
{
	float4 _902 = pow(z, s);
	float4 scale = _902;
	float4 sum = s_inv;
	float4 _905 = z * z;
	float4 z_sq = _905;
	float4 _908 = s + float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 denom1 = _908;
	float4 _911 = float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float4 _913 = _911 + float4(4.00000000e+00, 4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float4 denom2 = _913;
	float4 _916 = float4(6.00000000e+00, 6.00000000e+00, 6.00000000e+00, 6.00000000e+00) * s;
	float4 _918 = _916 + float4(1.80000000e+01, 1.80000000e+01, 1.80000000e+01, 1.80000000e+01);
	float4 denom3 = _918;
	float4 _920 = z / denom1;
	float4 _921 = sum - _920;
	sum = _921;
	float4 _922 = z_sq / denom2;
	float4 _923 = sum + _922;
	sum = _923;
	float4 _924 = z * z_sq;
	float4 _925 = _924 / denom3;
	float4 _926 = sum - _925;
	sum = _926;
	float4 _927 = scale * sum;
	return _927;
}
float3 F__ligamma_small_z_impl(
	in float3 s,
	in float3 z,
	in float3 s_inv)
{
	float3 _933 = pow(z, s);
	float3 scale_934 = _933;
	float3 sum_935 = s_inv;
	float3 _936 = z * z;
	float3 z_sq_937 = _936;
	float3 _939 = s + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 denom1_940 = _939;
	float3 _942 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float3 _944 = _942 + float3(4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float3 denom2_945 = _944;
	float3 _947 = float3(6.00000000e+00, 6.00000000e+00, 6.00000000e+00) * s;
	float3 _949 = _947 + float3(1.80000000e+01, 1.80000000e+01, 1.80000000e+01);
	float3 denom3_950 = _949;
	float3 _951 = z / denom1_940;
	float3 _952 = sum_935 - _951;
	sum_935 = _952;
	float3 _953 = z_sq_937 / denom2_945;
	float3 _954 = sum_935 + _953;
	sum_935 = _954;
	float3 _955 = z * z_sq_937;
	float3 _956 = _955 / denom3_950;
	float3 _957 = sum_935 - _956;
	sum_935 = _957;
	float3 _958 = scale_934 * sum_935;
	return _958;
}
float2 F__ligamma_small_z_impl(
	in float2 s,
	in float2 z,
	in float2 s_inv)
{
	float2 _964 = pow(z, s);
	float2 scale_965 = _964;
	float2 sum_966 = s_inv;
	float2 _967 = z * z;
	float2 z_sq_968 = _967;
	float2 _970 = s + float2(1.00000000e+00, 1.00000000e+00);
	float2 denom1_971 = _970;
	float2 _973 = float2(2.00000000e+00, 2.00000000e+00) * s;
	float2 _975 = _973 + float2(4.00000000e+00, 4.00000000e+00);
	float2 denom2_976 = _975;
	float2 _978 = float2(6.00000000e+00, 6.00000000e+00) * s;
	float2 _980 = _978 + float2(1.80000000e+01, 1.80000000e+01);
	float2 denom3_981 = _980;
	float2 _982 = z / denom1_971;
	float2 _983 = sum_966 - _982;
	sum_966 = _983;
	float2 _984 = z_sq_968 / denom2_976;
	float2 _985 = sum_966 + _984;
	sum_966 = _985;
	float2 _986 = z * z_sq_968;
	float2 _987 = _986 / denom3_981;
	float2 _988 = sum_966 - _987;
	sum_966 = _988;
	float2 _989 = scale_965 * sum_966;
	return _989;
}
float F__ligamma_small_z_impl(
	in float s,
	in float z,
	in float s_inv)
{
	float _995 = pow(z, s);
	float scale_996 = _995;
	float sum_997 = s_inv;
	float _998 = z * z;
	float z_sq_999 = _998;
	float _1001 = s + 1.00000000e+00;
	float denom1_1002 = _1001;
	float _1004 = 2.00000000e+00 * s;
	float _1006 = _1004 + 4.00000000e+00;
	float denom2_1007 = _1006;
	float _1009 = 6.00000000e+00 * s;
	float _1011 = _1009 + 1.80000000e+01;
	float denom3_1012 = _1011;
	float _1013 = z / denom1_1002;
	float _1014 = sum_997 - _1013;
	sum_997 = _1014;
	float _1015 = z_sq_999 / denom2_1007;
	float _1016 = sum_997 + _1015;
	sum_997 = _1016;
	float _1017 = z * z_sq_999;
	float _1018 = _1017 / denom3_1012;
	float _1019 = sum_997 - _1018;
	sum_997 = _1019;
	float _1020 = scale_996 * sum_997;
	return _1020;
}
float4 F__uigamma_large_z_impl(
	in float4 s,
	in float4 z)
{
	float4 _1025 = pow(z, s);
	float4 _1026 = -z;
	float4 _1027 = exp(_1026);
	float4 _1028 = _1025 * _1027;
	float4 numerator = _1028;
	float4 _1031 = float4(7.00000000e+00, 7.00000000e+00, 7.00000000e+00, 7.00000000e+00) + z;
	float4 _1032 = _1031 - s;
	float4 denom = _1032;
	float4 _1035 = float4(5.00000000e+00, 5.00000000e+00, 5.00000000e+00, 5.00000000e+00) + z;
	float4 _1036 = _1035 - s;
	float4 _1038 = float4(3.00000000e+00, 3.00000000e+00, 3.00000000e+00, 3.00000000e+00) * s;
	float4 _1040 = _1038 - float4(9.00000000e+00, 9.00000000e+00, 9.00000000e+00, 9.00000000e+00);
	float4 _1041 = _1040 / denom;
	float4 _1042 = _1036 + _1041;
	denom = _1042;
	float4 _1044 = float4(3.00000000e+00, 3.00000000e+00, 3.00000000e+00, 3.00000000e+00) + z;
	float4 _1045 = _1044 - s;
	float4 _1047 = float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float4 _1049 = _1047 - float4(4.00000000e+00, 4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float4 _1050 = _1049 / denom;
	float4 _1051 = _1045 + _1050;
	denom = _1051;
	float4 _1053 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + z;
	float4 _1054 = _1053 - s;
	float4 _1056 = s - float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 _1057 = _1056 / denom;
	float4 _1058 = _1054 + _1057;
	denom = _1058;
	float4 _1059 = numerator / denom;
	return _1059;
}
float3 F__uigamma_large_z_impl(
	in float3 s,
	in float3 z)
{
	float3 _1064 = pow(z, s);
	float3 _1065 = -z;
	float3 _1066 = exp(_1065);
	float3 _1067 = _1064 * _1066;
	float3 numerator_1068 = _1067;
	float3 _1070 = float3(7.00000000e+00, 7.00000000e+00, 7.00000000e+00) + z;
	float3 _1071 = _1070 - s;
	float3 denom_1072 = _1071;
	float3 _1074 = float3(5.00000000e+00, 5.00000000e+00, 5.00000000e+00) + z;
	float3 _1075 = _1074 - s;
	float3 _1077 = float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00) * s;
	float3 _1079 = _1077 - float3(9.00000000e+00, 9.00000000e+00, 9.00000000e+00);
	float3 _1080 = _1079 / denom_1072;
	float3 _1081 = _1075 + _1080;
	denom_1072 = _1081;
	float3 _1083 = float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00) + z;
	float3 _1084 = _1083 - s;
	float3 _1086 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * s;
	float3 _1088 = _1086 - float3(4.00000000e+00, 4.00000000e+00, 4.00000000e+00);
	float3 _1089 = _1088 / denom_1072;
	float3 _1090 = _1084 + _1089;
	denom_1072 = _1090;
	float3 _1092 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) + z;
	float3 _1093 = _1092 - s;
	float3 _1095 = s - float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _1096 = _1095 / denom_1072;
	float3 _1097 = _1093 + _1096;
	denom_1072 = _1097;
	float3 _1098 = numerator_1068 / denom_1072;
	return _1098;
}
float2 F__uigamma_large_z_impl(
	in float2 s,
	in float2 z)
{
	float2 _1103 = pow(z, s);
	float2 _1104 = -z;
	float2 _1105 = exp(_1104);
	float2 _1106 = _1103 * _1105;
	float2 numerator_1107 = _1106;
	float2 _1109 = float2(7.00000000e+00, 7.00000000e+00) + z;
	float2 _1110 = _1109 - s;
	float2 denom_1111 = _1110;
	float2 _1113 = float2(5.00000000e+00, 5.00000000e+00) + z;
	float2 _1114 = _1113 - s;
	float2 _1116 = float2(3.00000000e+00, 3.00000000e+00) * s;
	float2 _1118 = _1116 - float2(9.00000000e+00, 9.00000000e+00);
	float2 _1119 = _1118 / denom_1111;
	float2 _1120 = _1114 + _1119;
	denom_1111 = _1120;
	float2 _1122 = float2(3.00000000e+00, 3.00000000e+00) + z;
	float2 _1123 = _1122 - s;
	float2 _1125 = float2(2.00000000e+00, 2.00000000e+00) * s;
	float2 _1127 = _1125 - float2(4.00000000e+00, 4.00000000e+00);
	float2 _1128 = _1127 / denom_1111;
	float2 _1129 = _1123 + _1128;
	denom_1111 = _1129;
	float2 _1131 = float2(1.00000000e+00, 1.00000000e+00) + z;
	float2 _1132 = _1131 - s;
	float2 _1134 = s - float2(1.00000000e+00, 1.00000000e+00);
	float2 _1135 = _1134 / denom_1111;
	float2 _1136 = _1132 + _1135;
	denom_1111 = _1136;
	float2 _1137 = numerator_1107 / denom_1111;
	return _1137;
}
float F__uigamma_large_z_impl(
	in float s,
	in float z)
{
	float _1142 = pow(z, s);
	float _1143 = -z;
	float _1144 = exp(_1143);
	float _1145 = _1142 * _1144;
	float numerator_1146 = _1145;
	float _1148 = 7.00000000e+00 + z;
	float _1149 = _1148 - s;
	float denom_1150 = _1149;
	float _1152 = 5.00000000e+00 + z;
	float _1153 = _1152 - s;
	float _1155 = 3.00000000e+00 * s;
	float _1157 = _1155 - 9.00000000e+00;
	float _1158 = _1157 / denom_1150;
	float _1159 = _1153 + _1158;
	denom_1150 = _1159;
	float _1161 = 3.00000000e+00 + z;
	float _1162 = _1161 - s;
	float _1164 = 2.00000000e+00 * s;
	float _1166 = _1164 - 4.00000000e+00;
	float _1167 = _1166 / denom_1150;
	float _1168 = _1162 + _1167;
	denom_1150 = _1168;
	float _1170 = 1.00000000e+00 + z;
	float _1171 = _1170 - s;
	float _1173 = s - 1.00000000e+00;
	float _1174 = _1173 / denom_1150;
	float _1175 = _1171 + _1174;
	denom_1150 = _1175;
	float _1176 = numerator_1146 / denom_1150;
	return _1176;
}
float4 F__normalized_ligamma_impl(
	in float4 s,
	in float4 z,
	in float4 s_inv,
	in float4 gamma_s_inv)
{
	int4 z_is_large = int4(0, 0, 0, 0);
	bool _1187 = z.x > 7.75075018e-01;
	z_is_large[0] = ((int)_1187);
	bool _1191 = z.y > 7.75075018e-01;
	z_is_large[1] = ((int)_1191);
	bool _1195 = z.z > 7.75075018e-01;
	z_is_large[2] = ((int)_1195);
	bool _1199 = z.w > 7.75075018e-01;
	z_is_large[3] = ((int)_1199);
	float4 _1201;
	float4 _1202;
	_1201 = s;
	_1202 = z;
	float4 _1203 = F__uigamma_large_z_impl(_1201, _1202);
	float4 _1204 = _1203 * gamma_s_inv;
	float4 _1206 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _1204;
	float4 large_z = _1206;
	float4 _1208;
	float4 _1209;
	float4 _1210;
	_1208 = s;
	_1209 = z;
	_1210 = s_inv;
	float4 _1211 = F__ligamma_small_z_impl(_1208, _1209, _1210);
	float4 _1212 = _1211 * gamma_s_inv;
	float4 small_z = _1212;
	int4 _1214 = ~z_is_large;
	float4 _1216 = saturate(((float4)_1214));
	int4 inverse_z_is_large = ((int4)_1216);
	float4 _1220 = large_z * ((float4)z_is_large);
	float4 _1222 = small_z * ((float4)inverse_z_is_large);
	float4 _1223 = _1220 + _1222;
	return _1223;
}
float3 F__normalized_ligamma_impl(
	in float3 s,
	in float3 z,
	in float3 s_inv,
	in float3 gamma_s_inv)
{
	int3 z_is_large_1231 = int3(0, 0, 0);
	bool _1234 = z.x > 7.75075018e-01;
	z_is_large_1231[0] = ((int)_1234);
	bool _1238 = z.y > 7.75075018e-01;
	z_is_large_1231[1] = ((int)_1238);
	bool _1242 = z.z > 7.75075018e-01;
	z_is_large_1231[2] = ((int)_1242);
	float3 _1244;
	float3 _1245;
	_1244 = s;
	_1245 = z;
	float3 _1246 = F__uigamma_large_z_impl(_1244, _1245);
	float3 _1247 = _1246 * gamma_s_inv;
	float3 _1249 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _1247;
	float3 large_z_1250 = _1249;
	float3 _1251;
	float3 _1252;
	float3 _1253;
	_1251 = s;
	_1252 = z;
	_1253 = s_inv;
	float3 _1254 = F__ligamma_small_z_impl(_1251, _1252, _1253);
	float3 _1255 = _1254 * gamma_s_inv;
	float3 small_z_1256 = _1255;
	int3 _1257 = ~z_is_large_1231;
	float3 _1259 = saturate(((float3)_1257));
	int3 inverse_z_is_large_1261 = ((int3)_1259);
	float3 _1263 = large_z_1250 * ((float3)z_is_large_1231);
	float3 _1265 = small_z_1256 * ((float3)inverse_z_is_large_1261);
	float3 _1266 = _1263 + _1265;
	return _1266;
}
float2 F__normalized_ligamma_impl(
	in float2 s,
	in float2 z,
	in float2 s_inv,
	in float2 gamma_s_inv)
{
	int2 z_is_large_1274 = int2(0, 0);
	bool _1277 = z.x > 7.75075018e-01;
	z_is_large_1274[0] = ((int)_1277);
	bool _1281 = z.y > 7.75075018e-01;
	z_is_large_1274[1] = ((int)_1281);
	float2 _1283;
	float2 _1284;
	_1283 = s;
	_1284 = z;
	float2 _1285 = F__uigamma_large_z_impl(_1283, _1284);
	float2 _1286 = _1285 * gamma_s_inv;
	float2 _1288 = float2(1.00000000e+00, 1.00000000e+00) - _1286;
	float2 large_z_1289 = _1288;
	float2 _1290;
	float2 _1291;
	float2 _1292;
	_1290 = s;
	_1291 = z;
	_1292 = s_inv;
	float2 _1293 = F__ligamma_small_z_impl(_1290, _1291, _1292);
	float2 _1294 = _1293 * gamma_s_inv;
	float2 small_z_1295 = _1294;
	int2 _1296 = ~z_is_large_1274;
	float2 _1298 = saturate(((float2)_1296));
	int2 inverse_z_is_large_1300 = ((int2)_1298);
	float2 _1302 = large_z_1289 * ((float2)z_is_large_1274);
	float2 _1304 = small_z_1295 * ((float2)inverse_z_is_large_1300);
	float2 _1305 = _1302 + _1304;
	return _1305;
}
float F__normalized_ligamma_impl(
	in float s,
	in float z,
	in float s_inv,
	in float gamma_s_inv)
{
	bool _1313 = z > 7.75075018e-01;
	bool z_is_large_1314 = _1313;
	float _1315;
	float _1316;
	_1315 = s;
	_1316 = z;
	float _1317 = F__uigamma_large_z_impl(_1315, _1316);
	float _1318 = _1317 * gamma_s_inv;
	float _1320 = 1.00000000e+00 - _1318;
	float large_z_1321 = _1320;
	float _1322;
	float _1323;
	float _1324;
	_1322 = s;
	_1323 = z;
	_1324 = s_inv;
	float _1325 = F__ligamma_small_z_impl(_1322, _1323, _1324);
	float _1326 = _1325 * gamma_s_inv;
	float small_z_1327 = _1326;
	float _1329 = large_z_1321 * ((float)z_is_large_1314);
	bool _1330 = !z_is_large_1314;
	float _1332 = small_z_1327 * ((float)_1330);
	float _1333 = _1329 + _1332;
	return _1333;
}
float4 F__normalized_ligamma(
	in float4 s,
	in float4 z)
{
	float4 _1339 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float4 s_inv_1340 = _1339;
	float4 _1341;
	float4 _1342;
	_1341 = s;
	_1342 = s_inv_1340;
	float4 _1343 = F__gamma_impl(_1341, _1342);
	float4 _1345 = float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _1343;
	float4 gamma_s_inv_1346 = _1345;
	float4 _1347;
	float4 _1348;
	float4 _1349;
	float4 _1350;
	_1347 = s;
	_1348 = z;
	_1349 = s_inv_1340;
	_1350 = gamma_s_inv_1346;
	float4 _1351 = F__normalized_ligamma_impl(_1347, _1348, _1349, _1350);
	return _1351;
}
float3 F__normalized_ligamma(
	in float3 s,
	in float3 z)
{
	float3 _1357 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / s;
	float3 s_inv_1358 = _1357;
	float3 _1359;
	float3 _1360;
	_1359 = s;
	_1360 = s_inv_1358;
	float3 _1361 = F__gamma_impl(_1359, _1360);
	float3 _1363 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _1361;
	float3 gamma_s_inv_1364 = _1363;
	float3 _1365;
	float3 _1366;
	float3 _1367;
	float3 _1368;
	_1365 = s;
	_1366 = z;
	_1367 = s_inv_1358;
	_1368 = gamma_s_inv_1364;
	float3 _1369 = F__normalized_ligamma_impl(_1365, _1366, _1367, _1368);
	return _1369;
}
float2 F__normalized_ligamma(
	in float2 s,
	in float2 z)
{
	float2 _1375 = float2(1.00000000e+00, 1.00000000e+00) / s;
	float2 s_inv_1376 = _1375;
	float2 _1377;
	float2 _1378;
	_1377 = s;
	_1378 = s_inv_1376;
	float2 _1379 = F__gamma_impl(_1377, _1378);
	float2 _1381 = float2(1.00000000e+00, 1.00000000e+00) / _1379;
	float2 gamma_s_inv_1382 = _1381;
	float2 _1383;
	float2 _1384;
	float2 _1385;
	float2 _1386;
	_1383 = s;
	_1384 = z;
	_1385 = s_inv_1376;
	_1386 = gamma_s_inv_1382;
	float2 _1387 = F__normalized_ligamma_impl(_1383, _1384, _1385, _1386);
	return _1387;
}
float F__normalized_ligamma(
	in float s,
	in float z)
{
	float _1393 = 1.00000000e+00 / s;
	float s_inv_1394 = _1393;
	float _1395;
	float _1396;
	_1395 = s;
	_1396 = s_inv_1394;
	float _1397 = F__gamma_impl(_1395, _1396);
	float _1399 = 1.00000000e+00 / _1397;
	float gamma_s_inv_1400 = _1399;
	float _1401;
	float _1402;
	float _1403;
	float _1404;
	_1401 = s;
	_1402 = z;
	_1403 = s_inv_1394;
	_1404 = gamma_s_inv_1400;
	float _1405 = F__normalized_ligamma_impl(_1401, _1402, _1403, _1404);
	return _1405;
}
float2 F__round_coord(
	in float2 c,
	in float2 starting_position,
	in float2 bin_size)
{
	float2 _1411 = c - starting_position;
	float2 adj_c = _1411;
	float2 _1413 = adj_c / bin_size;
	float2 _1414 = frac(_1413);
	float2 _1415 = _1414 * bin_size;
	float2 _1416 = c - _1415;
	float2 _1418 = bin_size * float2(5.00000000e-01, 5.00000000e-01);
	float2 _1419 = _1416 + _1418;
	return _1419;
}
S__InterpolationFieldData F__precalc_interpolation_field_data(
	in float2 texcoord)
{
	S__InterpolationFieldData data = (S__InterpolationFieldData)0;
	data.triangle_wave_freq = 2.00000000e+00;
	float _1429 = 2.00000000e+00 * data.triangle_wave_freq;
	float _1430 = rcp(_1429);
	float _1432 = texcoord.y + _1430;
	float _1435 = data.triangle_wave_freq * 5.00000000e-01;
	float _1436 = _1432 * _1435;
	float _1437 = frac(_1436);
	float _1439 = 2.00000000e+00 * _1437;
	float _1441 = 1.00000000e+00 - _1439;
	float _1442 = abs(_1441);
	float _1444 = _1442 * 2.00000000e+00;
	float _1446 = _1444 - 1.00000000e+00;
	float field_wave = _1446;
	bool _1449 = field_wave >= 0.00000000e+00;
	data.scanline_parity = _1449;
	return data;
}
S__InterpolationFieldData F__calc_interpolation_field_data(
	in float2 texcoord,
	in float scale)
{
	S__InterpolationFieldData data_1455 = (S__InterpolationFieldData)0;
	float _1457 = rcp(((float)V__scanline_thickness));
	float _1458 = scale * _1457;
	data_1455.triangle_wave_freq = _1458;
	uint _1460 = V__frame_count % 2u;
	bool _1462 = _1460 == 1u;
	bool _1464 = V__scanline_deinterlacing_mode != 1u;
	bool _1465 = _1462 && _1464;
	bool frame_count_parity = _1465;
	bool _1467 = !V__interlace_back_field_first;
	bool _1468 = frame_count_parity && _1467;
	bool _1469 = !frame_count_parity;
	bool _1470 = _1469 && V__interlace_back_field_first;
	bool _1471 = _1468 || _1470;
	data_1455.field_parity = _1471;
	float _1474 = 2.00000000e+00 * data_1455.triangle_wave_freq;
	float _1475 = rcp(_1474);
	float _1477 = texcoord.y + _1475;
	float _1480 = data_1455.triangle_wave_freq * 5.00000000e-01;
	float _1481 = _1477 * _1480;
	float _1482 = frac(_1481);
	float _1484 = 2.00000000e+00 * _1482;
	float _1486 = 1.00000000e+00 - _1484;
	float _1487 = abs(_1486);
	float _1489 = _1487 * 2.00000000e+00;
	float _1491 = _1489 - 1.00000000e+00;
	float field_wave_1492 = _1491;
	bool _1494 = field_wave_1492 >= 0.00000000e+00;
	data_1455.scanline_parity = _1494;
	bool _1496 = !data_1455.field_parity;
	bool _1498 = data_1455.scanline_parity && _1496;
	bool _1500 = !data_1455.scanline_parity;
	bool _1502 = _1500 && data_1455.field_parity;
	bool _1503 = _1498 || _1502;
	bool wrong_field_raw = _1503;
	bool _1505 = V__enable_interlacing && wrong_field_raw;
	data_1455.wrong_field = _1505;
	return data_1455;
}
float F__get_gaussian_sigma(
	in float color,
	in float sigma_range)
{
	if (true)
	{
		float _1514 = pow(color, V__gaussian_beam_spot_power);
		float _1515 = sigma_range * _1514;
		float _1516 = V__gaussian_beam_min_sigma + _1515;
		return _1516;
	}
	else
	{
		float _1518 = color - 1.00000000e+00;
		float color_minus_1 = _1518;
		float _1520 = color_minus_1 * color_minus_1;
		float _1522 = 1.00000000e+00 - _1520;
		float _1523 = sqrt(_1522);
		float _1524 = sigma_range * _1523;
		float _1525 = V__gaussian_beam_min_sigma + _1524;
		return _1525;
	}
}
float F__get_generalized_gaussian_beta(
	in float color,
	in float shape_range)
{
	float _1530 = pow(color, V__gaussian_beam_shape_power);
	float _1531 = shape_range * _1530;
	float _1532 = V__gaussian_beam_min_shape + _1531;
	return _1532;
}
float3 F__get_raw_interpolated_color(
	in float3 color0,
	in float3 color1,
	in float3 color2,
	in float3 color3,
	in float4 weights)
{
	float4x3 _1552 = float4x3(color0.x, color0.y, color0.z, color1.x, color1.y, color1.z, color2.x, color2.y, color2.z, color3.x, color3.y, color3.z);
	float4x3 mtrx = _1552;
	float3 _1554 = mul(weights, mtrx);
	float3 m = _1554;
	float3 _1557 = max(m, float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00));
	return _1557;
}
float3 F__get_interpolated_linear_color(
	in float3 color0,
	in float3 color1,
	in float3 color2,
	in float3 color3,
	in float4 weights)
{
	float _1565 = F__get_intermediate_gamma();
	float intermediate_gamma = _1565;
	float _1568 = 1.00000000e+00 / intermediate_gamma;
	float inv_intermediate_gamma = _1568;
	float3 _1570;
	float3 _1571;
	float3 _1572;
	float3 _1573;
	float4 _1574;
	_1570 = color0;
	_1571 = color1;
	_1572 = color2;
	_1573 = color3;
	_1574 = weights;
	float3 _1575 = F__get_raw_interpolated_color(_1570, _1571, _1572, _1573, _1574);
	float3 linear_mixed_color = _1575;
	float3 _1578 = pow(color0, inv_intermediate_gamma.xxx);
	float3 _1580 = pow(color1, inv_intermediate_gamma.xxx);
	float3 _1582 = pow(color2, inv_intermediate_gamma.xxx);
	float3 _1584 = pow(color3, inv_intermediate_gamma.xxx);
	float3 _1585;
	float3 _1586;
	float3 _1587;
	float3 _1588;
	float4 _1589;
	_1585 = _1578;
	_1586 = _1580;
	_1587 = _1582;
	_1588 = _1584;
	_1589 = weights;
	float3 _1590 = F__get_raw_interpolated_color(_1585, _1586, _1587, _1588, _1589);
	float3 gamma_mixed_color = _1590;
	float3 _1593 = lerp(gamma_mixed_color, linear_mixed_color, V__beam_horiz_linear_rgb_weight.xxx);
	return _1593;
}
float3 F__get_scanline_color(
	in __sampler2D_float4 tex,
	in float2 scanline_uv,
	in float2 uv_step_x,
	in float4 weights)
{
	float _1600 = F__get_input_gamma();
	float2 _1601;
	float _1602;
	_1601 = scanline_uv;
	_1602 = _1600;
	float4 _1603 = F__tex2D_linearize(tex, _1601, _1602);
	float3 color1_1605 = _1603.xyz;
	float2 _1606 = scanline_uv + uv_step_x;
	float _1607 = F__get_input_gamma();
	float2 _1608;
	float _1609;
	_1608 = _1606;
	_1609 = _1607;
	float4 _1610 = F__tex2D_linearize(tex, _1608, _1609);
	float3 color2_1612 = _1610.xyz;
	float3 color0_1614 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 color3_1616 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _1622 = ((float)V__beam_horiz_filter) > 5.00000000e-01;
	if (_1622)
	{
		float2 _1623 = scanline_uv - uv_step_x;
		float _1624 = F__get_input_gamma();
		float2 _1625;
		float _1626;
		_1625 = _1623;
		_1626 = _1624;
		float4 _1627 = F__tex2D_linearize(tex, _1625, _1626);
		color0_1614 = _1627.xyz;
		float2 _1630 = float2(2.00000000e+00, 2.00000000e+00) * uv_step_x;
		float2 _1631 = scanline_uv + _1630;
		float _1632 = F__get_input_gamma();
		float2 _1633;
		float _1634;
		_1633 = _1631;
		_1634 = _1632;
		float4 _1635 = F__tex2D_linearize(tex, _1633, _1634);
		color3_1616 = _1635.xyz;
	}
	float3 _1637;
	float3 _1638;
	float3 _1639;
	float3 _1640;
	float4 _1641;
	_1637 = color0_1614;
	_1638 = color1_1605;
	_1639 = color2_1612;
	_1640 = color3_1616;
	_1641 = weights;
	float3 _1642 = F__get_interpolated_linear_color(_1637, _1638, _1639, _1640, _1641);
	return _1642;
}
float3 F__sample_single_scanline_horizontal(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 tex_size,
	in float2 texture_size_inv)
{
	float2 _1649 = tex_uv * tex_size;
	float2 curr_texel = _1649;
	float2 _1652 = curr_texel - float2(4.99500006e-01, 4.99500006e-01);
	float2 _1653 = floor(_1652);
	float2 _1655 = _1653 + float2(5.00000000e-01, 5.00000000e-01);
	float2 prev_texel = _1655;
	float2 _1659 = float2(prev_texel.x, curr_texel.y);
	float2 prev_texel_hor = _1659;
	float2 _1661 = prev_texel_hor * texture_size_inv;
	float2 prev_texel_hor_uv = _1661;
	float _1665 = curr_texel.x - prev_texel_hor.x;
	float prev_dist = _1665;
	float _1668 = 1.00000000e+00 + prev_dist;
	float _1670 = 1.00000000e+00 - prev_dist;
	float _1672 = 2.00000000e+00 - prev_dist;
	float4 _1673 = float4(_1668, prev_dist, _1670, _1672);
	float4 sample_dists = _1673;
	float4 weights_1676 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _1682 = ((float)V__beam_horiz_filter) < 5.00000000e-01;
	if (_1682)
	{
		weights_1676 = float4(0.00000000e+00, 1.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	}
	else
	{
		bool _1689 = ((float)V__beam_horiz_filter) < 1.50000000e+00;
		if (_1689)
		{
			float x_1691 = sample_dists.y;
			float _1692 = x_1691 * x_1691;
			float _1693 = _1692 * x_1691;
			float _1695 = x_1691 * 6.00000000e+00;
			float _1697 = _1695 - 1.50000000e+01;
			float _1698 = x_1691 * _1697;
			float _1700 = _1698 + 1.00000000e+01;
			float _1701 = _1693 * _1700;
			float w2 = _1701;
			float _1704 = 1.00000000e+00 - w2;
			float4 _1707 = float4(0.00000000e+00, _1704, w2, 0.00000000e+00);
			weights_1676 = _1707;
		}
		else
		{
			bool _1713 = ((float)V__beam_horiz_filter) < 2.50000000e+00;
			if (_1713)
			{
				float _1715 = 2.00000000e+00 * V__beam_horiz_sigma;
				float _1716 = _1715 * V__beam_horiz_sigma;
				float _1718 = 1.00000000e+00 / _1716;
				float inner_denom_inv = _1718;
				float4 _1720 = sample_dists * sample_dists;
				float4 _1721 = -_1720;
				float4 _1723 = _1721 * inner_denom_inv.xxxx;
				float4 _1724 = exp(_1723);
				weights_1676 = _1724;
			}
			else
			{
				float4 _1726 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				float4 _1728 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1730 = _1728 != float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1732 = -((int)_1730.x);
				float4 _1734 = _1726 * ((float4)_1732.xxxx);
				float4 _1736 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1738 = _1736 > float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1740 = -((int)_1738.x);
				float4 _1742 = _1734 * ((float4)_1740.xxxx);
				float4 _1744 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				float4 _1746 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1748 = _1746 != float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1750 = -((int)_1748.x);
				float4 _1752 = _1744 * ((float4)_1750.xxxx);
				float4 _1754 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1756 = _1754 > float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1758 = -((int)_1756.x);
				float4 _1760 = _1752 * ((float4)_1758.xxxx);
				bool4 _1762 = _1760 >= float4(1.52587891e-05, 1.52587891e-05, 1.52587891e-05, 1.52587891e-05);
				float4 _1764 = _1742 * ((float4)((int)_1762.x).xxxx);
				float4 _1766 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				float4 _1768 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1770 = _1768 != float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1772 = -((int)_1770.x);
				float4 _1774 = _1766 * ((float4)_1772.xxxx);
				float4 _1776 = sample_dists * float4(3.14159274e+00, 3.14159274e+00, 3.14159274e+00, 3.14159274e+00);
				bool4 _1778 = _1776 > float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
				int _1780 = -((int)_1778.x);
				float4 _1782 = _1774 * ((float4)_1780.xxxx);
				bool4 _1784 = _1782 < float4(1.52587891e-05, 1.52587891e-05, 1.52587891e-05, 1.52587891e-05);
				float _1787 = 1.52587891e-05 * ((float)((int)_1784.x));
				float4 _1789 = _1764 + _1787.xxxx;
				float4 pi_dists = _1789;
				float4 _1791 = sin(pi_dists);
				float4 _1793 = float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _1791;
				float4 _1795 = pi_dists * float4(5.00000000e-01, 5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
				float4 _1796 = sin(_1795);
				float4 _1797 = _1793 * _1796;
				float4 _1798 = pi_dists * pi_dists;
				float4 _1799 = _1797 / _1798;
				weights_1676 = _1799;
			}
		}
	}
	float _1801 = dot(weights_1676, float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float4 _1803 = weights_1676 / _1801.xxxx;
	float4 final_weights = _1803;
	float2 _1807 = float2(texture_size_inv.x, 0.00000000e+00);
	float2 uv_step_x_1808 = _1807;
	float2 _1809;
	float2 _1810;
	float4 _1811;
	_1809 = prev_texel_hor_uv;
	_1810 = uv_step_x_1808;
	_1811 = final_weights;
	float3 _1812 = F__get_scanline_color(tex, _1809, _1810, _1811);
	return _1812;
}
float3 F__sample_rgb_scanline(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 tex_size,
	in float2 texture_size_inv)
{
	if (true)
	{
		float3 _1823 = F__get_convergence_offsets_x_vector();
		float3 convergence_offsets_rgb_x = _1823;
		float3 _1825 = F__get_convergence_offsets_y_vector();
		float3 convergence_offsets_rgb_y = _1825;
		float3 _1828 = convergence_offsets_rgb_x * texture_size_inv.x.xxx;
		float3 offset_u_rgb = _1828;
		float3 _1831 = convergence_offsets_rgb_y * texture_size_inv.y.xxx;
		float3 offset_v_rgb = _1831;
		float2 _1835 = float2(offset_u_rgb.x, offset_v_rgb.x);
		float2 _1836 = tex_uv - _1835;
		float2 scanline_uv_r = _1836;
		float2 _1840 = float2(offset_u_rgb.y, offset_v_rgb.y);
		float2 _1841 = tex_uv - _1840;
		float2 scanline_uv_g = _1841;
		float2 _1845 = float2(offset_u_rgb.z, offset_v_rgb.z);
		float2 _1846 = tex_uv - _1845;
		float2 scanline_uv_b = _1846;
		float4 _1848 = tex.t.Sample(tex.s, scanline_uv_r);
		float4 sample_r = _1848;
		float4 _1850 = tex.t.Sample(tex.s, scanline_uv_g);
		float4 sample_g = _1850;
		float4 _1852 = tex.t.Sample(tex.s, scanline_uv_b);
		float4 sample_b = _1852;
		float3 _1857 = float3(sample_r.x, sample_g.y, sample_b.z);
		return _1857;
	}
	else
	{
		float2 _1858;
		float2 _1859;
		float2 _1860;
		_1858 = tex_uv;
		_1859 = tex_size;
		_1860 = texture_size_inv;
		float3 _1861 = F__sample_single_scanline_horizontal(tex, _1858, _1859, _1860);
		return _1861;
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
		float3 _1872 = F__get_convergence_offsets_x_vector();
		float3 convergence_offsets_rgb = _1872;
		float3 _1875 = convergence_offsets_rgb * texture_size_inv.xxx;
		float3 offset_u_rgb_1876 = _1875;
		float2 _1879 = float2(offset_u_rgb_1876.x, 0.00000000e+00);
		float2 _1880 = tex_uv - _1879;
		float2 scanline_uv_r_1881 = _1880;
		float2 _1884 = float2(offset_u_rgb_1876.y, 0.00000000e+00);
		float2 _1885 = tex_uv - _1884;
		float2 scanline_uv_g_1886 = _1885;
		float2 _1889 = float2(offset_u_rgb_1876.z, 0.00000000e+00);
		float2 _1890 = tex_uv - _1889;
		float2 scanline_uv_b_1891 = _1890;
		float2 _1892;
		float2 _1893;
		float2 _1894;
		_1892 = scanline_uv_r_1881;
		_1893 = tex_size;
		_1894 = texture_size_inv;
		float3 _1895 = F__sample_single_scanline_horizontal(tex, _1892, _1893, _1894);
		float3 sample_r_1896 = _1895;
		float2 _1897;
		float2 _1898;
		float2 _1899;
		_1897 = scanline_uv_g_1886;
		_1898 = tex_size;
		_1899 = texture_size_inv;
		float3 _1900 = F__sample_single_scanline_horizontal(tex, _1897, _1898, _1899);
		float3 sample_g_1901 = _1900;
		float2 _1902;
		float2 _1903;
		float2 _1904;
		_1902 = scanline_uv_b_1891;
		_1903 = tex_size;
		_1904 = texture_size_inv;
		float3 _1905 = F__sample_single_scanline_horizontal(tex, _1902, _1903, _1904);
		float3 sample_b_1906 = _1905;
		float3 _1910 = float3(sample_r_1896.x, sample_g_1901.y, sample_b_1906.z);
		return _1910;
	}
	else
	{
		float2 _1911;
		float2 _1912;
		float2 _1913;
		_1911 = tex_uv;
		_1912 = tex_size;
		_1913 = texture_size_inv;
		float3 _1914 = F__sample_single_scanline_horizontal(tex, _1911, _1912, _1913);
		return _1914;
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
	int i_1925 = 0;
	while (((uint)i_1925) < V__scanline_thickness)
	{
		{
			float _1937 = ((float)i_1925) * v_step_y;
			float _1938 = scanline_start_y + _1937;
			float4 _1942 = float4(texcoord.x, _1938, 0.00000000e+00, 0.00000000e+00);
			float4 coord_1943 = _1942;
			float4 _1944;
			float _1945;
			_1944 = coord_1943;
			_1945 = input_gamma;
			float4 _1946 = F__tex2Dlod_linearize(tex, _1944, _1945);
			float3 _1948 = interpolated_line + _1946.xyz;
			interpolated_line = _1948;
		}
		int _1934 = i_1925;
		int _1935 = _1934 + 1;
		i_1925 = _1935;
	}
	float3 _1950 = interpolated_line / ((float)V__scanline_thickness).xxx;
	interpolated_line = _1950;
	return interpolated_line;
}
float F__get_beam_strength(
	in float dist,
	in float color,
	in float sigma_range,
	in float shape_range)
{
	float _1957;
	float _1958;
	_1957 = color;
	_1958 = sigma_range;
	float _1959 = F__get_gaussian_sigma(_1957, _1958);
	float sigma = _1959;
	float _1962 = 1.00000000e+00 / sigma;
	float sigma_inv = _1962;
	float _1965 = 5.00000000e-01 * sigma_inv;
	float _1966 = _1965 * sigma_inv;
	float inner_denom_inv_1967 = _1966;
	float _1969 = sqrt(6.28318548e+00);
	float _1970 = sigma_inv / _1969;
	float outer_denom_inv = _1970;
	float _1972 = dist * dist;
	float _1973 = -_1972;
	float _1974 = _1973 * inner_denom_inv_1967;
	float _1975 = exp(_1974);
	float _1976 = color * _1975;
	float _1977 = _1976 * outer_denom_inv;
	return _1977;
}
float F__get_gaussian_beam_strength(
	in float dist,
	in float color,
	in float sigma_range,
	in float shape_range)
{
	float _1985 = sqrt(2.00000000e+00);
	float _1986;
	float _1987;
	_1986 = color;
	_1987 = sigma_range;
	float _1988 = F__get_gaussian_sigma(_1986, _1987);
	float _1989 = _1985 * _1988;
	float alpha = _1989;
	float _1991;
	float _1992;
	_1991 = color;
	_1992 = shape_range;
	float _1993 = F__get_generalized_gaussian_beta(_1991, _1992);
	float beta = _1993;
	float _1996 = 1.00000000e+00 / alpha;
	float alpha_inv = _1996;
	float _1999 = 1.00000000e+00 / beta;
	float beta_inv = _1999;
	float _2001 = color * beta;
	float _2003 = _2001 * 5.00000000e-01;
	float _2004 = _2003 * alpha_inv;
	float _2005;
	float _2006;
	_2005 = beta_inv;
	_2006 = beta;
	float _2007 = F__gamma_impl(_2005, _2006);
	float _2008 = _2004 / _2007;
	float scale_2009 = _2008;
	float _2010 = dist * alpha_inv;
	float _2011 = abs(_2010);
	float _2012 = pow(_2011, beta);
	float _2013 = -_2012;
	float _2014 = exp(_2013);
	float _2015 = scale_2009 * _2014;
	return _2015;
}
float F__get_linear_beam_strength(
	in float dist,
	in float color,
	in float num_pixels,
	in bool interlaced)
{
	float _2022 = abs(dist);
	float _2024 = 1.00000000e+00 - _2022;
	float _2025 = color * _2024;
	float p = _2025;
	float _2028 = clamp(p, 0.00000000e+00, color);
	return _2028;
}
void F__calculateBeamDistsVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	uint _2035 = V__frame_count % 60u;
	bool _2037 = _2035 == 0u;
	bool _2039 = V__overlay_active > 0;
	bool _2040 = _2037 || _2039;
	float compute_mask_factor = ((float)_2040);
	bool _2044 = id == 2u;
	float _2046 = compute_mask_factor * 2.00000000e+00;
	float _2048 = _2044 ? _2046 : 0.00000000e+00;
	texcoord[0] = _2048;
	bool _2050 = id == 1u;
	float _2053 = _2050 ? 2.00000000e+00 : 0.00000000e+00;
	texcoord[1] = _2053;
	float2 _2055 = texcoord * float2(2.00000000e+00, -2.00000000e+00);
	float2 _2057 = _2055 + float2(-1.00000000e+00, 1.00000000e+00);
	float4 _2062 = float4(_2057.x, _2057.y, 0.00000000e+00, 1.00000000e+00);
	position = _2062;
	return;
}
void F__calculateBeamDistsPS(
	in float4 position : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 beam_strength : SV_TARGET)
{
	float2 _2068;
	_2068 = texcoord;
	S__InterpolationFieldData _2069 = F__precalc_interpolation_field_data(_2068);
	S__InterpolationFieldData interpolation_data = _2069;
	float _2073 = texcoord.x - 9.76562500e-04;
	float color_corrected = _2073;
	bool _2079 = V__beam_shape_mode == 0u;
	[branch] if (_2079)
	{
		bool _2081 = V__scanline_deinterlacing_mode != 2u;
		bool _2082 = V__enable_interlacing && _2081;
		bool _2084 = V__scanline_deinterlacing_mode != 3u;
		bool _2085 = _2082 && _2084;
		float _2088 = 1.00000000e+00 + ((float)_2085);
		float interlacing_brightness_factor = _2088;
		int _2092 = ((int)interpolation_data.scanline_parity) * ((int)V__enable_interlacing);
		int _2094 = 1 - _2092;
		float _2096 = ((float)_2094) * interlacing_brightness_factor;
		float _2098 = _2096 * 5.00000000e-01;
		float raw_beam_strength = _2098;
		float _2100 = color_corrected * raw_beam_strength;
		float4 _2104 = float4(_2100, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
		beam_strength = _2104;
	}
	else
	{
		bool _2109 = V__beam_shape_mode == 1u;
		if (_2109)
		{
			float _2112 = texcoord.y * interpolation_data.triangle_wave_freq;
			float _2113 = frac(_2112);
			float _2115 = 2.00000000e+00 * _2113;
			float _2117 = 1.00000000e+00 - _2115;
			float _2118 = abs(_2117);
			float beam_dist_y = _2118;
			bool _2121 = V__scanline_thickness > 1u;
			bool scanline_is_wider_than_1 = _2121;
			bool _2124 = V__scanline_deinterlacing_mode != 2u;
			bool _2125 = V__enable_interlacing && _2124;
			bool _2127 = V__scanline_deinterlacing_mode != 3u;
			bool _2128 = _2125 && _2127;
			bool deinterlacing_mode_requires_boost = _2128;
			int _2132 = 1 + ((int)scanline_is_wider_than_1);
			int _2135 = 1 + ((int)deinterlacing_mode_requires_boost);
			int _2136 = _2132 * _2135;
			float interlacing_brightness_factor_2138 = ((float)_2136);
			float _2139 = -beam_dist_y;
			float _2140 = rcp(V__linear_beam_thickness);
			float _2141 = _2139 * _2140;
			float _2143 = _2141 + 1.00000000e+00;
			float _2144 = saturate(_2143);
			float raw_beam_strength_2145 = _2144;
			int _2148 = ((int)interpolation_data.scanline_parity) * ((int)V__enable_interlacing);
			int _2150 = 1 - _2148;
			float _2152 = raw_beam_strength_2145 * ((float)_2150);
			float _2153 = _2152 * interlacing_brightness_factor_2138;
			float _2155 = _2153 * 5.00000000e-01;
			float adj_beam_strength = _2155;
			float _2157 = color_corrected * adj_beam_strength;
			float4 _2161 = float4(_2157, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
			beam_strength = _2161;
		}
		else
		{
			bool _2166 = V__beam_shape_mode == 2u;
			if (_2166)
			{
				float _2167 = max(V__gaussian_beam_max_sigma, V__gaussian_beam_min_sigma);
				float _2168 = _2167 - V__gaussian_beam_min_sigma;
				float sigma_range_2169 = _2168;
				float _2170 = max(V__gaussian_beam_max_shape, V__gaussian_beam_min_shape);
				float _2171 = _2170 - V__gaussian_beam_min_shape;
				float shape_range_2172 = _2171;
				float _2175 = 1.00000000e+00 + ((float)V__enable_interlacing);
				float beam_dist_factor = _2175;
				float _2177 = rcp(beam_dist_factor);
				float _2179 = interpolation_data.triangle_wave_freq * _2177;
				float freq_adj = _2179;
				bool _2182 = !interpolation_data.field_parity;
				float _2185 = ((float)_2182) * 5.00000000e-01;
				float _2187 = _2185 + 2.50000000e-01;
				float _2189 = ((float)V__enable_interlacing) * _2187;
				float _2190 = rcp(freq_adj);
				float _2191 = _2189 * _2190;
				float frame_offset = _2191;
				float _2194 = texcoord.y - frame_offset;
				float _2195 = _2194 * freq_adj;
				float _2196 = frac(_2195);
				float _2198 = 2.00000000e+00 * _2196;
				float _2200 = 1.00000000e+00 - _2198;
				float _2201 = abs(_2200);
				float _2202 = rcp(V__linear_beam_thickness);
				float _2203 = _2201 * _2202;
				float beam_dist_y_2204 = _2203;
				bool _2205 = !V__enable_interlacing;
				bool _2207 = V__scanline_thickness > 1u;
				bool _2208 = _2205 && _2207;
				float _2211 = 1.00000000e+00 + ((float)_2208);
				bool _2213 = V__scanline_deinterlacing_mode != 2u;
				bool _2214 = V__enable_interlacing && _2213;
				bool _2216 = V__scanline_deinterlacing_mode != 3u;
				bool _2217 = _2214 && _2216;
				float _2219 = _2211 + ((float)_2217);
				float interlacing_brightness_factor_2220 = _2219;
				float _2221;
				float _2222;
				float _2223;
				float _2224;
				_2221 = beam_dist_y_2204;
				_2222 = color_corrected;
				_2223 = sigma_range_2169;
				_2224 = shape_range_2172;
				float _2225 = F__get_gaussian_beam_strength(_2221, _2222, _2223, _2224);
				float _2226 = _2225 * interlacing_brightness_factor_2220;
				float _2228 = _2226 * 5.00000000e-01;
				float raw_beam_strength_2229 = _2228;
				float4 _2233 = float4(raw_beam_strength_2229, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
				beam_strength = _2233;
			}
			else
			{
				float _2234 = max(V__gaussian_beam_max_sigma, V__gaussian_beam_min_sigma);
				float _2235 = _2234 - V__gaussian_beam_min_sigma;
				float sigma_range_2236 = _2235;
				float _2237 = max(V__gaussian_beam_max_shape, V__gaussian_beam_min_shape);
				float _2238 = _2237 - V__gaussian_beam_min_shape;
				float shape_range_2239 = _2238;
				float _2242 = 1.00000000e+00 + ((float)V__enable_interlacing);
				float beam_dist_factor_2243 = _2242;
				float _2244 = rcp(beam_dist_factor_2243);
				float _2246 = interpolation_data.triangle_wave_freq * _2244;
				float freq_adj_2247 = _2246;
				bool _2249 = !interpolation_data.field_parity;
				float _2252 = ((float)_2249) * 5.00000000e-01;
				float _2254 = _2252 + 2.50000000e-01;
				float _2256 = ((float)V__enable_interlacing) * _2254;
				float _2257 = rcp(freq_adj_2247);
				float _2258 = _2256 * _2257;
				float frame_offset_2259 = _2258;
				float _2261 = texcoord.y - frame_offset_2259;
				float _2262 = _2261 * freq_adj_2247;
				float _2263 = frac(_2262);
				float _2265 = 2.00000000e+00 * _2263;
				float _2267 = 1.00000000e+00 - _2265;
				float _2268 = abs(_2267);
				float _2269 = rcp(V__linear_beam_thickness);
				float _2270 = _2268 * _2269;
				float curr_beam_dist_y = _2270;
				float _2273 = texcoord.y - frame_offset_2259;
				float _2274 = _2273 * freq_adj_2247;
				float _2275 = frac(_2274);
				float _2277 = _2275 * 2.00000000e+00;
				float _2279 = _2277 + 1.00000000e+00;
				float _2280 = rcp(V__linear_beam_thickness);
				float _2281 = _2279 * _2280;
				float upper_beam_dist_y = _2281;
				float _2283 = rcp(V__linear_beam_thickness);
				float _2285 = 4.00000000e+00 * _2283;
				float _2286 = _2285 - upper_beam_dist_y;
				float lower_beam_dist_y = _2286;
				float _2288;
				float _2289;
				float _2290;
				float _2291;
				_2288 = upper_beam_dist_y;
				_2289 = color_corrected;
				_2290 = sigma_range_2236;
				_2291 = shape_range_2239;
				float _2292 = F__get_gaussian_beam_strength(_2288, _2289, _2290, _2291);
				float upper_beam_strength = _2292;
				float _2294;
				float _2295;
				float _2296;
				float _2297;
				_2294 = curr_beam_dist_y;
				_2295 = color_corrected;
				_2296 = sigma_range_2236;
				_2297 = shape_range_2239;
				float _2298 = F__get_gaussian_beam_strength(_2294, _2295, _2296, _2297);
				float curr_beam_strength = _2298;
				float _2300;
				float _2301;
				float _2302;
				float _2303;
				_2300 = lower_beam_dist_y;
				_2301 = color_corrected;
				_2302 = sigma_range_2236;
				_2303 = shape_range_2239;
				float _2304 = F__get_gaussian_beam_strength(_2300, _2301, _2302, _2303);
				float lower_beam_strength = _2304;
				bool _2306 = !V__enable_interlacing;
				bool _2308 = V__scanline_thickness > 1u;
				bool _2309 = _2306 && _2308;
				float _2312 = 1.00000000e+00 + ((float)_2309);
				bool _2314 = V__scanline_deinterlacing_mode != 2u;
				bool _2315 = V__enable_interlacing && _2314;
				bool _2317 = V__scanline_deinterlacing_mode != 3u;
				bool _2318 = _2315 && _2317;
				float _2320 = _2312 + ((float)_2318);
				float interlacing_brightness_factor_2321 = _2320;
				float3 _2322 = float3(curr_beam_strength, upper_beam_strength, lower_beam_strength);
				float3 _2324 = _2322 * interlacing_brightness_factor_2321.xxx;
				float3 _2326 = _2324 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
				float3 raw_beam_strength_2327 = _2326;
				float4 _2332 = float4(raw_beam_strength_2327.x, raw_beam_strength_2327.y, raw_beam_strength_2327.z, 1.00000000e+00);
				beam_strength = _2332;
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
	uint _2339;
	float4 _2340;
	float2 _2341;
	_2339 = id;
	F__contentCropVS(_2339, _2340, _2341);
	position = _2340;
	texcoord = _2341;
	bool _2344 = V__geom_rotation_mode == 0u;
	bool _2346 = V__geom_rotation_mode == 2u;
	bool _2347 = _2344 || _2346;
	bool screen_is_landscape = _2347;
	float2 _2350 = rcp(float2(1.44000000e+03, 1.08000000e+03));
	float2 runtime_pixel_size = _2350;
	float2 _2354 = float2(((float)V__scanline_thickness), 1.00000000e+00);
	float2 _2357 = float2(1.00000000e+00, ((float)V__scanline_thickness));
	float2 _2359 = lerp(_2354, _2357, ((float2)screen_is_landscape.xx));
	float2 _2361 = rcp(float2(1.44000000e+03, 1.08000000e+03));
	float2 _2362 = _2359 * _2361;
	float2 runtime_scanline_shape = _2362;
	float4 _2368 = float4(runtime_pixel_size.x, runtime_pixel_size.y, runtime_scanline_shape.x, runtime_scanline_shape.y);
	runtime_bin_shapes = _2368;
	return;
}
void F__simulateEletronBeamsPS(
	in float4 position : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float4 runtime_bin_shapes : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	bool _2376 = V__geom_rotation_mode == 0u;
	bool _2378 = V__geom_rotation_mode == 2u;
	bool _2379 = _2376 || _2378;
	bool screen_is_landscape_2380 = _2379;
	float2 _2383 = lerp(texcoord.yx, texcoord, ((float2)screen_is_landscape_2380.xx));
	float2 rotated_coord = _2383;
	float _2388 = lerp(1.44000000e+03, 1.08000000e+03, ((float)screen_is_landscape_2380));
	float scale_2389 = _2388;
	float2 _2390;
	float _2391;
	_2390 = rotated_coord;
	_2391 = scale_2389;
	S__InterpolationFieldData _2392 = F__calc_interpolation_field_data(_2390, _2391);
	S__InterpolationFieldData interpolation_data_2393 = _2392;
	float _2396 = rotated_coord.y * interpolation_data_2393.triangle_wave_freq;
	float _2398 = _2396 + ((float)interpolation_data_2393.field_parity);
	float _2400 = _2398 * 5.00000000e-01;
	float ypos = _2400;
	float2 _2402;
	float2 _2403;
	float2 _2404;
	_2402 = texcoord;
	_2403 = float2(0.00000000e+00, 0.00000000e+00);
	_2404 = runtime_bin_shapes.zw;
	float2 _2407 = F__round_coord(_2402, _2403, _2404);
	float2 texcoord_scanlined = _2407;
	bool _2413 = interpolation_data_2393.wrong_field && screen_is_landscape_2380;
	[branch] if (_2413)
	{
		bool _2416 = texcoord_scanlined.y <= texcoord.y;
		float coord_moved_up = ((float)_2416);
		float _2421 = lerp(-1.00000000e+00, 1.00000000e+00, coord_moved_up);
		float direction = _2421;
		float _2424 = direction * ((float)V__scanline_thickness);
		float _2426 = rcp(1.08000000e+03);
		float _2427 = _2424 * _2426;
		float _2429 = texcoord_scanlined.y + _2427;
		texcoord_scanlined[1] = _2429;
	}
	else
	{
		if (interpolation_data_2393.wrong_field)
		{
			bool _2436 = texcoord_scanlined.x <= texcoord.x;
			float coord_moved_up_2438 = ((float)_2436);
			float _2441 = lerp(-1.00000000e+00, 1.00000000e+00, coord_moved_up_2438);
			float direction_2442 = _2441;
			float _2444 = direction_2442 * ((float)V__scanline_thickness);
			float _2446 = rcp(1.44000000e+03);
			float _2447 = _2444 * _2446;
			float _2449 = texcoord_scanlined.x + _2447;
			texcoord_scanlined[0] = _2449;
		}
	}
	float2 texcoord_pixellated = texcoord_scanlined;
	float2 texcoord_uncropped_2451 = texcoord_pixellated;
	bool _2456 = V__beam_shape_mode < 3u;
	[branch] if (_2456)
	{
		float _2457 = F__get_input_gamma();
		float2 _2458;
		float _2459;
		_2458 = texcoord_uncropped_2451;
		_2459 = _2457;
		float4 _2460 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2458, _2459);
		float4 scanline_color = _2460;
		float2 _2463 = float2(scanline_color.x, ypos);
		float2 _2464;
		_2464 = _2463;
		float4 _2465 = F__tex2D_nograd(V__samplerBeamDist, _2464);
		float beam_strength_r = _2465.x;
		float2 _2469 = float2(scanline_color.y, ypos);
		float2 _2470;
		_2470 = _2469;
		float4 _2471 = F__tex2D_nograd(V__samplerBeamDist, _2470);
		float beam_strength_g = _2471.x;
		float2 _2475 = float2(scanline_color.z, ypos);
		float2 _2476;
		_2476 = _2475;
		float4 _2477 = F__tex2D_nograd(V__samplerBeamDist, _2476);
		float beam_strength_b = _2477.x;
		float4 _2481 = float4(beam_strength_r, beam_strength_g, beam_strength_b, 1.00000000e+00);
		float4 beam_strength_2482 = _2481;
		color = beam_strength_2482;
	}
	else
	{
		float2 _2485 = float2(0.00000000e+00, ((float)V__scanline_thickness));
		int _2488 = 1 + ((int)V__enable_interlacing);
		float2 _2490 = _2485 * ((float2)_2488.xx);
		float2 _2492 = rcp(float2(1.44000000e+03, 1.08000000e+03));
		float2 _2493 = _2490 * _2492;
		float2 offset = _2493;
		float _2495 = F__get_input_gamma();
		float2 _2496;
		float _2497;
		_2496 = texcoord_uncropped_2451;
		_2497 = _2495;
		float4 _2498 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2496, _2497);
		float4 curr_scanline_color = _2498;
		float2 _2500 = texcoord_uncropped_2451 - offset;
		float _2501 = F__get_input_gamma();
		float2 _2502;
		float _2503;
		_2502 = _2500;
		_2503 = _2501;
		float4 _2504 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2502, _2503);
		float4 upper_scanline_color = _2504;
		float2 _2506 = texcoord_uncropped_2451 + offset;
		float _2507 = F__get_input_gamma();
		float2 _2508;
		float _2509;
		_2508 = _2506;
		_2509 = _2507;
		float4 _2510 = F__tex2Dlod_linearize(V__ReShade__BackBuffer, _2508, _2509);
		float4 lower_scanline_color = _2510;
		float2 _2513 = float2(curr_scanline_color.x, ypos);
		float2 _2514;
		_2514 = _2513;
		float4 _2515 = F__tex2D_nograd(V__samplerBeamDist, _2514);
		float curr_beam_strength_r = _2515.x;
		float2 _2519 = float2(curr_scanline_color.y, ypos);
		float2 _2520;
		_2520 = _2519;
		float4 _2521 = F__tex2D_nograd(V__samplerBeamDist, _2520);
		float curr_beam_strength_g = _2521.x;
		float2 _2525 = float2(curr_scanline_color.z, ypos);
		float2 _2526;
		_2526 = _2525;
		float4 _2527 = F__tex2D_nograd(V__samplerBeamDist, _2526);
		float curr_beam_strength_b = _2527.x;
		float2 _2531 = float2(upper_scanline_color.x, ypos);
		float2 _2532;
		_2532 = _2531;
		float4 _2533 = F__tex2D_nograd(V__samplerBeamDist, _2532);
		float upper_beam_strength_r = _2533.y;
		float2 _2537 = float2(upper_scanline_color.y, ypos);
		float2 _2538;
		_2538 = _2537;
		float4 _2539 = F__tex2D_nograd(V__samplerBeamDist, _2538);
		float upper_beam_strength_g = _2539.y;
		float2 _2543 = float2(upper_scanline_color.z, ypos);
		float2 _2544;
		_2544 = _2543;
		float4 _2545 = F__tex2D_nograd(V__samplerBeamDist, _2544);
		float upper_beam_strength_b = _2545.y;
		float2 _2549 = float2(lower_scanline_color.x, ypos);
		float2 _2550;
		_2550 = _2549;
		float4 _2551 = F__tex2D_nograd(V__samplerBeamDist, _2550);
		float lower_beam_strength_r = _2551.z;
		float2 _2555 = float2(lower_scanline_color.y, ypos);
		float2 _2556;
		_2556 = _2555;
		float4 _2557 = F__tex2D_nograd(V__samplerBeamDist, _2556);
		float lower_beam_strength_g = _2557.z;
		float2 _2561 = float2(lower_scanline_color.z, ypos);
		float2 _2562;
		_2562 = _2561;
		float4 _2563 = F__tex2D_nograd(V__samplerBeamDist, _2562);
		float lower_beam_strength_b = _2563.z;
		float _2566 = curr_beam_strength_r + upper_beam_strength_r;
		float _2567 = _2566 + lower_beam_strength_r;
		float _2568 = curr_beam_strength_g + upper_beam_strength_g;
		float _2569 = _2568 + lower_beam_strength_g;
		float _2570 = curr_beam_strength_b + upper_beam_strength_b;
		float _2571 = _2570 + lower_beam_strength_b;
		float4 _2573 = float4(_2567, _2569, _2571, 1.00000000e+00);
		color = _2573;
	}
	return;
}
void F__beamConvergenceVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float run_convergence : TEXCOORD1)
{
	uint _2580;
	float4 _2581;
	float2 _2582;
	_2580 = id;
	F__PostProcessVS(_2580, _2581, _2582);
	position = _2581;
	texcoord = _2582;
	bool3 _2585 = V__convergence_offset_x != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	uint3 x_flag = ((uint3)_2585);
	bool3 _2589 = V__convergence_offset_y != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	uint3 y_flag = ((uint3)_2589);
	float _2594 = dot(((float3)x_flag), float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _2597 = dot(((float3)y_flag), float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _2598 = _2594 + _2597;
	run_convergence = _2598;
	return;
}
void F__beamConvergencePS(
	in float4 position : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float run_convergence : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	bool _2609 = !((bool)run_convergence);
	if (_2609)
	{
		float _2611 = rcp(1.08000000e+03);
		float _2612 = V__scanline_offset * _2611;
		float2 _2614 = float2(0.00000000e+00, _2612);
		float2 _2615 = texcoord - _2614;
		float4 _2616 = V__samplerElectronBeams.t.Sample(V__samplerElectronBeams.s, _2615);
		color = _2616;
	}
	else
	{
		float _2618 = rcp(1.08000000e+03);
		float _2619 = V__scanline_offset * _2618;
		float2 _2621 = float2(0.00000000e+00, _2619);
		float2 _2622 = texcoord - _2621;
		float2 _2624 = rcp(float2(1.44000000e+03, 1.08000000e+03));
		float2 _2625;
		float2 _2626;
		float2 _2627;
		_2625 = _2622;
		_2626 = float2(1.44000000e+03, 1.08000000e+03);
		_2627 = _2624;
		float3 _2629 = F__sample_rgb_scanline(V__samplerElectronBeams, _2625, _2626, _2627);
		float3 offset_sample = _2629;
		float4 _2635 = float4(offset_sample.x, offset_sample.y, offset_sample.z, 1.00000000e+00);
		color = _2635;
	}
	return;
}
float4 F__get_quad_vector_naive(
	in float4 output_pixel_num_wrt_uvxy)
{
	float4 _2640 = output_pixel_num_wrt_uvxy * float4(5.00000000e-01, 5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float4 _2641 = frac(_2640);
	float4 _2643 = _2641 * float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
	float4 pixel_odd = _2643;
	float4 _2646 = pixel_odd * float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
	float4 _2648 = _2646 - float4(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float4 quad_vector = _2648;
	return quad_vector;
}
float4 F__get_quad_vector(
	in float4 output_pixel_num_wrt_uvxy)
{
	float4 _2653;
	_2653 = output_pixel_num_wrt_uvxy;
	float4 _2654 = F__get_quad_vector_naive(_2653);
	float4 quad_vector_guess = _2654;
	float _2657 = ddx(quad_vector_guess.z);
	float _2659 = ddy(quad_vector_guess.w);
	float2 _2660 = float2(_2657, _2659);
	float2 _2662 = float2(5.00000000e-01, 5.00000000e-01) * _2660;
	float2 odd_start_mirror = _2662;
	float4 _2665 = quad_vector_guess * odd_start_mirror.xyxy;
	return _2665;
}
float4 F__get_quad_vector(
	in float2 output_pixel_num_wrt_uv)
{
	float _2670 = ddx(output_pixel_num_wrt_uv.x);
	float _2672 = ddy(output_pixel_num_wrt_uv.y);
	float2 _2673 = float2(_2670, _2672);
	float2 screen_uv_mirror = _2673;
	float2 _2676 = output_pixel_num_wrt_uv * float2(5.00000000e-01, 5.00000000e-01);
	float2 _2677 = frac(_2676);
	float2 _2679 = _2677 * float2(2.00000000e+00, 2.00000000e+00);
	float2 pixel_odd_wrt_uv = _2679;
	float2 _2682 = pixel_odd_wrt_uv - float2(5.00000000e-01, 5.00000000e-01);
	float2 _2684 = _2682 * float2(2.00000000e+00, 2.00000000e+00);
	float2 quad_vector_uv_guess = _2684;
	float2 _2686 = quad_vector_uv_guess * screen_uv_mirror;
	float2 quad_vector_screen_guess = _2686;
	float _2689 = ddx(quad_vector_screen_guess.x);
	float _2691 = ddy(quad_vector_screen_guess.y);
	float2 _2692 = float2(_2689, _2691);
	float2 _2694 = float2(5.00000000e-01, 5.00000000e-01) * _2692;
	float2 odd_start_mirror_2695 = _2694;
	float4 _2700 = float4(quad_vector_uv_guess.x, quad_vector_uv_guess.y, quad_vector_screen_guess.x, quad_vector_screen_guess.y);
	float4 quad_vector_guess_2701 = _2700;
	float4 _2703 = quad_vector_guess_2701 * odd_start_mirror_2695.xyxy;
	return _2703;
}
void F__quad_gather(
	in float4 quad_vector,
	in float4 curr,
	out float4 adjx,
	out float4 adjy,
	out float4 diag)
{
	float4 _2711 = ddx(curr);
	float4 _2713 = _2711 * quad_vector.z.xxxx;
	float4 _2714 = curr - _2713;
	adjx = _2714;
	float4 _2715 = ddy(curr);
	float4 _2717 = _2715 * quad_vector.w.xxxx;
	float4 _2718 = curr - _2717;
	adjy = _2718;
	float4 _2719 = ddy(adjx);
	float4 _2721 = _2719 * quad_vector.w.xxxx;
	float4 _2722 = adjx - _2721;
	diag = _2722;
	return;
}
void F__quad_gather(
	in float4 quad_vector,
	in float3 curr,
	out float3 adjx,
	out float3 adjy,
	out float3 diag)
{
	float3 _2730 = ddx(curr);
	float3 _2732 = _2730 * quad_vector.z.xxx;
	float3 _2733 = curr - _2732;
	adjx = _2733;
	float3 _2734 = ddy(curr);
	float3 _2736 = _2734 * quad_vector.w.xxx;
	float3 _2737 = curr - _2736;
	adjy = _2737;
	float3 _2738 = ddy(adjx);
	float3 _2740 = _2738 * quad_vector.w.xxx;
	float3 _2741 = adjx - _2740;
	diag = _2741;
	return;
}
void F__quad_gather(
	in float4 quad_vector,
	in float2 curr,
	out float2 adjx,
	out float2 adjy,
	out float2 diag)
{
	float2 _2749 = ddx(curr);
	float2 _2751 = _2749 * quad_vector.z.xx;
	float2 _2752 = curr - _2751;
	adjx = _2752;
	float2 _2753 = ddy(curr);
	float2 _2755 = _2753 * quad_vector.w.xx;
	float2 _2756 = curr - _2755;
	adjy = _2756;
	float2 _2757 = ddy(adjx);
	float2 _2759 = _2757 * quad_vector.w.xx;
	float2 _2760 = adjx - _2759;
	diag = _2760;
	return;
}
float4 F__quad_gather(
	in float4 quad_vector,
	in float curr)
{
	float4 _2765 = float4(curr, curr, curr, curr);
	float4 all = _2765;
	float _2768 = ddx(all.x);
	float _2770 = _2768 * quad_vector.z;
	float _2772 = all.x - _2770;
	all[1] = _2772;
	float2 _2774 = ddy(all.xy);
	float2 _2776 = _2774 * quad_vector.w.xx;
	float2 _2778 = all.xy - _2776;
	all.zw = _2778;
	return all;
}
float4 F__quad_gather_sum(
	in float4 quad_vector,
	in float4 curr)
{
	float4 adjx_2784 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 adjy_2786 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 diag_2788 = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _2789;
	float4 _2790;
	float4 _2791;
	float4 _2792;
	float4 _2793;
	_2789 = quad_vector;
	_2790 = curr;
	F__quad_gather(_2789, _2790, _2791, _2792, _2793);
	adjx_2784 = _2791;
	adjy_2786 = _2792;
	diag_2788 = _2793;
	float4 _2795 = curr + adjx_2784;
	float4 _2796 = _2795 + adjy_2786;
	float4 _2797 = _2796 + diag_2788;
	return _2797;
}
float3 F__quad_gather_sum(
	in float4 quad_vector,
	in float3 curr)
{
	float3 adjx_2803 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 adjy_2805 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 diag_2807 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _2808;
	float3 _2809;
	float3 _2810;
	float3 _2811;
	float3 _2812;
	_2808 = quad_vector;
	_2809 = curr;
	F__quad_gather(_2808, _2809, _2810, _2811, _2812);
	adjx_2803 = _2810;
	adjy_2805 = _2811;
	diag_2807 = _2812;
	float3 _2814 = curr + adjx_2803;
	float3 _2815 = _2814 + adjy_2805;
	float3 _2816 = _2815 + diag_2807;
	return _2816;
}
float2 F__quad_gather_sum(
	in float4 quad_vector,
	in float2 curr)
{
	float2 adjx_2822 = float2(0.00000000e+00, 0.00000000e+00);
	float2 adjy_2824 = float2(0.00000000e+00, 0.00000000e+00);
	float2 diag_2826 = float2(0.00000000e+00, 0.00000000e+00);
	float4 _2827;
	float2 _2828;
	float2 _2829;
	float2 _2830;
	float2 _2831;
	_2827 = quad_vector;
	_2828 = curr;
	F__quad_gather(_2827, _2828, _2829, _2830, _2831);
	adjx_2822 = _2829;
	adjy_2824 = _2830;
	diag_2826 = _2831;
	float2 _2833 = curr + adjx_2822;
	float2 _2834 = _2833 + adjy_2824;
	float2 _2835 = _2834 + diag_2826;
	return _2835;
}
float F__quad_gather_sum(
	in float4 quad_vector,
	in float curr)
{
	float4 _2840;
	float _2841;
	_2840 = quad_vector;
	_2841 = curr;
	float4 _2842 = F__quad_gather(_2840, _2841);
	float4 all_values = _2842;
	float _2846 = all_values.x + all_values.y;
	float _2848 = _2846 + all_values.z;
	float _2850 = _2848 + all_values.w;
	return _2850;
}
bool F__fine_derivatives_working(
	in float4 quad_vector,
	in float4 curr)
{
	float4 _2855 = ddx(curr);
	float4 ddx_curr = _2855;
	float4 _2857 = ddy(curr);
	float4 ddy_curr = _2857;
	float4 _2860 = ddx_curr * quad_vector.z.xxxx;
	float4 _2861 = curr - _2860;
	float4 adjx_2862 = _2861;
	float4 _2864 = ddy_curr * quad_vector.w.xxxx;
	float4 _2865 = curr - _2864;
	float4 adjy_2866 = _2865;
	float4 _2867 = ddy(adjx_2862);
	bool _2870 = ddy_curr.x != _2867.x;
	float4 _2871 = ddy(adjx_2862);
	bool _2874 = ddy_curr.y != _2871.y;
	float4 _2875 = ddy(adjx_2862);
	bool _2878 = ddy_curr.z != _2875.z;
	float4 _2879 = ddy(adjx_2862);
	bool _2882 = ddy_curr.w != _2879.w;
	bool4 _2883 = bool4(_2870, _2874, _2878, _2882);
	bool _2884 = any(_2883);
	bool ddy_different = _2884;
	float4 _2886 = ddx(adjy_2866);
	bool _2889 = ddx_curr.x != _2886.x;
	float4 _2890 = ddx(adjy_2866);
	bool _2893 = ddx_curr.y != _2890.y;
	float4 _2894 = ddx(adjy_2866);
	bool _2897 = ddx_curr.z != _2894.z;
	float4 _2898 = ddx(adjy_2866);
	bool _2901 = ddx_curr.w != _2898.w;
	bool4 _2902 = bool4(_2889, _2893, _2897, _2901);
	bool _2903 = any(_2902);
	bool ddx_different = _2903;
	bool2 _2905 = bool2(ddy_different, ddx_different);
	bool _2906 = any(_2905);
	return _2906;
}
bool F__fine_derivatives_working_fast(
	in float4 quad_vector,
	in float curr)
{
	float _2911 = ddx(curr);
	float ddx_curr_2912 = _2911;
	float _2913 = ddy(curr);
	float ddy_curr_2914 = _2913;
	float _2916 = ddx_curr_2912 * quad_vector.z;
	float _2917 = curr - _2916;
	float adjx_2918 = _2917;
	float _2919 = ddy(adjx_2918);
	bool _2920 = ddy_curr_2914 != _2919;
	return _2920;
}
float4 F__uv2_to_uv4(
	in float2 tex_uv)
{
	float4 _2928 = float4(tex_uv.x, tex_uv.y, 0.00000000e+00, 0.00000000e+00);
	return _2928;
}
float F__get_fast_gaussian_weight_sum_inv(
	in float sigma)
{
	float _2933 = sigma - 8.60587284e-02;
	float _2935 = 3.48348409e-01 / _2933;
	float _2936 = exp(_2935);
	float _2937 = exp(_2936);
	float _2939 = 3.99334580e-01 / sigma;
	float _2940 = min(_2937, _2939);
	return _2940;
}
float3 F__tex2Dblur11resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _2948 = sigma * sigma;
	float _2950 = 5.00000000e-01 / _2948;
	float denom_inv = _2950;
	float _2953 = -1.00000000e+00 * denom_inv;
	float _2954 = exp(_2953);
	float w1 = _2954;
	float _2957 = -4.00000000e+00 * denom_inv;
	float _2958 = exp(_2957);
	float w2_2959 = _2958;
	float _2961 = -9.00000000e+00 * denom_inv;
	float _2962 = exp(_2961);
	float w3 = _2962;
	float _2965 = -1.60000000e+01 * denom_inv;
	float _2966 = exp(_2965);
	float w4 = _2966;
	float _2969 = -2.50000000e+01 * denom_inv;
	float _2970 = exp(_2969);
	float w5 = _2970;
	float _2972 = w1 + w2_2959;
	float _2973 = _2972 + w3;
	float _2974 = _2973 + w4;
	float _2975 = _2974 + w5;
	float _2977 = 2.00000000e+00 * _2975;
	float _2979 = 1.00000000e+00 + _2977;
	float _2981 = 1.00000000e+00 / _2979;
	float weight_sum_inv = _2981;
	float3 sum_2984 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _2986 = float2(5.00000000e+00, 5.00000000e+00) * dxdy;
	float2 _2987 = tex_uv - _2986;
	float2 _2988;
	float _2989;
	_2988 = _2987;
	_2989 = input_gamma;
	float4 _2990 = F__tex2D_linearize(tex, _2988, _2989);
	float3 _2993 = w5.xxx * _2990.xyz;
	float3 _2994 = sum_2984 + _2993;
	sum_2984 = _2994;
	float2 _2996 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _2997 = tex_uv - _2996;
	float2 _2998;
	float _2999;
	_2998 = _2997;
	_2999 = input_gamma;
	float4 _3000 = F__tex2D_linearize(tex, _2998, _2999);
	float3 _3003 = w4.xxx * _3000.xyz;
	float3 _3004 = sum_2984 + _3003;
	sum_2984 = _3004;
	float2 _3006 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3007 = tex_uv - _3006;
	float2 _3008;
	float _3009;
	_3008 = _3007;
	_3009 = input_gamma;
	float4 _3010 = F__tex2D_linearize(tex, _3008, _3009);
	float3 _3013 = w3.xxx * _3010.xyz;
	float3 _3014 = sum_2984 + _3013;
	sum_2984 = _3014;
	float2 _3016 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3017 = tex_uv - _3016;
	float2 _3018;
	float _3019;
	_3018 = _3017;
	_3019 = input_gamma;
	float4 _3020 = F__tex2D_linearize(tex, _3018, _3019);
	float3 _3023 = w2_2959.xxx * _3020.xyz;
	float3 _3024 = sum_2984 + _3023;
	sum_2984 = _3024;
	float2 _3026 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3027 = tex_uv - _3026;
	float2 _3028;
	float _3029;
	_3028 = _3027;
	_3029 = input_gamma;
	float4 _3030 = F__tex2D_linearize(tex, _3028, _3029);
	float3 _3033 = w1.xxx * _3030.xyz;
	float3 _3034 = sum_2984 + _3033;
	sum_2984 = _3034;
	float2 _3035;
	float _3036;
	_3035 = tex_uv;
	_3036 = input_gamma;
	float4 _3037 = F__tex2D_linearize(tex, _3035, _3036);
	float3 _3040 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3037.xyz;
	float3 _3041 = sum_2984 + _3040;
	sum_2984 = _3041;
	float2 _3043 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3044 = tex_uv + _3043;
	float2 _3045;
	float _3046;
	_3045 = _3044;
	_3046 = input_gamma;
	float4 _3047 = F__tex2D_linearize(tex, _3045, _3046);
	float3 _3050 = w1.xxx * _3047.xyz;
	float3 _3051 = sum_2984 + _3050;
	sum_2984 = _3051;
	float2 _3053 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3054 = tex_uv + _3053;
	float2 _3055;
	float _3056;
	_3055 = _3054;
	_3056 = input_gamma;
	float4 _3057 = F__tex2D_linearize(tex, _3055, _3056);
	float3 _3060 = w2_2959.xxx * _3057.xyz;
	float3 _3061 = sum_2984 + _3060;
	sum_2984 = _3061;
	float2 _3063 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3064 = tex_uv + _3063;
	float2 _3065;
	float _3066;
	_3065 = _3064;
	_3066 = input_gamma;
	float4 _3067 = F__tex2D_linearize(tex, _3065, _3066);
	float3 _3070 = w3.xxx * _3067.xyz;
	float3 _3071 = sum_2984 + _3070;
	sum_2984 = _3071;
	float2 _3073 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _3074 = tex_uv + _3073;
	float2 _3075;
	float _3076;
	_3075 = _3074;
	_3076 = input_gamma;
	float4 _3077 = F__tex2D_linearize(tex, _3075, _3076);
	float3 _3080 = w4.xxx * _3077.xyz;
	float3 _3081 = sum_2984 + _3080;
	sum_2984 = _3081;
	float2 _3083 = float2(5.00000000e+00, 5.00000000e+00) * dxdy;
	float2 _3084 = tex_uv + _3083;
	float2 _3085;
	float _3086;
	_3085 = _3084;
	_3086 = input_gamma;
	float4 _3087 = F__tex2D_linearize(tex, _3085, _3086);
	float3 _3090 = w5.xxx * _3087.xyz;
	float3 _3091 = sum_2984 + _3090;
	sum_2984 = _3091;
	float3 _3093 = sum_2984 * weight_sum_inv.xxx;
	return _3093;
}
float3 F__tex2Dblur9resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3101 = sigma * sigma;
	float _3103 = 5.00000000e-01 / _3101;
	float denom_inv_3104 = _3103;
	float _3106 = -1.00000000e+00 * denom_inv_3104;
	float _3107 = exp(_3106);
	float w1_3108 = _3107;
	float _3110 = -4.00000000e+00 * denom_inv_3104;
	float _3111 = exp(_3110);
	float w2_3112 = _3111;
	float _3114 = -9.00000000e+00 * denom_inv_3104;
	float _3115 = exp(_3114);
	float w3_3116 = _3115;
	float _3118 = -1.60000000e+01 * denom_inv_3104;
	float _3119 = exp(_3118);
	float w4_3120 = _3119;
	float _3121 = w1_3108 + w2_3112;
	float _3122 = _3121 + w3_3116;
	float _3123 = _3122 + w4_3120;
	float _3125 = 2.00000000e+00 * _3123;
	float _3127 = 1.00000000e+00 + _3125;
	float _3129 = 1.00000000e+00 / _3127;
	float weight_sum_inv_3130 = _3129;
	float3 sum_3132 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3134 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _3135 = tex_uv - _3134;
	float2 _3136;
	float _3137;
	_3136 = _3135;
	_3137 = input_gamma;
	float4 _3138 = F__tex2D_linearize(tex, _3136, _3137);
	float3 _3141 = w4_3120.xxx * _3138.xyz;
	float3 _3142 = sum_3132 + _3141;
	sum_3132 = _3142;
	float2 _3144 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3145 = tex_uv - _3144;
	float2 _3146;
	float _3147;
	_3146 = _3145;
	_3147 = input_gamma;
	float4 _3148 = F__tex2D_linearize(tex, _3146, _3147);
	float3 _3151 = w3_3116.xxx * _3148.xyz;
	float3 _3152 = sum_3132 + _3151;
	sum_3132 = _3152;
	float2 _3154 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3155 = tex_uv - _3154;
	float2 _3156;
	float _3157;
	_3156 = _3155;
	_3157 = input_gamma;
	float4 _3158 = F__tex2D_linearize(tex, _3156, _3157);
	float3 _3161 = w2_3112.xxx * _3158.xyz;
	float3 _3162 = sum_3132 + _3161;
	sum_3132 = _3162;
	float2 _3164 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3165 = tex_uv - _3164;
	float2 _3166;
	float _3167;
	_3166 = _3165;
	_3167 = input_gamma;
	float4 _3168 = F__tex2D_linearize(tex, _3166, _3167);
	float3 _3171 = w1_3108.xxx * _3168.xyz;
	float3 _3172 = sum_3132 + _3171;
	sum_3132 = _3172;
	float2 _3173;
	float _3174;
	_3173 = tex_uv;
	_3174 = input_gamma;
	float4 _3175 = F__tex2D_linearize(tex, _3173, _3174);
	float3 _3178 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3175.xyz;
	float3 _3179 = sum_3132 + _3178;
	sum_3132 = _3179;
	float2 _3181 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3182 = tex_uv + _3181;
	float2 _3183;
	float _3184;
	_3183 = _3182;
	_3184 = input_gamma;
	float4 _3185 = F__tex2D_linearize(tex, _3183, _3184);
	float3 _3188 = w1_3108.xxx * _3185.xyz;
	float3 _3189 = sum_3132 + _3188;
	sum_3132 = _3189;
	float2 _3191 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3192 = tex_uv + _3191;
	float2 _3193;
	float _3194;
	_3193 = _3192;
	_3194 = input_gamma;
	float4 _3195 = F__tex2D_linearize(tex, _3193, _3194);
	float3 _3198 = w2_3112.xxx * _3195.xyz;
	float3 _3199 = sum_3132 + _3198;
	sum_3132 = _3199;
	float2 _3201 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3202 = tex_uv + _3201;
	float2 _3203;
	float _3204;
	_3203 = _3202;
	_3204 = input_gamma;
	float4 _3205 = F__tex2D_linearize(tex, _3203, _3204);
	float3 _3208 = w3_3116.xxx * _3205.xyz;
	float3 _3209 = sum_3132 + _3208;
	sum_3132 = _3209;
	float2 _3211 = float2(4.00000000e+00, 4.00000000e+00) * dxdy;
	float2 _3212 = tex_uv + _3211;
	float2 _3213;
	float _3214;
	_3213 = _3212;
	_3214 = input_gamma;
	float4 _3215 = F__tex2D_linearize(tex, _3213, _3214);
	float3 _3218 = w4_3120.xxx * _3215.xyz;
	float3 _3219 = sum_3132 + _3218;
	sum_3132 = _3219;
	float3 _3221 = sum_3132 * weight_sum_inv_3130.xxx;
	return _3221;
}
float3 F__tex2Dblur7resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3229 = sigma * sigma;
	float _3231 = 5.00000000e-01 / _3229;
	float denom_inv_3232 = _3231;
	float _3234 = -1.00000000e+00 * denom_inv_3232;
	float _3235 = exp(_3234);
	float w1_3236 = _3235;
	float _3238 = -4.00000000e+00 * denom_inv_3232;
	float _3239 = exp(_3238);
	float w2_3240 = _3239;
	float _3242 = -9.00000000e+00 * denom_inv_3232;
	float _3243 = exp(_3242);
	float w3_3244 = _3243;
	float _3245 = w1_3236 + w2_3240;
	float _3246 = _3245 + w3_3244;
	float _3248 = 2.00000000e+00 * _3246;
	float _3250 = 1.00000000e+00 + _3248;
	float _3252 = 1.00000000e+00 / _3250;
	float weight_sum_inv_3253 = _3252;
	float3 sum_3255 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3257 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3258 = tex_uv - _3257;
	float2 _3259;
	float _3260;
	_3259 = _3258;
	_3260 = input_gamma;
	float4 _3261 = F__tex2D_linearize(tex, _3259, _3260);
	float3 _3264 = w3_3244.xxx * _3261.xyz;
	float3 _3265 = sum_3255 + _3264;
	sum_3255 = _3265;
	float2 _3267 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3268 = tex_uv - _3267;
	float2 _3269;
	float _3270;
	_3269 = _3268;
	_3270 = input_gamma;
	float4 _3271 = F__tex2D_linearize(tex, _3269, _3270);
	float3 _3274 = w2_3240.xxx * _3271.xyz;
	float3 _3275 = sum_3255 + _3274;
	sum_3255 = _3275;
	float2 _3277 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3278 = tex_uv - _3277;
	float2 _3279;
	float _3280;
	_3279 = _3278;
	_3280 = input_gamma;
	float4 _3281 = F__tex2D_linearize(tex, _3279, _3280);
	float3 _3284 = w1_3236.xxx * _3281.xyz;
	float3 _3285 = sum_3255 + _3284;
	sum_3255 = _3285;
	float2 _3286;
	float _3287;
	_3286 = tex_uv;
	_3287 = input_gamma;
	float4 _3288 = F__tex2D_linearize(tex, _3286, _3287);
	float3 _3291 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3288.xyz;
	float3 _3292 = sum_3255 + _3291;
	sum_3255 = _3292;
	float2 _3294 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3295 = tex_uv + _3294;
	float2 _3296;
	float _3297;
	_3296 = _3295;
	_3297 = input_gamma;
	float4 _3298 = F__tex2D_linearize(tex, _3296, _3297);
	float3 _3301 = w1_3236.xxx * _3298.xyz;
	float3 _3302 = sum_3255 + _3301;
	sum_3255 = _3302;
	float2 _3304 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3305 = tex_uv + _3304;
	float2 _3306;
	float _3307;
	_3306 = _3305;
	_3307 = input_gamma;
	float4 _3308 = F__tex2D_linearize(tex, _3306, _3307);
	float3 _3311 = w2_3240.xxx * _3308.xyz;
	float3 _3312 = sum_3255 + _3311;
	sum_3255 = _3312;
	float2 _3314 = float2(3.00000000e+00, 3.00000000e+00) * dxdy;
	float2 _3315 = tex_uv + _3314;
	float2 _3316;
	float _3317;
	_3316 = _3315;
	_3317 = input_gamma;
	float4 _3318 = F__tex2D_linearize(tex, _3316, _3317);
	float3 _3321 = w3_3244.xxx * _3318.xyz;
	float3 _3322 = sum_3255 + _3321;
	sum_3255 = _3322;
	float3 _3324 = sum_3255 * weight_sum_inv_3253.xxx;
	return _3324;
}
float3 F__tex2Dblur5resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3332 = sigma * sigma;
	float _3334 = 5.00000000e-01 / _3332;
	float denom_inv_3335 = _3334;
	float _3337 = -1.00000000e+00 * denom_inv_3335;
	float _3338 = exp(_3337);
	float w1_3339 = _3338;
	float _3341 = -4.00000000e+00 * denom_inv_3335;
	float _3342 = exp(_3341);
	float w2_3343 = _3342;
	float _3344 = w1_3339 + w2_3343;
	float _3346 = 2.00000000e+00 * _3344;
	float _3348 = 1.00000000e+00 + _3346;
	float _3350 = 1.00000000e+00 / _3348;
	float weight_sum_inv_3351 = _3350;
	float3 sum_3353 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3355 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3356 = tex_uv - _3355;
	float2 _3357;
	float _3358;
	_3357 = _3356;
	_3358 = input_gamma;
	float4 _3359 = F__tex2D_linearize(tex, _3357, _3358);
	float3 _3362 = w2_3343.xxx * _3359.xyz;
	float3 _3363 = sum_3353 + _3362;
	sum_3353 = _3363;
	float2 _3365 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3366 = tex_uv - _3365;
	float2 _3367;
	float _3368;
	_3367 = _3366;
	_3368 = input_gamma;
	float4 _3369 = F__tex2D_linearize(tex, _3367, _3368);
	float3 _3372 = w1_3339.xxx * _3369.xyz;
	float3 _3373 = sum_3353 + _3372;
	sum_3353 = _3373;
	float2 _3374;
	float _3375;
	_3374 = tex_uv;
	_3375 = input_gamma;
	float4 _3376 = F__tex2D_linearize(tex, _3374, _3375);
	float3 _3379 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3376.xyz;
	float3 _3380 = sum_3353 + _3379;
	sum_3353 = _3380;
	float2 _3382 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3383 = tex_uv + _3382;
	float2 _3384;
	float _3385;
	_3384 = _3383;
	_3385 = input_gamma;
	float4 _3386 = F__tex2D_linearize(tex, _3384, _3385);
	float3 _3389 = w1_3339.xxx * _3386.xyz;
	float3 _3390 = sum_3353 + _3389;
	sum_3353 = _3390;
	float2 _3392 = float2(2.00000000e+00, 2.00000000e+00) * dxdy;
	float2 _3393 = tex_uv + _3392;
	float2 _3394;
	float _3395;
	_3394 = _3393;
	_3395 = input_gamma;
	float4 _3396 = F__tex2D_linearize(tex, _3394, _3395);
	float3 _3399 = w2_3343.xxx * _3396.xyz;
	float3 _3400 = sum_3353 + _3399;
	sum_3353 = _3400;
	float3 _3402 = sum_3353 * weight_sum_inv_3351.xxx;
	return _3402;
}
float3 F__tex2Dblur3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3410 = sigma * sigma;
	float _3412 = 5.00000000e-01 / _3410;
	float denom_inv_3413 = _3412;
	float _3415 = -1.00000000e+00 * denom_inv_3413;
	float _3416 = exp(_3415);
	float w1_3417 = _3416;
	float _3419 = 2.00000000e+00 * w1_3417;
	float _3421 = 1.00000000e+00 + _3419;
	float _3423 = 1.00000000e+00 / _3421;
	float weight_sum_inv_3424 = _3423;
	float3 sum_3426 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 _3428 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3429 = tex_uv - _3428;
	float2 _3430;
	float _3431;
	_3430 = _3429;
	_3431 = input_gamma;
	float4 _3432 = F__tex2D_linearize(tex, _3430, _3431);
	float3 _3435 = w1_3417.xxx * _3432.xyz;
	float3 _3436 = sum_3426 + _3435;
	sum_3426 = _3436;
	float2 _3437;
	float _3438;
	_3437 = tex_uv;
	_3438 = input_gamma;
	float4 _3439 = F__tex2D_linearize(tex, _3437, _3438);
	float3 _3442 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3439.xyz;
	float3 _3443 = sum_3426 + _3442;
	sum_3426 = _3443;
	float2 _3445 = float2(1.00000000e+00, 1.00000000e+00) * dxdy;
	float2 _3446 = tex_uv + _3445;
	float2 _3447;
	float _3448;
	_3447 = _3446;
	_3448 = input_gamma;
	float4 _3449 = F__tex2D_linearize(tex, _3447, _3448);
	float3 _3452 = w1_3417.xxx * _3449.xyz;
	float3 _3453 = sum_3426 + _3452;
	sum_3426 = _3453;
	float3 _3455 = sum_3426 * weight_sum_inv_3424.xxx;
	return _3455;
}
float3 F__tex2Dblur11fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3463 = sigma * sigma;
	float _3465 = 5.00000000e-01 / _3463;
	float denom_inv_3466 = _3465;
	float _3468 = -1.00000000e+00 * denom_inv_3466;
	float _3469 = exp(_3468);
	float w1_3470 = _3469;
	float _3472 = -4.00000000e+00 * denom_inv_3466;
	float _3473 = exp(_3472);
	float w2_3474 = _3473;
	float _3476 = -9.00000000e+00 * denom_inv_3466;
	float _3477 = exp(_3476);
	float w3_3478 = _3477;
	float _3480 = -1.60000000e+01 * denom_inv_3466;
	float _3481 = exp(_3480);
	float w4_3482 = _3481;
	float _3484 = -2.50000000e+01 * denom_inv_3466;
	float _3485 = exp(_3484);
	float w5_3486 = _3485;
	float _3487 = w1_3470 + w2_3474;
	float _3488 = _3487 + w3_3478;
	float _3489 = _3488 + w4_3482;
	float _3490 = _3489 + w5_3486;
	float _3492 = 2.00000000e+00 * _3490;
	float _3494 = 1.00000000e+00 + _3492;
	float _3496 = 1.00000000e+00 / _3494;
	float weight_sum_inv_3497 = _3496;
	float _3499 = 5.00000000e-01 + w1_3470;
	float w01 = _3499;
	float _3501 = w2_3474 + w3_3478;
	float w23 = _3501;
	float _3503 = w4_3482 + w5_3486;
	float w45 = _3503;
	float _3505 = w1_3470 / w01;
	float w01_ratio = _3505;
	float _3507 = w3_3478 / w23;
	float w23_ratio = _3507;
	float _3509 = w5_3486 / w45;
	float w45_ratio = _3509;
	float3 sum_3512 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3514 = 4.00000000e+00 + w45_ratio;
	float2 _3516 = _3514.xx * dxdy;
	float2 _3517 = tex_uv - _3516;
	float2 _3518;
	float _3519;
	_3518 = _3517;
	_3519 = input_gamma;
	float4 _3520 = F__tex2D_linearize(tex, _3518, _3519);
	float3 _3523 = w45.xxx * _3520.xyz;
	float3 _3524 = sum_3512 + _3523;
	sum_3512 = _3524;
	float _3526 = 2.00000000e+00 + w23_ratio;
	float2 _3528 = _3526.xx * dxdy;
	float2 _3529 = tex_uv - _3528;
	float2 _3530;
	float _3531;
	_3530 = _3529;
	_3531 = input_gamma;
	float4 _3532 = F__tex2D_linearize(tex, _3530, _3531);
	float3 _3535 = w23.xxx * _3532.xyz;
	float3 _3536 = sum_3512 + _3535;
	sum_3512 = _3536;
	float2 _3538 = w01_ratio.xx * dxdy;
	float2 _3539 = tex_uv - _3538;
	float2 _3540;
	float _3541;
	_3540 = _3539;
	_3541 = input_gamma;
	float4 _3542 = F__tex2D_linearize(tex, _3540, _3541);
	float3 _3545 = w01.xxx * _3542.xyz;
	float3 _3546 = sum_3512 + _3545;
	sum_3512 = _3546;
	float2 _3548 = w01_ratio.xx * dxdy;
	float2 _3549 = tex_uv + _3548;
	float2 _3550;
	float _3551;
	_3550 = _3549;
	_3551 = input_gamma;
	float4 _3552 = F__tex2D_linearize(tex, _3550, _3551);
	float3 _3555 = w01.xxx * _3552.xyz;
	float3 _3556 = sum_3512 + _3555;
	sum_3512 = _3556;
	float _3558 = 2.00000000e+00 + w23_ratio;
	float2 _3560 = _3558.xx * dxdy;
	float2 _3561 = tex_uv + _3560;
	float2 _3562;
	float _3563;
	_3562 = _3561;
	_3563 = input_gamma;
	float4 _3564 = F__tex2D_linearize(tex, _3562, _3563);
	float3 _3567 = w23.xxx * _3564.xyz;
	float3 _3568 = sum_3512 + _3567;
	sum_3512 = _3568;
	float _3570 = 4.00000000e+00 + w45_ratio;
	float2 _3572 = _3570.xx * dxdy;
	float2 _3573 = tex_uv + _3572;
	float2 _3574;
	float _3575;
	_3574 = _3573;
	_3575 = input_gamma;
	float4 _3576 = F__tex2D_linearize(tex, _3574, _3575);
	float3 _3579 = w45.xxx * _3576.xyz;
	float3 _3580 = sum_3512 + _3579;
	sum_3512 = _3580;
	float3 _3582 = sum_3512 * weight_sum_inv_3497.xxx;
	return _3582;
}
float3 F__tex2Dblur9fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3590 = sigma * sigma;
	float _3592 = 5.00000000e-01 / _3590;
	float denom_inv_3593 = _3592;
	float _3595 = -1.00000000e+00 * denom_inv_3593;
	float _3596 = exp(_3595);
	float w1_3597 = _3596;
	float _3599 = -4.00000000e+00 * denom_inv_3593;
	float _3600 = exp(_3599);
	float w2_3601 = _3600;
	float _3603 = -9.00000000e+00 * denom_inv_3593;
	float _3604 = exp(_3603);
	float w3_3605 = _3604;
	float _3607 = -1.60000000e+01 * denom_inv_3593;
	float _3608 = exp(_3607);
	float w4_3609 = _3608;
	float _3610 = w1_3597 + w2_3601;
	float _3611 = _3610 + w3_3605;
	float _3612 = _3611 + w4_3609;
	float _3614 = 2.00000000e+00 * _3612;
	float _3616 = 1.00000000e+00 + _3614;
	float _3618 = 1.00000000e+00 / _3616;
	float weight_sum_inv_3619 = _3618;
	float _3620 = w1_3597 + w2_3601;
	float w12 = _3620;
	float _3622 = w3_3605 + w4_3609;
	float w34 = _3622;
	float _3624 = w2_3601 / w12;
	float w12_ratio = _3624;
	float _3626 = w4_3609 / w34;
	float w34_ratio = _3626;
	float3 sum_3629 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3631 = 3.00000000e+00 + w34_ratio;
	float2 _3633 = _3631.xx * dxdy;
	float2 _3634 = tex_uv - _3633;
	float2 _3635;
	float _3636;
	_3635 = _3634;
	_3636 = input_gamma;
	float4 _3637 = F__tex2D_linearize(tex, _3635, _3636);
	float3 _3640 = w34.xxx * _3637.xyz;
	float3 _3641 = sum_3629 + _3640;
	sum_3629 = _3641;
	float _3643 = 1.00000000e+00 + w12_ratio;
	float2 _3645 = _3643.xx * dxdy;
	float2 _3646 = tex_uv - _3645;
	float2 _3647;
	float _3648;
	_3647 = _3646;
	_3648 = input_gamma;
	float4 _3649 = F__tex2D_linearize(tex, _3647, _3648);
	float3 _3652 = w12.xxx * _3649.xyz;
	float3 _3653 = sum_3629 + _3652;
	sum_3629 = _3653;
	float2 _3654;
	float _3655;
	_3654 = tex_uv;
	_3655 = input_gamma;
	float4 _3656 = F__tex2D_linearize(tex, _3654, _3655);
	float3 _3659 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3656.xyz;
	float3 _3660 = sum_3629 + _3659;
	sum_3629 = _3660;
	float _3662 = 1.00000000e+00 + w12_ratio;
	float2 _3664 = _3662.xx * dxdy;
	float2 _3665 = tex_uv + _3664;
	float2 _3666;
	float _3667;
	_3666 = _3665;
	_3667 = input_gamma;
	float4 _3668 = F__tex2D_linearize(tex, _3666, _3667);
	float3 _3671 = w12.xxx * _3668.xyz;
	float3 _3672 = sum_3629 + _3671;
	sum_3629 = _3672;
	float _3674 = 3.00000000e+00 + w34_ratio;
	float2 _3676 = _3674.xx * dxdy;
	float2 _3677 = tex_uv + _3676;
	float2 _3678;
	float _3679;
	_3678 = _3677;
	_3679 = input_gamma;
	float4 _3680 = F__tex2D_linearize(tex, _3678, _3679);
	float3 _3683 = w34.xxx * _3680.xyz;
	float3 _3684 = sum_3629 + _3683;
	sum_3629 = _3684;
	float3 _3686 = sum_3629 * weight_sum_inv_3619.xxx;
	return _3686;
}
float3 F__tex2Dblur7fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3694 = sigma * sigma;
	float _3696 = 5.00000000e-01 / _3694;
	float denom_inv_3697 = _3696;
	float _3699 = -1.00000000e+00 * denom_inv_3697;
	float _3700 = exp(_3699);
	float w1_3701 = _3700;
	float _3703 = -4.00000000e+00 * denom_inv_3697;
	float _3704 = exp(_3703);
	float w2_3705 = _3704;
	float _3707 = -9.00000000e+00 * denom_inv_3697;
	float _3708 = exp(_3707);
	float w3_3709 = _3708;
	float _3710 = w1_3701 + w2_3705;
	float _3711 = _3710 + w3_3709;
	float _3713 = 2.00000000e+00 * _3711;
	float _3715 = 1.00000000e+00 + _3713;
	float _3717 = 1.00000000e+00 / _3715;
	float weight_sum_inv_3718 = _3717;
	float _3720 = 5.00000000e-01 + w1_3701;
	float w01_3721 = _3720;
	float _3722 = w2_3705 + w3_3709;
	float w23_3723 = _3722;
	float _3724 = w1_3701 / w01_3721;
	float w01_ratio_3725 = _3724;
	float _3726 = w3_3709 / w23_3723;
	float w23_ratio_3727 = _3726;
	float3 sum_3729 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3731 = 2.00000000e+00 + w23_ratio_3727;
	float2 _3733 = _3731.xx * dxdy;
	float2 _3734 = tex_uv - _3733;
	float2 _3735;
	float _3736;
	_3735 = _3734;
	_3736 = input_gamma;
	float4 _3737 = F__tex2D_linearize(tex, _3735, _3736);
	float3 _3740 = w23_3723.xxx * _3737.xyz;
	float3 _3741 = sum_3729 + _3740;
	sum_3729 = _3741;
	float2 _3743 = w01_ratio_3725.xx * dxdy;
	float2 _3744 = tex_uv - _3743;
	float2 _3745;
	float _3746;
	_3745 = _3744;
	_3746 = input_gamma;
	float4 _3747 = F__tex2D_linearize(tex, _3745, _3746);
	float3 _3750 = w01_3721.xxx * _3747.xyz;
	float3 _3751 = sum_3729 + _3750;
	sum_3729 = _3751;
	float2 _3753 = w01_ratio_3725.xx * dxdy;
	float2 _3754 = tex_uv + _3753;
	float2 _3755;
	float _3756;
	_3755 = _3754;
	_3756 = input_gamma;
	float4 _3757 = F__tex2D_linearize(tex, _3755, _3756);
	float3 _3760 = w01_3721.xxx * _3757.xyz;
	float3 _3761 = sum_3729 + _3760;
	sum_3729 = _3761;
	float _3763 = 2.00000000e+00 + w23_ratio_3727;
	float2 _3765 = _3763.xx * dxdy;
	float2 _3766 = tex_uv + _3765;
	float2 _3767;
	float _3768;
	_3767 = _3766;
	_3768 = input_gamma;
	float4 _3769 = F__tex2D_linearize(tex, _3767, _3768);
	float3 _3772 = w23_3723.xxx * _3769.xyz;
	float3 _3773 = sum_3729 + _3772;
	sum_3729 = _3773;
	float3 _3775 = sum_3729 * weight_sum_inv_3718.xxx;
	return _3775;
}
float3 F__tex2Dblur5fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3783 = sigma * sigma;
	float _3785 = 5.00000000e-01 / _3783;
	float denom_inv_3786 = _3785;
	float _3788 = -1.00000000e+00 * denom_inv_3786;
	float _3789 = exp(_3788);
	float w1_3790 = _3789;
	float _3792 = -4.00000000e+00 * denom_inv_3786;
	float _3793 = exp(_3792);
	float w2_3794 = _3793;
	float _3795 = w1_3790 + w2_3794;
	float _3797 = 2.00000000e+00 * _3795;
	float _3799 = 1.00000000e+00 + _3797;
	float _3801 = 1.00000000e+00 / _3799;
	float weight_sum_inv_3802 = _3801;
	float _3803 = w1_3790 + w2_3794;
	float w12_3804 = _3803;
	float _3805 = w2_3794 / w12_3804;
	float w12_ratio_3806 = _3805;
	float3 sum_3808 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _3810 = 1.00000000e+00 + w12_ratio_3806;
	float2 _3812 = _3810.xx * dxdy;
	float2 _3813 = tex_uv - _3812;
	float2 _3814;
	float _3815;
	_3814 = _3813;
	_3815 = input_gamma;
	float4 _3816 = F__tex2D_linearize(tex, _3814, _3815);
	float3 _3819 = w12_3804.xxx * _3816.xyz;
	float3 _3820 = sum_3808 + _3819;
	sum_3808 = _3820;
	float2 _3821;
	float _3822;
	_3821 = tex_uv;
	_3822 = input_gamma;
	float4 _3823 = F__tex2D_linearize(tex, _3821, _3822);
	float3 _3826 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _3823.xyz;
	float3 _3827 = sum_3808 + _3826;
	sum_3808 = _3827;
	float _3829 = 1.00000000e+00 + w12_ratio_3806;
	float2 _3831 = _3829.xx * dxdy;
	float2 _3832 = tex_uv + _3831;
	float2 _3833;
	float _3834;
	_3833 = _3832;
	_3834 = input_gamma;
	float4 _3835 = F__tex2D_linearize(tex, _3833, _3834);
	float3 _3838 = w12_3804.xxx * _3835.xyz;
	float3 _3839 = sum_3808 + _3838;
	sum_3808 = _3839;
	float3 _3841 = sum_3808 * weight_sum_inv_3802.xxx;
	return _3841;
}
float3 F__tex2Dblur3fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3849 = sigma * sigma;
	float _3851 = 5.00000000e-01 / _3849;
	float denom_inv_3852 = _3851;
	float _3854 = -1.00000000e+00 * denom_inv_3852;
	float _3855 = exp(_3854);
	float w1_3856 = _3855;
	float _3858 = 2.00000000e+00 * w1_3856;
	float _3860 = 1.00000000e+00 + _3858;
	float _3862 = 1.00000000e+00 / _3860;
	float weight_sum_inv_3863 = _3862;
	float _3865 = 5.00000000e-01 + w1_3856;
	float w01_3866 = _3865;
	float _3867 = w1_3856 / w01_3866;
	float w01_ratio_3868 = _3867;
	float2 _3870 = w01_ratio_3868.xx * dxdy;
	float2 _3871 = tex_uv - _3870;
	float2 _3872;
	float _3873;
	_3872 = _3871;
	_3873 = input_gamma;
	float4 _3874 = F__tex2D_linearize(tex, _3872, _3873);
	float2 _3876 = w01_ratio_3868.xx * dxdy;
	float2 _3877 = tex_uv + _3876;
	float2 _3878;
	float _3879;
	_3878 = _3877;
	_3879 = input_gamma;
	float4 _3880 = F__tex2D_linearize(tex, _3878, _3879);
	float3 _3883 = _3874.xyz + _3880.xyz;
	float3 _3885 = float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) * _3883;
	return _3885;
}
float3 F__tex2Dblur43fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _3893 = sigma * sigma;
	float _3895 = 5.00000000e-01 / _3893;
	float denom_inv_3896 = _3895;
	float _3898 = -1.00000000e+00 * denom_inv_3896;
	float _3899 = exp(_3898);
	float w1_3900 = _3899;
	float _3902 = -4.00000000e+00 * denom_inv_3896;
	float _3903 = exp(_3902);
	float w2_3904 = _3903;
	float _3906 = -9.00000000e+00 * denom_inv_3896;
	float _3907 = exp(_3906);
	float w3_3908 = _3907;
	float _3910 = -1.60000000e+01 * denom_inv_3896;
	float _3911 = exp(_3910);
	float w4_3912 = _3911;
	float _3914 = -2.50000000e+01 * denom_inv_3896;
	float _3915 = exp(_3914);
	float w5_3916 = _3915;
	float _3918 = -3.60000000e+01 * denom_inv_3896;
	float _3919 = exp(_3918);
	float w6 = _3919;
	float _3922 = -4.90000000e+01 * denom_inv_3896;
	float _3923 = exp(_3922);
	float w7 = _3923;
	float _3926 = -6.40000000e+01 * denom_inv_3896;
	float _3927 = exp(_3926);
	float w8 = _3927;
	float _3930 = -8.10000000e+01 * denom_inv_3896;
	float _3931 = exp(_3930);
	float w9 = _3931;
	float _3934 = -1.00000000e+02 * denom_inv_3896;
	float _3935 = exp(_3934);
	float w10 = _3935;
	float _3938 = -1.21000000e+02 * denom_inv_3896;
	float _3939 = exp(_3938);
	float w11 = _3939;
	float _3942 = -1.44000000e+02 * denom_inv_3896;
	float _3943 = exp(_3942);
	float w12_3944 = _3943;
	float _3946 = -1.69000000e+02 * denom_inv_3896;
	float _3947 = exp(_3946);
	float w13 = _3947;
	float _3950 = -1.96000000e+02 * denom_inv_3896;
	float _3951 = exp(_3950);
	float w14 = _3951;
	float _3954 = -2.25000000e+02 * denom_inv_3896;
	float _3955 = exp(_3954);
	float w15 = _3955;
	float _3958 = -2.56000000e+02 * denom_inv_3896;
	float _3959 = exp(_3958);
	float w16 = _3959;
	float _3962 = -2.89000000e+02 * denom_inv_3896;
	float _3963 = exp(_3962);
	float w17 = _3963;
	float _3966 = -3.24000000e+02 * denom_inv_3896;
	float _3967 = exp(_3966);
	float w18 = _3967;
	float _3970 = -3.61000000e+02 * denom_inv_3896;
	float _3971 = exp(_3970);
	float w19 = _3971;
	float _3974 = -4.00000000e+02 * denom_inv_3896;
	float _3975 = exp(_3974);
	float w20 = _3975;
	float _3978 = -4.41000000e+02 * denom_inv_3896;
	float _3979 = exp(_3978);
	float w21 = _3979;
	float _3981;
	_3981 = sigma;
	float _3982 = F__get_fast_gaussian_weight_sum_inv(_3981);
	float weight_sum_inv_3983 = _3982;
	float _3985 = 5.00000000e-01 + w1_3900;
	float w0_1 = _3985;
	float _3987 = w2_3904 + w3_3908;
	float w2_3 = _3987;
	float _3989 = w4_3912 + w5_3916;
	float w4_5 = _3989;
	float _3991 = w6 + w7;
	float w6_7 = _3991;
	float _3993 = w8 + w9;
	float w8_9 = _3993;
	float _3995 = w10 + w11;
	float w10_11 = _3995;
	float _3997 = w12_3944 + w13;
	float w12_13 = _3997;
	float _3999 = w14 + w15;
	float w14_15 = _3999;
	float _4001 = w16 + w17;
	float w16_17 = _4001;
	float _4003 = w18 + w19;
	float w18_19 = _4003;
	float _4005 = w20 + w21;
	float w20_21 = _4005;
	float _4007 = w1_3900 / w0_1;
	float w0_1_ratio = _4007;
	float _4009 = w3_3908 / w2_3;
	float w2_3_ratio = _4009;
	float _4011 = w5_3916 / w4_5;
	float w4_5_ratio = _4011;
	float _4013 = w7 / w6_7;
	float w6_7_ratio = _4013;
	float _4015 = w9 / w8_9;
	float w8_9_ratio = _4015;
	float _4017 = w11 / w10_11;
	float w10_11_ratio = _4017;
	float _4019 = w13 / w12_13;
	float w12_13_ratio = _4019;
	float _4021 = w15 / w14_15;
	float w14_15_ratio = _4021;
	float _4023 = w17 / w16_17;
	float w16_17_ratio = _4023;
	float _4025 = w19 / w18_19;
	float w18_19_ratio = _4025;
	float _4027 = w21 / w20_21;
	float w20_21_ratio = _4027;
	float3 sum_4030 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4032 = 2.00000000e+01 + w20_21_ratio;
	float2 _4034 = _4032.xx * dxdy;
	float2 _4035 = tex_uv - _4034;
	float2 _4036;
	float _4037;
	_4036 = _4035;
	_4037 = input_gamma;
	float4 _4038 = F__tex2D_linearize(tex, _4036, _4037);
	float3 _4041 = w20_21.xxx * _4038.xyz;
	float3 _4042 = sum_4030 + _4041;
	sum_4030 = _4042;
	float _4044 = 1.80000000e+01 + w18_19_ratio;
	float2 _4046 = _4044.xx * dxdy;
	float2 _4047 = tex_uv - _4046;
	float2 _4048;
	float _4049;
	_4048 = _4047;
	_4049 = input_gamma;
	float4 _4050 = F__tex2D_linearize(tex, _4048, _4049);
	float3 _4053 = w18_19.xxx * _4050.xyz;
	float3 _4054 = sum_4030 + _4053;
	sum_4030 = _4054;
	float _4056 = 1.60000000e+01 + w16_17_ratio;
	float2 _4058 = _4056.xx * dxdy;
	float2 _4059 = tex_uv - _4058;
	float2 _4060;
	float _4061;
	_4060 = _4059;
	_4061 = input_gamma;
	float4 _4062 = F__tex2D_linearize(tex, _4060, _4061);
	float3 _4065 = w16_17.xxx * _4062.xyz;
	float3 _4066 = sum_4030 + _4065;
	sum_4030 = _4066;
	float _4068 = 1.40000000e+01 + w14_15_ratio;
	float2 _4070 = _4068.xx * dxdy;
	float2 _4071 = tex_uv - _4070;
	float2 _4072;
	float _4073;
	_4072 = _4071;
	_4073 = input_gamma;
	float4 _4074 = F__tex2D_linearize(tex, _4072, _4073);
	float3 _4077 = w14_15.xxx * _4074.xyz;
	float3 _4078 = sum_4030 + _4077;
	sum_4030 = _4078;
	float _4080 = 1.20000000e+01 + w12_13_ratio;
	float2 _4082 = _4080.xx * dxdy;
	float2 _4083 = tex_uv - _4082;
	float2 _4084;
	float _4085;
	_4084 = _4083;
	_4085 = input_gamma;
	float4 _4086 = F__tex2D_linearize(tex, _4084, _4085);
	float3 _4089 = w12_13.xxx * _4086.xyz;
	float3 _4090 = sum_4030 + _4089;
	sum_4030 = _4090;
	float _4092 = 1.00000000e+01 + w10_11_ratio;
	float2 _4094 = _4092.xx * dxdy;
	float2 _4095 = tex_uv - _4094;
	float2 _4096;
	float _4097;
	_4096 = _4095;
	_4097 = input_gamma;
	float4 _4098 = F__tex2D_linearize(tex, _4096, _4097);
	float3 _4101 = w10_11.xxx * _4098.xyz;
	float3 _4102 = sum_4030 + _4101;
	sum_4030 = _4102;
	float _4104 = 8.00000000e+00 + w8_9_ratio;
	float2 _4106 = _4104.xx * dxdy;
	float2 _4107 = tex_uv - _4106;
	float2 _4108;
	float _4109;
	_4108 = _4107;
	_4109 = input_gamma;
	float4 _4110 = F__tex2D_linearize(tex, _4108, _4109);
	float3 _4113 = w8_9.xxx * _4110.xyz;
	float3 _4114 = sum_4030 + _4113;
	sum_4030 = _4114;
	float _4116 = 6.00000000e+00 + w6_7_ratio;
	float2 _4118 = _4116.xx * dxdy;
	float2 _4119 = tex_uv - _4118;
	float2 _4120;
	float _4121;
	_4120 = _4119;
	_4121 = input_gamma;
	float4 _4122 = F__tex2D_linearize(tex, _4120, _4121);
	float3 _4125 = w6_7.xxx * _4122.xyz;
	float3 _4126 = sum_4030 + _4125;
	sum_4030 = _4126;
	float _4128 = 4.00000000e+00 + w4_5_ratio;
	float2 _4130 = _4128.xx * dxdy;
	float2 _4131 = tex_uv - _4130;
	float2 _4132;
	float _4133;
	_4132 = _4131;
	_4133 = input_gamma;
	float4 _4134 = F__tex2D_linearize(tex, _4132, _4133);
	float3 _4137 = w4_5.xxx * _4134.xyz;
	float3 _4138 = sum_4030 + _4137;
	sum_4030 = _4138;
	float _4140 = 2.00000000e+00 + w2_3_ratio;
	float2 _4142 = _4140.xx * dxdy;
	float2 _4143 = tex_uv - _4142;
	float2 _4144;
	float _4145;
	_4144 = _4143;
	_4145 = input_gamma;
	float4 _4146 = F__tex2D_linearize(tex, _4144, _4145);
	float3 _4149 = w2_3.xxx * _4146.xyz;
	float3 _4150 = sum_4030 + _4149;
	sum_4030 = _4150;
	float2 _4152 = w0_1_ratio.xx * dxdy;
	float2 _4153 = tex_uv - _4152;
	float2 _4154;
	float _4155;
	_4154 = _4153;
	_4155 = input_gamma;
	float4 _4156 = F__tex2D_linearize(tex, _4154, _4155);
	float3 _4159 = w0_1.xxx * _4156.xyz;
	float3 _4160 = sum_4030 + _4159;
	sum_4030 = _4160;
	float2 _4162 = w0_1_ratio.xx * dxdy;
	float2 _4163 = tex_uv + _4162;
	float2 _4164;
	float _4165;
	_4164 = _4163;
	_4165 = input_gamma;
	float4 _4166 = F__tex2D_linearize(tex, _4164, _4165);
	float3 _4169 = w0_1.xxx * _4166.xyz;
	float3 _4170 = sum_4030 + _4169;
	sum_4030 = _4170;
	float _4172 = 2.00000000e+00 + w2_3_ratio;
	float2 _4174 = _4172.xx * dxdy;
	float2 _4175 = tex_uv + _4174;
	float2 _4176;
	float _4177;
	_4176 = _4175;
	_4177 = input_gamma;
	float4 _4178 = F__tex2D_linearize(tex, _4176, _4177);
	float3 _4181 = w2_3.xxx * _4178.xyz;
	float3 _4182 = sum_4030 + _4181;
	sum_4030 = _4182;
	float _4184 = 4.00000000e+00 + w4_5_ratio;
	float2 _4186 = _4184.xx * dxdy;
	float2 _4187 = tex_uv + _4186;
	float2 _4188;
	float _4189;
	_4188 = _4187;
	_4189 = input_gamma;
	float4 _4190 = F__tex2D_linearize(tex, _4188, _4189);
	float3 _4193 = w4_5.xxx * _4190.xyz;
	float3 _4194 = sum_4030 + _4193;
	sum_4030 = _4194;
	float _4196 = 6.00000000e+00 + w6_7_ratio;
	float2 _4198 = _4196.xx * dxdy;
	float2 _4199 = tex_uv + _4198;
	float2 _4200;
	float _4201;
	_4200 = _4199;
	_4201 = input_gamma;
	float4 _4202 = F__tex2D_linearize(tex, _4200, _4201);
	float3 _4205 = w6_7.xxx * _4202.xyz;
	float3 _4206 = sum_4030 + _4205;
	sum_4030 = _4206;
	float _4208 = 8.00000000e+00 + w8_9_ratio;
	float2 _4210 = _4208.xx * dxdy;
	float2 _4211 = tex_uv + _4210;
	float2 _4212;
	float _4213;
	_4212 = _4211;
	_4213 = input_gamma;
	float4 _4214 = F__tex2D_linearize(tex, _4212, _4213);
	float3 _4217 = w8_9.xxx * _4214.xyz;
	float3 _4218 = sum_4030 + _4217;
	sum_4030 = _4218;
	float _4220 = 1.00000000e+01 + w10_11_ratio;
	float2 _4222 = _4220.xx * dxdy;
	float2 _4223 = tex_uv + _4222;
	float2 _4224;
	float _4225;
	_4224 = _4223;
	_4225 = input_gamma;
	float4 _4226 = F__tex2D_linearize(tex, _4224, _4225);
	float3 _4229 = w10_11.xxx * _4226.xyz;
	float3 _4230 = sum_4030 + _4229;
	sum_4030 = _4230;
	float _4232 = 1.20000000e+01 + w12_13_ratio;
	float2 _4234 = _4232.xx * dxdy;
	float2 _4235 = tex_uv + _4234;
	float2 _4236;
	float _4237;
	_4236 = _4235;
	_4237 = input_gamma;
	float4 _4238 = F__tex2D_linearize(tex, _4236, _4237);
	float3 _4241 = w12_13.xxx * _4238.xyz;
	float3 _4242 = sum_4030 + _4241;
	sum_4030 = _4242;
	float _4244 = 1.40000000e+01 + w14_15_ratio;
	float2 _4246 = _4244.xx * dxdy;
	float2 _4247 = tex_uv + _4246;
	float2 _4248;
	float _4249;
	_4248 = _4247;
	_4249 = input_gamma;
	float4 _4250 = F__tex2D_linearize(tex, _4248, _4249);
	float3 _4253 = w14_15.xxx * _4250.xyz;
	float3 _4254 = sum_4030 + _4253;
	sum_4030 = _4254;
	float _4256 = 1.60000000e+01 + w16_17_ratio;
	float2 _4258 = _4256.xx * dxdy;
	float2 _4259 = tex_uv + _4258;
	float2 _4260;
	float _4261;
	_4260 = _4259;
	_4261 = input_gamma;
	float4 _4262 = F__tex2D_linearize(tex, _4260, _4261);
	float3 _4265 = w16_17.xxx * _4262.xyz;
	float3 _4266 = sum_4030 + _4265;
	sum_4030 = _4266;
	float _4268 = 1.80000000e+01 + w18_19_ratio;
	float2 _4270 = _4268.xx * dxdy;
	float2 _4271 = tex_uv + _4270;
	float2 _4272;
	float _4273;
	_4272 = _4271;
	_4273 = input_gamma;
	float4 _4274 = F__tex2D_linearize(tex, _4272, _4273);
	float3 _4277 = w18_19.xxx * _4274.xyz;
	float3 _4278 = sum_4030 + _4277;
	sum_4030 = _4278;
	float _4280 = 2.00000000e+01 + w20_21_ratio;
	float2 _4282 = _4280.xx * dxdy;
	float2 _4283 = tex_uv + _4282;
	float2 _4284;
	float _4285;
	_4284 = _4283;
	_4285 = input_gamma;
	float4 _4286 = F__tex2D_linearize(tex, _4284, _4285);
	float3 _4289 = w20_21.xxx * _4286.xyz;
	float3 _4290 = sum_4030 + _4289;
	sum_4030 = _4290;
	float3 _4292 = sum_4030 * weight_sum_inv_3983.xxx;
	return _4292;
}
float3 F__tex2Dblur31fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _4300 = sigma * sigma;
	float _4302 = 5.00000000e-01 / _4300;
	float denom_inv_4303 = _4302;
	float _4305 = -1.00000000e+00 * denom_inv_4303;
	float _4306 = exp(_4305);
	float w1_4307 = _4306;
	float _4309 = -4.00000000e+00 * denom_inv_4303;
	float _4310 = exp(_4309);
	float w2_4311 = _4310;
	float _4313 = -9.00000000e+00 * denom_inv_4303;
	float _4314 = exp(_4313);
	float w3_4315 = _4314;
	float _4317 = -1.60000000e+01 * denom_inv_4303;
	float _4318 = exp(_4317);
	float w4_4319 = _4318;
	float _4321 = -2.50000000e+01 * denom_inv_4303;
	float _4322 = exp(_4321);
	float w5_4323 = _4322;
	float _4325 = -3.60000000e+01 * denom_inv_4303;
	float _4326 = exp(_4325);
	float w6_4327 = _4326;
	float _4329 = -4.90000000e+01 * denom_inv_4303;
	float _4330 = exp(_4329);
	float w7_4331 = _4330;
	float _4333 = -6.40000000e+01 * denom_inv_4303;
	float _4334 = exp(_4333);
	float w8_4335 = _4334;
	float _4337 = -8.10000000e+01 * denom_inv_4303;
	float _4338 = exp(_4337);
	float w9_4339 = _4338;
	float _4341 = -1.00000000e+02 * denom_inv_4303;
	float _4342 = exp(_4341);
	float w10_4343 = _4342;
	float _4345 = -1.21000000e+02 * denom_inv_4303;
	float _4346 = exp(_4345);
	float w11_4347 = _4346;
	float _4349 = -1.44000000e+02 * denom_inv_4303;
	float _4350 = exp(_4349);
	float w12_4351 = _4350;
	float _4353 = -1.69000000e+02 * denom_inv_4303;
	float _4354 = exp(_4353);
	float w13_4355 = _4354;
	float _4357 = -1.96000000e+02 * denom_inv_4303;
	float _4358 = exp(_4357);
	float w14_4359 = _4358;
	float _4361 = -2.25000000e+02 * denom_inv_4303;
	float _4362 = exp(_4361);
	float w15_4363 = _4362;
	float _4364;
	_4364 = sigma;
	float _4365 = F__get_fast_gaussian_weight_sum_inv(_4364);
	float weight_sum_inv_4366 = _4365;
	float _4368 = 5.00000000e-01 + w1_4307;
	float w0_1_4369 = _4368;
	float _4370 = w2_4311 + w3_4315;
	float w2_3_4371 = _4370;
	float _4372 = w4_4319 + w5_4323;
	float w4_5_4373 = _4372;
	float _4374 = w6_4327 + w7_4331;
	float w6_7_4375 = _4374;
	float _4376 = w8_4335 + w9_4339;
	float w8_9_4377 = _4376;
	float _4378 = w10_4343 + w11_4347;
	float w10_11_4379 = _4378;
	float _4380 = w12_4351 + w13_4355;
	float w12_13_4381 = _4380;
	float _4382 = w14_4359 + w15_4363;
	float w14_15_4383 = _4382;
	float _4384 = w1_4307 / w0_1_4369;
	float w0_1_ratio_4385 = _4384;
	float _4386 = w3_4315 / w2_3_4371;
	float w2_3_ratio_4387 = _4386;
	float _4388 = w5_4323 / w4_5_4373;
	float w4_5_ratio_4389 = _4388;
	float _4390 = w7_4331 / w6_7_4375;
	float w6_7_ratio_4391 = _4390;
	float _4392 = w9_4339 / w8_9_4377;
	float w8_9_ratio_4393 = _4392;
	float _4394 = w11_4347 / w10_11_4379;
	float w10_11_ratio_4395 = _4394;
	float _4396 = w13_4355 / w12_13_4381;
	float w12_13_ratio_4397 = _4396;
	float _4398 = w15_4363 / w14_15_4383;
	float w14_15_ratio_4399 = _4398;
	float3 sum_4401 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4403 = 1.40000000e+01 + w14_15_ratio_4399;
	float2 _4405 = _4403.xx * dxdy;
	float2 _4406 = tex_uv - _4405;
	float2 _4407;
	float _4408;
	_4407 = _4406;
	_4408 = input_gamma;
	float4 _4409 = F__tex2D_linearize(tex, _4407, _4408);
	float3 _4412 = w14_15_4383.xxx * _4409.xyz;
	float3 _4413 = sum_4401 + _4412;
	sum_4401 = _4413;
	float _4415 = 1.20000000e+01 + w12_13_ratio_4397;
	float2 _4417 = _4415.xx * dxdy;
	float2 _4418 = tex_uv - _4417;
	float2 _4419;
	float _4420;
	_4419 = _4418;
	_4420 = input_gamma;
	float4 _4421 = F__tex2D_linearize(tex, _4419, _4420);
	float3 _4424 = w12_13_4381.xxx * _4421.xyz;
	float3 _4425 = sum_4401 + _4424;
	sum_4401 = _4425;
	float _4427 = 1.00000000e+01 + w10_11_ratio_4395;
	float2 _4429 = _4427.xx * dxdy;
	float2 _4430 = tex_uv - _4429;
	float2 _4431;
	float _4432;
	_4431 = _4430;
	_4432 = input_gamma;
	float4 _4433 = F__tex2D_linearize(tex, _4431, _4432);
	float3 _4436 = w10_11_4379.xxx * _4433.xyz;
	float3 _4437 = sum_4401 + _4436;
	sum_4401 = _4437;
	float _4439 = 8.00000000e+00 + w8_9_ratio_4393;
	float2 _4441 = _4439.xx * dxdy;
	float2 _4442 = tex_uv - _4441;
	float2 _4443;
	float _4444;
	_4443 = _4442;
	_4444 = input_gamma;
	float4 _4445 = F__tex2D_linearize(tex, _4443, _4444);
	float3 _4448 = w8_9_4377.xxx * _4445.xyz;
	float3 _4449 = sum_4401 + _4448;
	sum_4401 = _4449;
	float _4451 = 6.00000000e+00 + w6_7_ratio_4391;
	float2 _4453 = _4451.xx * dxdy;
	float2 _4454 = tex_uv - _4453;
	float2 _4455;
	float _4456;
	_4455 = _4454;
	_4456 = input_gamma;
	float4 _4457 = F__tex2D_linearize(tex, _4455, _4456);
	float3 _4460 = w6_7_4375.xxx * _4457.xyz;
	float3 _4461 = sum_4401 + _4460;
	sum_4401 = _4461;
	float _4463 = 4.00000000e+00 + w4_5_ratio_4389;
	float2 _4465 = _4463.xx * dxdy;
	float2 _4466 = tex_uv - _4465;
	float2 _4467;
	float _4468;
	_4467 = _4466;
	_4468 = input_gamma;
	float4 _4469 = F__tex2D_linearize(tex, _4467, _4468);
	float3 _4472 = w4_5_4373.xxx * _4469.xyz;
	float3 _4473 = sum_4401 + _4472;
	sum_4401 = _4473;
	float _4475 = 2.00000000e+00 + w2_3_ratio_4387;
	float2 _4477 = _4475.xx * dxdy;
	float2 _4478 = tex_uv - _4477;
	float2 _4479;
	float _4480;
	_4479 = _4478;
	_4480 = input_gamma;
	float4 _4481 = F__tex2D_linearize(tex, _4479, _4480);
	float3 _4484 = w2_3_4371.xxx * _4481.xyz;
	float3 _4485 = sum_4401 + _4484;
	sum_4401 = _4485;
	float2 _4487 = w0_1_ratio_4385.xx * dxdy;
	float2 _4488 = tex_uv - _4487;
	float2 _4489;
	float _4490;
	_4489 = _4488;
	_4490 = input_gamma;
	float4 _4491 = F__tex2D_linearize(tex, _4489, _4490);
	float3 _4494 = w0_1_4369.xxx * _4491.xyz;
	float3 _4495 = sum_4401 + _4494;
	sum_4401 = _4495;
	float2 _4497 = w0_1_ratio_4385.xx * dxdy;
	float2 _4498 = tex_uv + _4497;
	float2 _4499;
	float _4500;
	_4499 = _4498;
	_4500 = input_gamma;
	float4 _4501 = F__tex2D_linearize(tex, _4499, _4500);
	float3 _4504 = w0_1_4369.xxx * _4501.xyz;
	float3 _4505 = sum_4401 + _4504;
	sum_4401 = _4505;
	float _4507 = 2.00000000e+00 + w2_3_ratio_4387;
	float2 _4509 = _4507.xx * dxdy;
	float2 _4510 = tex_uv + _4509;
	float2 _4511;
	float _4512;
	_4511 = _4510;
	_4512 = input_gamma;
	float4 _4513 = F__tex2D_linearize(tex, _4511, _4512);
	float3 _4516 = w2_3_4371.xxx * _4513.xyz;
	float3 _4517 = sum_4401 + _4516;
	sum_4401 = _4517;
	float _4519 = 4.00000000e+00 + w4_5_ratio_4389;
	float2 _4521 = _4519.xx * dxdy;
	float2 _4522 = tex_uv + _4521;
	float2 _4523;
	float _4524;
	_4523 = _4522;
	_4524 = input_gamma;
	float4 _4525 = F__tex2D_linearize(tex, _4523, _4524);
	float3 _4528 = w4_5_4373.xxx * _4525.xyz;
	float3 _4529 = sum_4401 + _4528;
	sum_4401 = _4529;
	float _4531 = 6.00000000e+00 + w6_7_ratio_4391;
	float2 _4533 = _4531.xx * dxdy;
	float2 _4534 = tex_uv + _4533;
	float2 _4535;
	float _4536;
	_4535 = _4534;
	_4536 = input_gamma;
	float4 _4537 = F__tex2D_linearize(tex, _4535, _4536);
	float3 _4540 = w6_7_4375.xxx * _4537.xyz;
	float3 _4541 = sum_4401 + _4540;
	sum_4401 = _4541;
	float _4543 = 8.00000000e+00 + w8_9_ratio_4393;
	float2 _4545 = _4543.xx * dxdy;
	float2 _4546 = tex_uv + _4545;
	float2 _4547;
	float _4548;
	_4547 = _4546;
	_4548 = input_gamma;
	float4 _4549 = F__tex2D_linearize(tex, _4547, _4548);
	float3 _4552 = w8_9_4377.xxx * _4549.xyz;
	float3 _4553 = sum_4401 + _4552;
	sum_4401 = _4553;
	float _4555 = 1.00000000e+01 + w10_11_ratio_4395;
	float2 _4557 = _4555.xx * dxdy;
	float2 _4558 = tex_uv + _4557;
	float2 _4559;
	float _4560;
	_4559 = _4558;
	_4560 = input_gamma;
	float4 _4561 = F__tex2D_linearize(tex, _4559, _4560);
	float3 _4564 = w10_11_4379.xxx * _4561.xyz;
	float3 _4565 = sum_4401 + _4564;
	sum_4401 = _4565;
	float _4567 = 1.20000000e+01 + w12_13_ratio_4397;
	float2 _4569 = _4567.xx * dxdy;
	float2 _4570 = tex_uv + _4569;
	float2 _4571;
	float _4572;
	_4571 = _4570;
	_4572 = input_gamma;
	float4 _4573 = F__tex2D_linearize(tex, _4571, _4572);
	float3 _4576 = w12_13_4381.xxx * _4573.xyz;
	float3 _4577 = sum_4401 + _4576;
	sum_4401 = _4577;
	float _4579 = 1.40000000e+01 + w14_15_ratio_4399;
	float2 _4581 = _4579.xx * dxdy;
	float2 _4582 = tex_uv + _4581;
	float2 _4583;
	float _4584;
	_4583 = _4582;
	_4584 = input_gamma;
	float4 _4585 = F__tex2D_linearize(tex, _4583, _4584);
	float3 _4588 = w14_15_4383.xxx * _4585.xyz;
	float3 _4589 = sum_4401 + _4588;
	sum_4401 = _4589;
	float3 _4591 = sum_4401 * weight_sum_inv_4366.xxx;
	return _4591;
}
float3 F__tex2Dblur25fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _4599 = sigma * sigma;
	float _4601 = 5.00000000e-01 / _4599;
	float denom_inv_4602 = _4601;
	float _4604 = -1.00000000e+00 * denom_inv_4602;
	float _4605 = exp(_4604);
	float w1_4606 = _4605;
	float _4608 = -4.00000000e+00 * denom_inv_4602;
	float _4609 = exp(_4608);
	float w2_4610 = _4609;
	float _4612 = -9.00000000e+00 * denom_inv_4602;
	float _4613 = exp(_4612);
	float w3_4614 = _4613;
	float _4616 = -1.60000000e+01 * denom_inv_4602;
	float _4617 = exp(_4616);
	float w4_4618 = _4617;
	float _4620 = -2.50000000e+01 * denom_inv_4602;
	float _4621 = exp(_4620);
	float w5_4622 = _4621;
	float _4624 = -3.60000000e+01 * denom_inv_4602;
	float _4625 = exp(_4624);
	float w6_4626 = _4625;
	float _4628 = -4.90000000e+01 * denom_inv_4602;
	float _4629 = exp(_4628);
	float w7_4630 = _4629;
	float _4632 = -6.40000000e+01 * denom_inv_4602;
	float _4633 = exp(_4632);
	float w8_4634 = _4633;
	float _4636 = -8.10000000e+01 * denom_inv_4602;
	float _4637 = exp(_4636);
	float w9_4638 = _4637;
	float _4640 = -1.00000000e+02 * denom_inv_4602;
	float _4641 = exp(_4640);
	float w10_4642 = _4641;
	float _4644 = -1.21000000e+02 * denom_inv_4602;
	float _4645 = exp(_4644);
	float w11_4646 = _4645;
	float _4648 = -1.44000000e+02 * denom_inv_4602;
	float _4649 = exp(_4648);
	float w12_4650 = _4649;
	float _4651;
	_4651 = sigma;
	float _4652 = F__get_fast_gaussian_weight_sum_inv(_4651);
	float weight_sum_inv_4653 = _4652;
	float _4654 = w1_4606 + w2_4610;
	float w1_2 = _4654;
	float _4656 = w3_4614 + w4_4618;
	float w3_4 = _4656;
	float _4658 = w5_4622 + w6_4626;
	float w5_6 = _4658;
	float _4660 = w7_4630 + w8_4634;
	float w7_8 = _4660;
	float _4662 = w9_4638 + w10_4642;
	float w9_10 = _4662;
	float _4664 = w11_4646 + w12_4650;
	float w11_12 = _4664;
	float _4666 = w2_4610 / w1_2;
	float w1_2_ratio = _4666;
	float _4668 = w4_4618 / w3_4;
	float w3_4_ratio = _4668;
	float _4670 = w6_4626 / w5_6;
	float w5_6_ratio = _4670;
	float _4672 = w8_4634 / w7_8;
	float w7_8_ratio = _4672;
	float _4674 = w10_4642 / w9_10;
	float w9_10_ratio = _4674;
	float _4676 = w12_4650 / w11_12;
	float w11_12_ratio = _4676;
	float3 sum_4679 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4681 = 1.10000000e+01 + w11_12_ratio;
	float2 _4683 = _4681.xx * dxdy;
	float2 _4684 = tex_uv - _4683;
	float2 _4685;
	float _4686;
	_4685 = _4684;
	_4686 = input_gamma;
	float4 _4687 = F__tex2D_linearize(tex, _4685, _4686);
	float3 _4690 = w11_12.xxx * _4687.xyz;
	float3 _4691 = sum_4679 + _4690;
	sum_4679 = _4691;
	float _4693 = 9.00000000e+00 + w9_10_ratio;
	float2 _4695 = _4693.xx * dxdy;
	float2 _4696 = tex_uv - _4695;
	float2 _4697;
	float _4698;
	_4697 = _4696;
	_4698 = input_gamma;
	float4 _4699 = F__tex2D_linearize(tex, _4697, _4698);
	float3 _4702 = w9_10.xxx * _4699.xyz;
	float3 _4703 = sum_4679 + _4702;
	sum_4679 = _4703;
	float _4705 = 7.00000000e+00 + w7_8_ratio;
	float2 _4707 = _4705.xx * dxdy;
	float2 _4708 = tex_uv - _4707;
	float2 _4709;
	float _4710;
	_4709 = _4708;
	_4710 = input_gamma;
	float4 _4711 = F__tex2D_linearize(tex, _4709, _4710);
	float3 _4714 = w7_8.xxx * _4711.xyz;
	float3 _4715 = sum_4679 + _4714;
	sum_4679 = _4715;
	float _4717 = 5.00000000e+00 + w5_6_ratio;
	float2 _4719 = _4717.xx * dxdy;
	float2 _4720 = tex_uv - _4719;
	float2 _4721;
	float _4722;
	_4721 = _4720;
	_4722 = input_gamma;
	float4 _4723 = F__tex2D_linearize(tex, _4721, _4722);
	float3 _4726 = w5_6.xxx * _4723.xyz;
	float3 _4727 = sum_4679 + _4726;
	sum_4679 = _4727;
	float _4729 = 3.00000000e+00 + w3_4_ratio;
	float2 _4731 = _4729.xx * dxdy;
	float2 _4732 = tex_uv - _4731;
	float2 _4733;
	float _4734;
	_4733 = _4732;
	_4734 = input_gamma;
	float4 _4735 = F__tex2D_linearize(tex, _4733, _4734);
	float3 _4738 = w3_4.xxx * _4735.xyz;
	float3 _4739 = sum_4679 + _4738;
	sum_4679 = _4739;
	float _4741 = 1.00000000e+00 + w1_2_ratio;
	float2 _4743 = _4741.xx * dxdy;
	float2 _4744 = tex_uv - _4743;
	float2 _4745;
	float _4746;
	_4745 = _4744;
	_4746 = input_gamma;
	float4 _4747 = F__tex2D_linearize(tex, _4745, _4746);
	float3 _4750 = w1_2.xxx * _4747.xyz;
	float3 _4751 = sum_4679 + _4750;
	sum_4679 = _4751;
	float2 _4752;
	float _4753;
	_4752 = tex_uv;
	_4753 = input_gamma;
	float4 _4754 = F__tex2D_linearize(tex, _4752, _4753);
	float3 _4757 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _4754.xyz;
	float3 _4758 = sum_4679 + _4757;
	sum_4679 = _4758;
	float _4760 = 1.00000000e+00 + w1_2_ratio;
	float2 _4762 = _4760.xx * dxdy;
	float2 _4763 = tex_uv + _4762;
	float2 _4764;
	float _4765;
	_4764 = _4763;
	_4765 = input_gamma;
	float4 _4766 = F__tex2D_linearize(tex, _4764, _4765);
	float3 _4769 = w1_2.xxx * _4766.xyz;
	float3 _4770 = sum_4679 + _4769;
	sum_4679 = _4770;
	float _4772 = 3.00000000e+00 + w3_4_ratio;
	float2 _4774 = _4772.xx * dxdy;
	float2 _4775 = tex_uv + _4774;
	float2 _4776;
	float _4777;
	_4776 = _4775;
	_4777 = input_gamma;
	float4 _4778 = F__tex2D_linearize(tex, _4776, _4777);
	float3 _4781 = w3_4.xxx * _4778.xyz;
	float3 _4782 = sum_4679 + _4781;
	sum_4679 = _4782;
	float _4784 = 5.00000000e+00 + w5_6_ratio;
	float2 _4786 = _4784.xx * dxdy;
	float2 _4787 = tex_uv + _4786;
	float2 _4788;
	float _4789;
	_4788 = _4787;
	_4789 = input_gamma;
	float4 _4790 = F__tex2D_linearize(tex, _4788, _4789);
	float3 _4793 = w5_6.xxx * _4790.xyz;
	float3 _4794 = sum_4679 + _4793;
	sum_4679 = _4794;
	float _4796 = 7.00000000e+00 + w7_8_ratio;
	float2 _4798 = _4796.xx * dxdy;
	float2 _4799 = tex_uv + _4798;
	float2 _4800;
	float _4801;
	_4800 = _4799;
	_4801 = input_gamma;
	float4 _4802 = F__tex2D_linearize(tex, _4800, _4801);
	float3 _4805 = w7_8.xxx * _4802.xyz;
	float3 _4806 = sum_4679 + _4805;
	sum_4679 = _4806;
	float _4808 = 9.00000000e+00 + w9_10_ratio;
	float2 _4810 = _4808.xx * dxdy;
	float2 _4811 = tex_uv + _4810;
	float2 _4812;
	float _4813;
	_4812 = _4811;
	_4813 = input_gamma;
	float4 _4814 = F__tex2D_linearize(tex, _4812, _4813);
	float3 _4817 = w9_10.xxx * _4814.xyz;
	float3 _4818 = sum_4679 + _4817;
	sum_4679 = _4818;
	float _4820 = 1.10000000e+01 + w11_12_ratio;
	float2 _4822 = _4820.xx * dxdy;
	float2 _4823 = tex_uv + _4822;
	float2 _4824;
	float _4825;
	_4824 = _4823;
	_4825 = input_gamma;
	float4 _4826 = F__tex2D_linearize(tex, _4824, _4825);
	float3 _4829 = w11_12.xxx * _4826.xyz;
	float3 _4830 = sum_4679 + _4829;
	sum_4679 = _4830;
	float3 _4832 = sum_4679 * weight_sum_inv_4653.xxx;
	return _4832;
}
float3 F__tex2Dblur17fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _4840 = sigma * sigma;
	float _4842 = 5.00000000e-01 / _4840;
	float denom_inv_4843 = _4842;
	float _4845 = -1.00000000e+00 * denom_inv_4843;
	float _4846 = exp(_4845);
	float w1_4847 = _4846;
	float _4849 = -4.00000000e+00 * denom_inv_4843;
	float _4850 = exp(_4849);
	float w2_4851 = _4850;
	float _4853 = -9.00000000e+00 * denom_inv_4843;
	float _4854 = exp(_4853);
	float w3_4855 = _4854;
	float _4857 = -1.60000000e+01 * denom_inv_4843;
	float _4858 = exp(_4857);
	float w4_4859 = _4858;
	float _4861 = -2.50000000e+01 * denom_inv_4843;
	float _4862 = exp(_4861);
	float w5_4863 = _4862;
	float _4865 = -3.60000000e+01 * denom_inv_4843;
	float _4866 = exp(_4865);
	float w6_4867 = _4866;
	float _4869 = -4.90000000e+01 * denom_inv_4843;
	float _4870 = exp(_4869);
	float w7_4871 = _4870;
	float _4873 = -6.40000000e+01 * denom_inv_4843;
	float _4874 = exp(_4873);
	float w8_4875 = _4874;
	float _4876;
	_4876 = sigma;
	float _4877 = F__get_fast_gaussian_weight_sum_inv(_4876);
	float weight_sum_inv_4878 = _4877;
	float _4879 = w1_4847 + w2_4851;
	float w1_2_4880 = _4879;
	float _4881 = w3_4855 + w4_4859;
	float w3_4_4882 = _4881;
	float _4883 = w5_4863 + w6_4867;
	float w5_6_4884 = _4883;
	float _4885 = w7_4871 + w8_4875;
	float w7_8_4886 = _4885;
	float _4887 = w2_4851 / w1_2_4880;
	float w1_2_ratio_4888 = _4887;
	float _4889 = w4_4859 / w3_4_4882;
	float w3_4_ratio_4890 = _4889;
	float _4891 = w6_4867 / w5_6_4884;
	float w5_6_ratio_4892 = _4891;
	float _4893 = w8_4875 / w7_8_4886;
	float w7_8_ratio_4894 = _4893;
	float3 sum_4896 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _4898 = 7.00000000e+00 + w7_8_ratio_4894;
	float2 _4900 = _4898.xx * dxdy;
	float2 _4901 = tex_uv - _4900;
	float2 _4902;
	float _4903;
	_4902 = _4901;
	_4903 = input_gamma;
	float4 _4904 = F__tex2D_linearize(tex, _4902, _4903);
	float3 _4907 = w7_8_4886.xxx * _4904.xyz;
	float3 _4908 = sum_4896 + _4907;
	sum_4896 = _4908;
	float _4910 = 5.00000000e+00 + w5_6_ratio_4892;
	float2 _4912 = _4910.xx * dxdy;
	float2 _4913 = tex_uv - _4912;
	float2 _4914;
	float _4915;
	_4914 = _4913;
	_4915 = input_gamma;
	float4 _4916 = F__tex2D_linearize(tex, _4914, _4915);
	float3 _4919 = w5_6_4884.xxx * _4916.xyz;
	float3 _4920 = sum_4896 + _4919;
	sum_4896 = _4920;
	float _4922 = 3.00000000e+00 + w3_4_ratio_4890;
	float2 _4924 = _4922.xx * dxdy;
	float2 _4925 = tex_uv - _4924;
	float2 _4926;
	float _4927;
	_4926 = _4925;
	_4927 = input_gamma;
	float4 _4928 = F__tex2D_linearize(tex, _4926, _4927);
	float3 _4931 = w3_4_4882.xxx * _4928.xyz;
	float3 _4932 = sum_4896 + _4931;
	sum_4896 = _4932;
	float _4934 = 1.00000000e+00 + w1_2_ratio_4888;
	float2 _4936 = _4934.xx * dxdy;
	float2 _4937 = tex_uv - _4936;
	float2 _4938;
	float _4939;
	_4938 = _4937;
	_4939 = input_gamma;
	float4 _4940 = F__tex2D_linearize(tex, _4938, _4939);
	float3 _4943 = w1_2_4880.xxx * _4940.xyz;
	float3 _4944 = sum_4896 + _4943;
	sum_4896 = _4944;
	float2 _4945;
	float _4946;
	_4945 = tex_uv;
	_4946 = input_gamma;
	float4 _4947 = F__tex2D_linearize(tex, _4945, _4946);
	float3 _4950 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _4947.xyz;
	float3 _4951 = sum_4896 + _4950;
	sum_4896 = _4951;
	float _4953 = 1.00000000e+00 + w1_2_ratio_4888;
	float2 _4955 = _4953.xx * dxdy;
	float2 _4956 = tex_uv + _4955;
	float2 _4957;
	float _4958;
	_4957 = _4956;
	_4958 = input_gamma;
	float4 _4959 = F__tex2D_linearize(tex, _4957, _4958);
	float3 _4962 = w1_2_4880.xxx * _4959.xyz;
	float3 _4963 = sum_4896 + _4962;
	sum_4896 = _4963;
	float _4965 = 3.00000000e+00 + w3_4_ratio_4890;
	float2 _4967 = _4965.xx * dxdy;
	float2 _4968 = tex_uv + _4967;
	float2 _4969;
	float _4970;
	_4969 = _4968;
	_4970 = input_gamma;
	float4 _4971 = F__tex2D_linearize(tex, _4969, _4970);
	float3 _4974 = w3_4_4882.xxx * _4971.xyz;
	float3 _4975 = sum_4896 + _4974;
	sum_4896 = _4975;
	float _4977 = 5.00000000e+00 + w5_6_ratio_4892;
	float2 _4979 = _4977.xx * dxdy;
	float2 _4980 = tex_uv + _4979;
	float2 _4981;
	float _4982;
	_4981 = _4980;
	_4982 = input_gamma;
	float4 _4983 = F__tex2D_linearize(tex, _4981, _4982);
	float3 _4986 = w5_6_4884.xxx * _4983.xyz;
	float3 _4987 = sum_4896 + _4986;
	sum_4896 = _4987;
	float _4989 = 7.00000000e+00 + w7_8_ratio_4894;
	float2 _4991 = _4989.xx * dxdy;
	float2 _4992 = tex_uv + _4991;
	float2 _4993;
	float _4994;
	_4993 = _4992;
	_4994 = input_gamma;
	float4 _4995 = F__tex2D_linearize(tex, _4993, _4994);
	float3 _4998 = w7_8_4886.xxx * _4995.xyz;
	float3 _4999 = sum_4896 + _4998;
	sum_4896 = _4999;
	float3 _5001 = sum_4896 * weight_sum_inv_4878.xxx;
	return _5001;
}
float3 F__tex2Dblur3x3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5009 = sigma * sigma;
	float _5011 = 5.00000000e-01 / _5009;
	float denom_inv_5012 = _5011;
	float2 sample4_uv = tex_uv;
	float2 _5016 = float2(dxdy.x, 0.00000000e+00);
	float2 dx = _5016;
	float2 _5020 = float2(0.00000000e+00, dxdy.y);
	float2 dy = _5020;
	float2 _5022 = sample4_uv - dy;
	float2 sample1_uv = _5022;
	float2 _5024 = sample4_uv + dy;
	float2 sample7_uv = _5024;
	float2 _5026 = sample1_uv - dx;
	float2 _5027;
	float _5028;
	_5027 = _5026;
	_5028 = input_gamma;
	float4 _5029 = F__tex2D_linearize(tex, _5027, _5028);
	float3 sample0 = _5029.xyz;
	float2 _5032;
	float _5033;
	_5032 = sample1_uv;
	_5033 = input_gamma;
	float4 _5034 = F__tex2D_linearize(tex, _5032, _5033);
	float3 sample1 = _5034.xyz;
	float2 _5037 = sample1_uv + dx;
	float2 _5038;
	float _5039;
	_5038 = _5037;
	_5039 = input_gamma;
	float4 _5040 = F__tex2D_linearize(tex, _5038, _5039);
	float3 sample2 = _5040.xyz;
	float2 _5043 = sample4_uv - dx;
	float2 _5044;
	float _5045;
	_5044 = _5043;
	_5045 = input_gamma;
	float4 _5046 = F__tex2D_linearize(tex, _5044, _5045);
	float3 sample3 = _5046.xyz;
	float2 _5049;
	float _5050;
	_5049 = sample4_uv;
	_5050 = input_gamma;
	float4 _5051 = F__tex2D_linearize(tex, _5049, _5050);
	float3 sample4 = _5051.xyz;
	float2 _5054 = sample4_uv + dx;
	float2 _5055;
	float _5056;
	_5055 = _5054;
	_5056 = input_gamma;
	float4 _5057 = F__tex2D_linearize(tex, _5055, _5056);
	float3 sample5 = _5057.xyz;
	float2 _5060 = sample7_uv - dx;
	float2 _5061;
	float _5062;
	_5061 = _5060;
	_5062 = input_gamma;
	float4 _5063 = F__tex2D_linearize(tex, _5061, _5062);
	float3 sample6 = _5063.xyz;
	float2 _5066;
	float _5067;
	_5066 = sample7_uv;
	_5067 = input_gamma;
	float4 _5068 = F__tex2D_linearize(tex, _5066, _5067);
	float3 sample7 = _5068.xyz;
	float2 _5071 = sample7_uv + dx;
	float2 _5072;
	float _5073;
	_5072 = _5071;
	_5073 = input_gamma;
	float4 _5074 = F__tex2D_linearize(tex, _5072, _5073);
	float3 sample8 = _5074.xyz;
	float _5079 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _5080 = -_5079;
	float _5081 = _5080 * denom_inv_5012;
	float _5082 = exp(_5081);
	float w1_3_5_7 = _5082;
	float _5086 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5087 = -_5086;
	float _5088 = _5087 * denom_inv_5012;
	float _5089 = exp(_5088);
	float w0_2_6_8 = _5089;
	float _5091 = w1_3_5_7 + w0_2_6_8;
	float _5093 = 4.00000000e+00 * _5091;
	float _5095 = 1.00000000e+00 + _5093;
	float _5097 = 1.00000000e+00 / _5095;
	float weight_sum_inv_5098 = _5097;
	float3 _5100 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * sample4;
	float3 _5101 = sample1 + sample3;
	float3 _5102 = _5101 + sample5;
	float3 _5103 = _5102 + sample7;
	float3 _5105 = w1_3_5_7.xxx * _5103;
	float3 _5106 = _5100 + _5105;
	float3 _5107 = sample0 + sample2;
	float3 _5108 = _5107 + sample6;
	float3 _5109 = _5108 + sample8;
	float3 _5111 = w0_2_6_8.xxx * _5109;
	float3 _5112 = _5106 + _5111;
	float3 sum_5113 = _5112;
	float3 _5115 = sum_5113 * weight_sum_inv_5098.xxx;
	return _5115;
}
float3 F__tex2Dblur9x9(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5123 = sigma * sigma;
	float _5125 = 5.00000000e-01 / _5123;
	float denom_inv_5126 = _5125;
	float _5128 = -1.00000000e+00 * denom_inv_5126;
	float _5129 = exp(_5128);
	float w1off = _5129;
	float _5132 = -4.00000000e+00 * denom_inv_5126;
	float _5133 = exp(_5132);
	float w2off = _5133;
	float _5136 = -9.00000000e+00 * denom_inv_5126;
	float _5137 = exp(_5136);
	float w3off = _5137;
	float _5140 = -1.60000000e+01 * denom_inv_5126;
	float _5141 = exp(_5140);
	float w4off = _5141;
	float _5143 = w1off + w2off;
	float _5144 = w2off / _5143;
	float texel1to2ratio = _5144;
	float _5146 = w3off + w4off;
	float _5147 = w4off / _5146;
	float texel3to4ratio = _5147;
	float2 _5150 = float2(texel1to2ratio, 0.00000000e+00);
	float2 _5152 = float2(1.00000000e+00, 0.00000000e+00) + _5150;
	float2 sample1R_texel_offset = _5152;
	float2 _5155 = float2(texel3to4ratio, 0.00000000e+00);
	float2 _5157 = float2(3.00000000e+00, 0.00000000e+00) + _5155;
	float2 sample2R_texel_offset = _5157;
	float2 _5159 = float2(texel1to2ratio, texel1to2ratio);
	float2 _5161 = float2(1.00000000e+00, 1.00000000e+00) + _5159;
	float2 sample3d_texel_offset = _5161;
	float2 _5163 = float2(texel3to4ratio, texel1to2ratio);
	float2 _5165 = float2(3.00000000e+00, 1.00000000e+00) + _5163;
	float2 sample4d_texel_offset = _5165;
	float2 _5167 = float2(texel1to2ratio, texel3to4ratio);
	float2 _5169 = float2(1.00000000e+00, 3.00000000e+00) + _5167;
	float2 sample5d_texel_offset = _5169;
	float2 _5171 = float2(texel3to4ratio, texel3to4ratio);
	float2 _5173 = float2(3.00000000e+00, 3.00000000e+00) + _5171;
	float2 sample6d_texel_offset = _5173;
	float w1R1 = w1off;
	float w1R2 = w2off;
	float w2R1 = w3off;
	float w2R2 = w4off;
	float _5181 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5182 = -_5181;
	float _5183 = _5182 * denom_inv_5126;
	float _5184 = exp(_5183);
	float w3d1 = _5184;
	float _5188 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _5189 = -_5188;
	float _5190 = _5189 * denom_inv_5126;
	float _5191 = exp(_5190);
	float w3d2_3d3 = _5191;
	float _5195 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _5196 = -_5195;
	float _5197 = _5196 * denom_inv_5126;
	float _5198 = exp(_5197);
	float w3d4 = _5198;
	float _5202 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _5203 = -_5202;
	float _5204 = _5203 * denom_inv_5126;
	float _5205 = exp(_5204);
	float w4d1_5d1 = _5205;
	float _5209 = dot(float2(4.00000000e+00, 1.00000000e+00), float2(4.00000000e+00, 1.00000000e+00));
	float _5210 = -_5209;
	float _5211 = _5210 * denom_inv_5126;
	float _5212 = exp(_5211);
	float w4d2_5d3 = _5212;
	float _5216 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _5217 = -_5216;
	float _5218 = _5217 * denom_inv_5126;
	float _5219 = exp(_5218);
	float w4d3_5d2 = _5219;
	float _5223 = dot(float2(4.00000000e+00, 2.00000000e+00), float2(4.00000000e+00, 2.00000000e+00));
	float _5224 = -_5223;
	float _5225 = _5224 * denom_inv_5126;
	float _5226 = exp(_5225);
	float w4d4_5d4 = _5226;
	float _5230 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _5231 = -_5230;
	float _5232 = _5231 * denom_inv_5126;
	float _5233 = exp(_5232);
	float w6d1 = _5233;
	float _5237 = dot(float2(4.00000000e+00, 3.00000000e+00), float2(4.00000000e+00, 3.00000000e+00));
	float _5238 = -_5237;
	float _5239 = _5238 * denom_inv_5126;
	float _5240 = exp(_5239);
	float w6d2_6d3 = _5240;
	float _5244 = dot(float2(4.00000000e+00, 4.00000000e+00), float2(4.00000000e+00, 4.00000000e+00));
	float _5245 = -_5244;
	float _5246 = _5245 * denom_inv_5126;
	float _5247 = exp(_5246);
	float w6d4 = _5247;
	float _5249 = w1R1 + w1R2;
	float w1_5250 = _5249;
	float _5251 = w2R1 + w2R2;
	float w2_5252 = _5251;
	float _5254 = 2.00000000e+00 * w3d2_3d3;
	float _5255 = w3d1 + _5254;
	float _5256 = _5255 + w3d4;
	float w3_5257 = _5256;
	float _5258 = w4d1_5d1 + w4d2_5d3;
	float _5259 = _5258 + w4d3_5d2;
	float _5260 = _5259 + w4d4_5d4;
	float w4_5261 = _5260;
	float w5_5262 = w4_5261;
	float _5264 = 2.00000000e+00 * w6d2_6d3;
	float _5265 = w6d1 + _5264;
	float _5266 = _5265 + w6d4;
	float w6_5267 = _5266;
	float _5268 = w1_5250 + w2_5252;
	float _5269 = _5268 + w3_5257;
	float _5270 = _5269 + w4_5261;
	float _5271 = _5270 + w5_5262;
	float _5272 = _5271 + w6_5267;
	float _5274 = 4.00000000e+00 * _5272;
	float _5276 = 1.00000000e+00 + _5274;
	float _5278 = 1.00000000e+00 / _5276;
	float weight_sum_inv_5279 = _5278;
	float2 _5281 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x = _5281;
	float2 _5284 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y = _5284;
	float2 _5287 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy = _5287;
	float2 _5289;
	float _5290;
	_5289 = tex_uv;
	_5290 = input_gamma;
	float4 _5291 = F__tex2D_linearize(tex, _5289, _5290);
	float3 sample0C = _5291.xyz;
	float2 _5294 = dxdy * sample1R_texel_offset;
	float2 _5295 = tex_uv + _5294;
	float2 _5296;
	float _5297;
	_5296 = _5295;
	_5297 = input_gamma;
	float4 _5298 = F__tex2D_linearize(tex, _5296, _5297);
	float3 sample1R = _5298.xyz;
	float2 _5302 = dxdy * sample1R_texel_offset.yx;
	float2 _5303 = tex_uv + _5302;
	float2 _5304;
	float _5305;
	_5304 = _5303;
	_5305 = input_gamma;
	float4 _5306 = F__tex2D_linearize(tex, _5304, _5305);
	float3 sample1D = _5306.xyz;
	float2 _5309 = dxdy * sample1R_texel_offset;
	float2 _5310 = tex_uv - _5309;
	float2 _5311;
	float _5312;
	_5311 = _5310;
	_5312 = input_gamma;
	float4 _5313 = F__tex2D_linearize(tex, _5311, _5312);
	float3 sample1L = _5313.xyz;
	float2 _5317 = dxdy * sample1R_texel_offset.yx;
	float2 _5318 = tex_uv - _5317;
	float2 _5319;
	float _5320;
	_5319 = _5318;
	_5320 = input_gamma;
	float4 _5321 = F__tex2D_linearize(tex, _5319, _5320);
	float3 sample1U = _5321.xyz;
	float2 _5324 = dxdy * sample2R_texel_offset;
	float2 _5325 = tex_uv + _5324;
	float2 _5326;
	float _5327;
	_5326 = _5325;
	_5327 = input_gamma;
	float4 _5328 = F__tex2D_linearize(tex, _5326, _5327);
	float3 sample2R = _5328.xyz;
	float2 _5332 = dxdy * sample2R_texel_offset.yx;
	float2 _5333 = tex_uv + _5332;
	float2 _5334;
	float _5335;
	_5334 = _5333;
	_5335 = input_gamma;
	float4 _5336 = F__tex2D_linearize(tex, _5334, _5335);
	float3 sample2D = _5336.xyz;
	float2 _5339 = dxdy * sample2R_texel_offset;
	float2 _5340 = tex_uv - _5339;
	float2 _5341;
	float _5342;
	_5341 = _5340;
	_5342 = input_gamma;
	float4 _5343 = F__tex2D_linearize(tex, _5341, _5342);
	float3 sample2L = _5343.xyz;
	float2 _5347 = dxdy * sample2R_texel_offset.yx;
	float2 _5348 = tex_uv - _5347;
	float2 _5349;
	float _5350;
	_5349 = _5348;
	_5350 = input_gamma;
	float4 _5351 = F__tex2D_linearize(tex, _5349, _5350);
	float3 sample2U = _5351.xyz;
	float2 _5354 = dxdy * sample3d_texel_offset;
	float2 _5355 = tex_uv + _5354;
	float2 _5356;
	float _5357;
	_5356 = _5355;
	_5357 = input_gamma;
	float4 _5358 = F__tex2D_linearize(tex, _5356, _5357);
	float3 sample3d = _5358.xyz;
	float2 _5361 = dxdy_mirror_x * sample3d_texel_offset;
	float2 _5362 = tex_uv + _5361;
	float2 _5363;
	float _5364;
	_5363 = _5362;
	_5364 = input_gamma;
	float4 _5365 = F__tex2D_linearize(tex, _5363, _5364);
	float3 sample3c = _5365.xyz;
	float2 _5368 = dxdy_mirror_y * sample3d_texel_offset;
	float2 _5369 = tex_uv + _5368;
	float2 _5370;
	float _5371;
	_5370 = _5369;
	_5371 = input_gamma;
	float4 _5372 = F__tex2D_linearize(tex, _5370, _5371);
	float3 sample3b = _5372.xyz;
	float2 _5375 = dxdy_mirror_xy * sample3d_texel_offset;
	float2 _5376 = tex_uv + _5375;
	float2 _5377;
	float _5378;
	_5377 = _5376;
	_5378 = input_gamma;
	float4 _5379 = F__tex2D_linearize(tex, _5377, _5378);
	float3 sample3a = _5379.xyz;
	float2 _5382 = dxdy * sample4d_texel_offset;
	float2 _5383 = tex_uv + _5382;
	float2 _5384;
	float _5385;
	_5384 = _5383;
	_5385 = input_gamma;
	float4 _5386 = F__tex2D_linearize(tex, _5384, _5385);
	float3 sample4d = _5386.xyz;
	float2 _5389 = dxdy_mirror_x * sample4d_texel_offset;
	float2 _5390 = tex_uv + _5389;
	float2 _5391;
	float _5392;
	_5391 = _5390;
	_5392 = input_gamma;
	float4 _5393 = F__tex2D_linearize(tex, _5391, _5392);
	float3 sample4c = _5393.xyz;
	float2 _5396 = dxdy_mirror_y * sample4d_texel_offset;
	float2 _5397 = tex_uv + _5396;
	float2 _5398;
	float _5399;
	_5398 = _5397;
	_5399 = input_gamma;
	float4 _5400 = F__tex2D_linearize(tex, _5398, _5399);
	float3 sample4b = _5400.xyz;
	float2 _5403 = dxdy_mirror_xy * sample4d_texel_offset;
	float2 _5404 = tex_uv + _5403;
	float2 _5405;
	float _5406;
	_5405 = _5404;
	_5406 = input_gamma;
	float4 _5407 = F__tex2D_linearize(tex, _5405, _5406);
	float3 sample4a = _5407.xyz;
	float2 _5410 = dxdy * sample5d_texel_offset;
	float2 _5411 = tex_uv + _5410;
	float2 _5412;
	float _5413;
	_5412 = _5411;
	_5413 = input_gamma;
	float4 _5414 = F__tex2D_linearize(tex, _5412, _5413);
	float3 sample5d = _5414.xyz;
	float2 _5417 = dxdy_mirror_x * sample5d_texel_offset;
	float2 _5418 = tex_uv + _5417;
	float2 _5419;
	float _5420;
	_5419 = _5418;
	_5420 = input_gamma;
	float4 _5421 = F__tex2D_linearize(tex, _5419, _5420);
	float3 sample5c = _5421.xyz;
	float2 _5424 = dxdy_mirror_y * sample5d_texel_offset;
	float2 _5425 = tex_uv + _5424;
	float2 _5426;
	float _5427;
	_5426 = _5425;
	_5427 = input_gamma;
	float4 _5428 = F__tex2D_linearize(tex, _5426, _5427);
	float3 sample5b = _5428.xyz;
	float2 _5431 = dxdy_mirror_xy * sample5d_texel_offset;
	float2 _5432 = tex_uv + _5431;
	float2 _5433;
	float _5434;
	_5433 = _5432;
	_5434 = input_gamma;
	float4 _5435 = F__tex2D_linearize(tex, _5433, _5434);
	float3 sample5a = _5435.xyz;
	float2 _5438 = dxdy * sample6d_texel_offset;
	float2 _5439 = tex_uv + _5438;
	float2 _5440;
	float _5441;
	_5440 = _5439;
	_5441 = input_gamma;
	float4 _5442 = F__tex2D_linearize(tex, _5440, _5441);
	float3 sample6d = _5442.xyz;
	float2 _5445 = dxdy_mirror_x * sample6d_texel_offset;
	float2 _5446 = tex_uv + _5445;
	float2 _5447;
	float _5448;
	_5447 = _5446;
	_5448 = input_gamma;
	float4 _5449 = F__tex2D_linearize(tex, _5447, _5448);
	float3 sample6c = _5449.xyz;
	float2 _5452 = dxdy_mirror_y * sample6d_texel_offset;
	float2 _5453 = tex_uv + _5452;
	float2 _5454;
	float _5455;
	_5454 = _5453;
	_5455 = input_gamma;
	float4 _5456 = F__tex2D_linearize(tex, _5454, _5455);
	float3 sample6b = _5456.xyz;
	float2 _5459 = dxdy_mirror_xy * sample6d_texel_offset;
	float2 _5460 = tex_uv + _5459;
	float2 _5461;
	float _5462;
	_5461 = _5460;
	_5462 = input_gamma;
	float4 _5463 = F__tex2D_linearize(tex, _5461, _5462);
	float3 sample6a = _5463.xyz;
	float3 _5467 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * sample0C;
	float3 sum_5468 = _5467;
	float3 _5469 = sample1R + sample1D;
	float3 _5470 = _5469 + sample1L;
	float3 _5471 = _5470 + sample1U;
	float3 _5473 = w1_5250.xxx * _5471;
	float3 _5474 = sum_5468 + _5473;
	sum_5468 = _5474;
	float3 _5475 = sample2R + sample2D;
	float3 _5476 = _5475 + sample2L;
	float3 _5477 = _5476 + sample2U;
	float3 _5479 = w2_5252.xxx * _5477;
	float3 _5480 = sum_5468 + _5479;
	sum_5468 = _5480;
	float3 _5481 = sample3d + sample3c;
	float3 _5482 = _5481 + sample3b;
	float3 _5483 = _5482 + sample3a;
	float3 _5485 = w3_5257.xxx * _5483;
	float3 _5486 = sum_5468 + _5485;
	sum_5468 = _5486;
	float3 _5487 = sample4d + sample4c;
	float3 _5488 = _5487 + sample4b;
	float3 _5489 = _5488 + sample4a;
	float3 _5491 = w4_5261.xxx * _5489;
	float3 _5492 = sum_5468 + _5491;
	sum_5468 = _5492;
	float3 _5493 = sample5d + sample5c;
	float3 _5494 = _5493 + sample5b;
	float3 _5495 = _5494 + sample5a;
	float3 _5497 = w5_5262.xxx * _5495;
	float3 _5498 = sum_5468 + _5497;
	sum_5468 = _5498;
	float3 _5499 = sample6d + sample6c;
	float3 _5500 = _5499 + sample6b;
	float3 _5501 = _5500 + sample6a;
	float3 _5503 = w6_5267.xxx * _5501;
	float3 _5504 = sum_5468 + _5503;
	sum_5468 = _5504;
	float3 _5506 = sum_5468 * weight_sum_inv_5279.xxx;
	return _5506;
}
float3 F__tex2Dblur7x7(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5514 = sigma * sigma;
	float _5516 = 5.00000000e-01 / _5514;
	float denom_inv_5517 = _5516;
	float _5519 = -1.00000000e+00 * denom_inv_5517;
	float _5520 = exp(_5519);
	float w1off_5521 = _5520;
	float _5523 = -4.00000000e+00 * denom_inv_5517;
	float _5524 = exp(_5523);
	float w2off_5525 = _5524;
	float _5527 = -9.00000000e+00 * denom_inv_5517;
	float _5528 = exp(_5527);
	float w3off_5529 = _5528;
	float _5531 = 5.00000000e-01 + w1off_5521;
	float _5532 = w1off_5521 / _5531;
	float texel0to1ratio = _5532;
	float _5534 = w2off_5525 + w3off_5529;
	float _5535 = w3off_5529 / _5534;
	float texel2to3ratio = _5535;
	float2 _5537 = float2(texel0to1ratio, texel0to1ratio);
	float2 sample1d_texel_offset = _5537;
	float2 _5539 = float2(texel2to3ratio, texel0to1ratio);
	float2 _5541 = float2(2.00000000e+00, 0.00000000e+00) + _5539;
	float2 sample2d_texel_offset = _5541;
	float2 _5543 = float2(texel0to1ratio, texel2to3ratio);
	float2 _5545 = float2(0.00000000e+00, 2.00000000e+00) + _5543;
	float2 sample3d_texel_offset_5546 = _5545;
	float2 _5547 = float2(texel2to3ratio, texel2to3ratio);
	float2 _5549 = float2(2.00000000e+00, 2.00000000e+00) + _5547;
	float2 sample4d_texel_offset_5550 = _5549;
	float _5553 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _5554 = -_5553;
	float _5555 = _5554 * denom_inv_5517;
	float _5556 = exp(_5555);
	float w1bd2_1cd3 = _5556;
	float _5560 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _5561 = -_5560;
	float _5562 = _5561 * denom_inv_5517;
	float _5563 = exp(_5562);
	float w2bd1_3cd1 = _5563;
	float _5567 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _5568 = -_5567;
	float _5569 = _5568 * denom_inv_5517;
	float _5570 = exp(_5569);
	float w2bd2_3cd2 = _5570;
	float _5574 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5575 = -_5574;
	float _5576 = _5575 * denom_inv_5517;
	float _5577 = exp(_5576);
	float w1d4 = _5577;
	float _5581 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _5582 = -_5581;
	float _5583 = _5582 * denom_inv_5517;
	float _5584 = exp(_5583);
	float w2d3_3d2 = _5584;
	float _5588 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _5589 = -_5588;
	float _5590 = _5589 * denom_inv_5517;
	float _5591 = exp(_5590);
	float w2d4_3d4 = _5591;
	float _5595 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _5596 = -_5595;
	float _5597 = _5596 * denom_inv_5517;
	float _5598 = exp(_5597);
	float w4d1 = _5598;
	float _5602 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _5603 = -_5602;
	float _5604 = _5603 * denom_inv_5517;
	float _5605 = exp(_5604);
	float w4d2_4d3 = _5605;
	float _5609 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _5610 = -_5609;
	float _5611 = _5610 * denom_inv_5517;
	float _5612 = exp(_5611);
	float w4d4 = _5612;
	float _5615 = 2.50000000e-01 + w1bd2_1cd3;
	float _5616 = _5615 + w1d4;
	float w1_5617 = _5616;
	float _5618 = w2bd1_3cd1 + w2bd2_3cd2;
	float _5620 = _5618 * 5.00000000e-01;
	float _5621 = _5620 + w2d3_3d2;
	float _5622 = _5621 + w2d4_3d4;
	float w2_3_5623 = _5622;
	float _5625 = 2.00000000e+00 * w4d2_4d3;
	float _5626 = w4d1 + _5625;
	float _5627 = _5626 + w4d4;
	float w4_5628 = _5627;
	float _5630 = 2.00000000e+00 * w2_3_5623;
	float _5631 = w1_5617 + _5630;
	float _5632 = _5631 + w4_5628;
	float _5634 = 4.00000000e+00 * _5632;
	float _5636 = 1.00000000e+00 / _5634;
	float weight_sum_inv_5637 = _5636;
	float2 _5639 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x_5640 = _5639;
	float2 _5642 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y_5643 = _5642;
	float2 _5645 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy_5646 = _5645;
	float2 _5647 = dxdy_mirror_xy_5646 * sample1d_texel_offset;
	float2 _5648 = tex_uv + _5647;
	float2 _5649;
	float _5650;
	_5649 = _5648;
	_5650 = input_gamma;
	float4 _5651 = F__tex2D_linearize(tex, _5649, _5650);
	float3 sample1a = _5651.xyz;
	float2 _5654 = dxdy_mirror_xy_5646 * sample2d_texel_offset;
	float2 _5655 = tex_uv + _5654;
	float2 _5656;
	float _5657;
	_5656 = _5655;
	_5657 = input_gamma;
	float4 _5658 = F__tex2D_linearize(tex, _5656, _5657);
	float3 sample2a = _5658.xyz;
	float2 _5661 = dxdy_mirror_xy_5646 * sample3d_texel_offset_5546;
	float2 _5662 = tex_uv + _5661;
	float2 _5663;
	float _5664;
	_5663 = _5662;
	_5664 = input_gamma;
	float4 _5665 = F__tex2D_linearize(tex, _5663, _5664);
	float3 sample3a_5667 = _5665.xyz;
	float2 _5668 = dxdy_mirror_xy_5646 * sample4d_texel_offset_5550;
	float2 _5669 = tex_uv + _5668;
	float2 _5670;
	float _5671;
	_5670 = _5669;
	_5671 = input_gamma;
	float4 _5672 = F__tex2D_linearize(tex, _5670, _5671);
	float3 sample4a_5674 = _5672.xyz;
	float2 _5675 = dxdy_mirror_y_5643 * sample1d_texel_offset;
	float2 _5676 = tex_uv + _5675;
	float2 _5677;
	float _5678;
	_5677 = _5676;
	_5678 = input_gamma;
	float4 _5679 = F__tex2D_linearize(tex, _5677, _5678);
	float3 sample1b = _5679.xyz;
	float2 _5682 = dxdy_mirror_y_5643 * sample2d_texel_offset;
	float2 _5683 = tex_uv + _5682;
	float2 _5684;
	float _5685;
	_5684 = _5683;
	_5685 = input_gamma;
	float4 _5686 = F__tex2D_linearize(tex, _5684, _5685);
	float3 sample2b = _5686.xyz;
	float2 _5689 = dxdy_mirror_y_5643 * sample3d_texel_offset_5546;
	float2 _5690 = tex_uv + _5689;
	float2 _5691;
	float _5692;
	_5691 = _5690;
	_5692 = input_gamma;
	float4 _5693 = F__tex2D_linearize(tex, _5691, _5692);
	float3 sample3b_5695 = _5693.xyz;
	float2 _5696 = dxdy_mirror_y_5643 * sample4d_texel_offset_5550;
	float2 _5697 = tex_uv + _5696;
	float2 _5698;
	float _5699;
	_5698 = _5697;
	_5699 = input_gamma;
	float4 _5700 = F__tex2D_linearize(tex, _5698, _5699);
	float3 sample4b_5702 = _5700.xyz;
	float2 _5703 = dxdy_mirror_x_5640 * sample1d_texel_offset;
	float2 _5704 = tex_uv + _5703;
	float2 _5705;
	float _5706;
	_5705 = _5704;
	_5706 = input_gamma;
	float4 _5707 = F__tex2D_linearize(tex, _5705, _5706);
	float3 sample1c = _5707.xyz;
	float2 _5710 = dxdy_mirror_x_5640 * sample2d_texel_offset;
	float2 _5711 = tex_uv + _5710;
	float2 _5712;
	float _5713;
	_5712 = _5711;
	_5713 = input_gamma;
	float4 _5714 = F__tex2D_linearize(tex, _5712, _5713);
	float3 sample2c = _5714.xyz;
	float2 _5717 = dxdy_mirror_x_5640 * sample3d_texel_offset_5546;
	float2 _5718 = tex_uv + _5717;
	float2 _5719;
	float _5720;
	_5719 = _5718;
	_5720 = input_gamma;
	float4 _5721 = F__tex2D_linearize(tex, _5719, _5720);
	float3 sample3c_5723 = _5721.xyz;
	float2 _5724 = dxdy_mirror_x_5640 * sample4d_texel_offset_5550;
	float2 _5725 = tex_uv + _5724;
	float2 _5726;
	float _5727;
	_5726 = _5725;
	_5727 = input_gamma;
	float4 _5728 = F__tex2D_linearize(tex, _5726, _5727);
	float3 sample4c_5730 = _5728.xyz;
	float2 _5731 = dxdy * sample1d_texel_offset;
	float2 _5732 = tex_uv + _5731;
	float2 _5733;
	float _5734;
	_5733 = _5732;
	_5734 = input_gamma;
	float4 _5735 = F__tex2D_linearize(tex, _5733, _5734);
	float3 sample1d = _5735.xyz;
	float2 _5738 = dxdy * sample2d_texel_offset;
	float2 _5739 = tex_uv + _5738;
	float2 _5740;
	float _5741;
	_5740 = _5739;
	_5741 = input_gamma;
	float4 _5742 = F__tex2D_linearize(tex, _5740, _5741);
	float3 sample2d = _5742.xyz;
	float2 _5745 = dxdy * sample3d_texel_offset_5546;
	float2 _5746 = tex_uv + _5745;
	float2 _5747;
	float _5748;
	_5747 = _5746;
	_5748 = input_gamma;
	float4 _5749 = F__tex2D_linearize(tex, _5747, _5748);
	float3 sample3d_5751 = _5749.xyz;
	float2 _5752 = dxdy * sample4d_texel_offset_5550;
	float2 _5753 = tex_uv + _5752;
	float2 _5754;
	float _5755;
	_5754 = _5753;
	_5755 = input_gamma;
	float4 _5756 = F__tex2D_linearize(tex, _5754, _5755);
	float3 sample4d_5758 = _5756.xyz;
	float3 sum_5760 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 _5761 = sample1a + sample1b;
	float3 _5762 = _5761 + sample1c;
	float3 _5763 = _5762 + sample1d;
	float3 _5765 = w1_5617.xxx * _5763;
	float3 _5766 = sum_5760 + _5765;
	sum_5760 = _5766;
	float3 _5767 = sample2a + sample2b;
	float3 _5768 = _5767 + sample2c;
	float3 _5769 = _5768 + sample2d;
	float3 _5771 = w2_3_5623.xxx * _5769;
	float3 _5772 = sum_5760 + _5771;
	sum_5760 = _5772;
	float3 _5773 = sample3a_5667 + sample3b_5695;
	float3 _5774 = _5773 + sample3c_5723;
	float3 _5775 = _5774 + sample3d_5751;
	float3 _5777 = w2_3_5623.xxx * _5775;
	float3 _5778 = sum_5760 + _5777;
	sum_5760 = _5778;
	float3 _5779 = sample4a_5674 + sample4b_5702;
	float3 _5780 = _5779 + sample4c_5730;
	float3 _5781 = _5780 + sample4d_5758;
	float3 _5783 = w4_5628.xxx * _5781;
	float3 _5784 = sum_5760 + _5783;
	sum_5760 = _5784;
	float3 _5786 = sum_5760 * weight_sum_inv_5637.xxx;
	return _5786;
}
float3 F__tex2Dblur5x5(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5794 = sigma * sigma;
	float _5796 = 5.00000000e-01 / _5794;
	float denom_inv_5797 = _5796;
	float _5799 = -1.00000000e+00 * denom_inv_5797;
	float _5800 = exp(_5799);
	float w1off_5801 = _5800;
	float _5803 = -4.00000000e+00 * denom_inv_5797;
	float _5804 = exp(_5803);
	float w2off_5805 = _5804;
	float _5806 = w1off_5801 + w2off_5805;
	float _5807 = w2off_5805 / _5806;
	float texel1to2ratio_5808 = _5807;
	float2 _5810 = float2(texel1to2ratio_5808, 0.00000000e+00);
	float2 _5812 = float2(1.00000000e+00, 0.00000000e+00) + _5810;
	float2 sample1R_texel_offset_5813 = _5812;
	float2 _5814 = float2(texel1to2ratio_5808, texel1to2ratio_5808);
	float2 _5816 = float2(1.00000000e+00, 1.00000000e+00) + _5814;
	float2 sample2d_texel_offset_5817 = _5816;
	float w1R1_5818 = w1off_5801;
	float w1R2_5819 = w2off_5805;
	float _5822 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _5823 = -_5822;
	float _5824 = _5823 * denom_inv_5797;
	float _5825 = exp(_5824);
	float w2d1 = _5825;
	float _5829 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _5830 = -_5829;
	float _5831 = _5830 * denom_inv_5797;
	float _5832 = exp(_5831);
	float w2d2_3 = _5832;
	float _5836 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _5837 = -_5836;
	float _5838 = _5837 * denom_inv_5797;
	float _5839 = exp(_5838);
	float w2d4 = _5839;
	float _5841 = w1R1_5818 + w1R2_5819;
	float w1_5842 = _5841;
	float _5844 = 2.00000000e+00 * w2d2_3;
	float _5845 = w2d1 + _5844;
	float _5846 = _5845 + w2d4;
	float w2_5847 = _5846;
	float _5848 = w1_5842 + w2_5847;
	float _5850 = 4.00000000e+00 * _5848;
	float _5852 = 1.00000000e+00 + _5850;
	float _5854 = 1.00000000e+00 / _5852;
	float weight_sum_inv_5855 = _5854;
	float2 _5857 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x_5858 = _5857;
	float2 _5860 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y_5861 = _5860;
	float2 _5863 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy_5864 = _5863;
	float2 _5865;
	float _5866;
	_5865 = tex_uv;
	_5866 = input_gamma;
	float4 _5867 = F__tex2D_linearize(tex, _5865, _5866);
	float3 sample0C_5869 = _5867.xyz;
	float2 _5870 = dxdy * sample1R_texel_offset_5813;
	float2 _5871 = tex_uv + _5870;
	float2 _5872;
	float _5873;
	_5872 = _5871;
	_5873 = input_gamma;
	float4 _5874 = F__tex2D_linearize(tex, _5872, _5873);
	float3 sample1R_5876 = _5874.xyz;
	float2 _5878 = dxdy * sample1R_texel_offset_5813.yx;
	float2 _5879 = tex_uv + _5878;
	float2 _5880;
	float _5881;
	_5880 = _5879;
	_5881 = input_gamma;
	float4 _5882 = F__tex2D_linearize(tex, _5880, _5881);
	float3 sample1D_5884 = _5882.xyz;
	float2 _5885 = dxdy * sample1R_texel_offset_5813;
	float2 _5886 = tex_uv - _5885;
	float2 _5887;
	float _5888;
	_5887 = _5886;
	_5888 = input_gamma;
	float4 _5889 = F__tex2D_linearize(tex, _5887, _5888);
	float3 sample1L_5891 = _5889.xyz;
	float2 _5893 = dxdy * sample1R_texel_offset_5813.yx;
	float2 _5894 = tex_uv - _5893;
	float2 _5895;
	float _5896;
	_5895 = _5894;
	_5896 = input_gamma;
	float4 _5897 = F__tex2D_linearize(tex, _5895, _5896);
	float3 sample1U_5899 = _5897.xyz;
	float2 _5900 = dxdy * sample2d_texel_offset_5817;
	float2 _5901 = tex_uv + _5900;
	float2 _5902;
	float _5903;
	_5902 = _5901;
	_5903 = input_gamma;
	float4 _5904 = F__tex2D_linearize(tex, _5902, _5903);
	float3 sample2d_5906 = _5904.xyz;
	float2 _5907 = dxdy_mirror_x_5858 * sample2d_texel_offset_5817;
	float2 _5908 = tex_uv + _5907;
	float2 _5909;
	float _5910;
	_5909 = _5908;
	_5910 = input_gamma;
	float4 _5911 = F__tex2D_linearize(tex, _5909, _5910);
	float3 sample2c_5913 = _5911.xyz;
	float2 _5914 = dxdy_mirror_y_5861 * sample2d_texel_offset_5817;
	float2 _5915 = tex_uv + _5914;
	float2 _5916;
	float _5917;
	_5916 = _5915;
	_5917 = input_gamma;
	float4 _5918 = F__tex2D_linearize(tex, _5916, _5917);
	float3 sample2b_5920 = _5918.xyz;
	float2 _5921 = dxdy_mirror_xy_5864 * sample2d_texel_offset_5817;
	float2 _5922 = tex_uv + _5921;
	float2 _5923;
	float _5924;
	_5923 = _5922;
	_5924 = input_gamma;
	float4 _5925 = F__tex2D_linearize(tex, _5923, _5924);
	float3 sample2a_5927 = _5925.xyz;
	float3 _5929 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * sample0C_5869;
	float3 sum_5930 = _5929;
	float3 _5931 = sample1R_5876 + sample1D_5884;
	float3 _5932 = _5931 + sample1L_5891;
	float3 _5933 = _5932 + sample1U_5899;
	float3 _5935 = w1_5842.xxx * _5933;
	float3 _5936 = sum_5930 + _5935;
	sum_5930 = _5936;
	float3 _5937 = sample2a_5927 + sample2b_5920;
	float3 _5938 = _5937 + sample2c_5913;
	float3 _5939 = _5938 + sample2d_5906;
	float3 _5941 = w2_5847.xxx * _5939;
	float3 _5942 = sum_5930 + _5941;
	sum_5930 = _5942;
	float3 _5944 = sum_5930 * weight_sum_inv_5855.xxx;
	return _5944;
}
float3 F__tex2Dblur3x3(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float _5952 = sigma * sigma;
	float _5954 = 5.00000000e-01 / _5952;
	float denom_inv_5955 = _5954;
	float _5957 = -1.00000000e+00 * denom_inv_5955;
	float _5958 = exp(_5957);
	float w1off_5959 = _5958;
	float _5961 = 5.00000000e-01 + w1off_5959;
	float _5962 = w1off_5959 / _5961;
	float texel0to1ratio_5963 = _5962;
	float2 _5964 = float2(texel0to1ratio_5963, texel0to1ratio_5963);
	float2 sample0d_texel_offset = _5964;
	float2 _5967 = dxdy * float2(-1.00000000e+00, 1.00000000e+00);
	float2 dxdy_mirror_x_5968 = _5967;
	float2 _5970 = dxdy * float2(1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_y_5971 = _5970;
	float2 _5973 = dxdy * float2(-1.00000000e+00, -1.00000000e+00);
	float2 dxdy_mirror_xy_5974 = _5973;
	float2 _5975 = dxdy_mirror_xy_5974 * sample0d_texel_offset;
	float2 _5976 = tex_uv + _5975;
	float2 _5977;
	float _5978;
	_5977 = _5976;
	_5978 = input_gamma;
	float4 _5979 = F__tex2D_linearize(tex, _5977, _5978);
	float3 sample0a = _5979.xyz;
	float2 _5982 = dxdy_mirror_y_5971 * sample0d_texel_offset;
	float2 _5983 = tex_uv + _5982;
	float2 _5984;
	float _5985;
	_5984 = _5983;
	_5985 = input_gamma;
	float4 _5986 = F__tex2D_linearize(tex, _5984, _5985);
	float3 sample0b = _5986.xyz;
	float2 _5989 = dxdy_mirror_x_5968 * sample0d_texel_offset;
	float2 _5990 = tex_uv + _5989;
	float2 _5991;
	float _5992;
	_5991 = _5990;
	_5992 = input_gamma;
	float4 _5993 = F__tex2D_linearize(tex, _5991, _5992);
	float3 sample0c = _5993.xyz;
	float2 _5996 = dxdy * sample0d_texel_offset;
	float2 _5997 = tex_uv + _5996;
	float2 _5998;
	float _5999;
	_5998 = _5997;
	_5999 = input_gamma;
	float4 _6000 = F__tex2D_linearize(tex, _5998, _5999);
	float3 sample0d = _6000.xyz;
	float3 _6003 = sample0a + sample0b;
	float3 _6004 = _6003 + sample0c;
	float3 _6005 = _6004 + sample0d;
	float3 _6007 = float3(2.50000000e-01, 2.50000000e-01, 2.50000000e-01) * _6005;
	return _6007;
}
float3 F__tex2Dblur12x12shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _6016 = sigma * sigma;
	float _6018 = 5.00000000e-01 / _6016;
	float denom_inv_6019 = _6018;
	float _6021 = -2.50000000e-01 * denom_inv_6019;
	float _6022 = exp(_6021);
	float w0_5off = _6022;
	float _6025 = -1.00000000e+00 * denom_inv_6019;
	float _6026 = exp(_6025);
	float w1off_6027 = _6026;
	float _6029 = -2.25000000e+00 * denom_inv_6019;
	float _6030 = exp(_6029);
	float w1_5off = _6030;
	float _6033 = -4.00000000e+00 * denom_inv_6019;
	float _6034 = exp(_6033);
	float w2off_6035 = _6034;
	float _6037 = -6.25000000e+00 * denom_inv_6019;
	float _6038 = exp(_6037);
	float w2_5off = _6038;
	float _6041 = -1.22500000e+01 * denom_inv_6019;
	float _6042 = exp(_6041);
	float w3_5off = _6042;
	float _6045 = -2.02500000e+01 * denom_inv_6019;
	float _6046 = exp(_6045);
	float w4_5off = _6046;
	float _6049 = -3.02500000e+01 * denom_inv_6019;
	float _6050 = exp(_6049);
	float w5_5off = _6050;
	float _6052 = w0_5off + w1_5off;
	float _6053 = w1_5off / _6052;
	float _6056 = lerp(_6053, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_6057 = _6056;
	float _6058 = w2_5off + w3_5off;
	float _6059 = w3_5off / _6058;
	float _6062 = lerp(_6059, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_6063 = _6062;
	float _6064 = w4_5off + w5_5off;
	float _6065 = w5_5off / _6064;
	float _6068 = lerp(_6065, 5.00000000e-01, 5.00000000e-01);
	float texel4to5ratio = _6068;
	float _6071 = 1.00000000e+00 + w1off_6027;
	float _6072 = w1off_6027 / _6071;
	float texel0to1ratio_nearest = _6072;
	float _6074 = w1off_6027 + w2off_6035;
	float _6075 = w2off_6035 / _6074;
	float texel1to2ratio_nearest = _6075;
	float2 _6077 = float2(texel0to1ratio_nearest, texel0to1ratio_nearest);
	float2 _6079 = float2(0.00000000e+00, 0.00000000e+00) + _6077;
	float2 sample0curr_texel_offset = _6079;
	float _6081 = -texel1to2ratio_nearest;
	float2 _6082 = float2(_6081, texel0to1ratio_nearest);
	float2 _6084 = float2(-1.00000000e+00, 0.00000000e+00) + _6082;
	float2 sample0adjx_texel_offset = _6084;
	float _6086 = -texel1to2ratio_nearest;
	float2 _6087 = float2(texel0to1ratio_nearest, _6086);
	float2 _6089 = float2(0.00000000e+00, -1.00000000e+00) + _6087;
	float2 sample0adjy_texel_offset = _6089;
	float _6091 = -texel1to2ratio_nearest;
	float _6092 = -texel1to2ratio_nearest;
	float2 _6093 = float2(_6091, _6092);
	float2 _6095 = float2(-1.00000000e+00, -1.00000000e+00) + _6093;
	float2 sample0diag_texel_offset = _6095;
	float2 _6097 = float2(texel2to3ratio_6063, texel0to1ratio_6057);
	float2 _6099 = float2(2.00000000e+00, 0.00000000e+00) + _6097;
	float2 sample1_texel_offset = _6099;
	float2 _6101 = float2(texel4to5ratio, texel0to1ratio_6057);
	float2 _6103 = float2(4.00000000e+00, 0.00000000e+00) + _6101;
	float2 sample2_texel_offset = _6103;
	float2 _6105 = float2(texel0to1ratio_6057, texel2to3ratio_6063);
	float2 _6107 = float2(0.00000000e+00, 2.00000000e+00) + _6105;
	float2 sample3_texel_offset = _6107;
	float2 _6109 = float2(texel2to3ratio_6063, texel2to3ratio_6063);
	float2 _6111 = float2(2.00000000e+00, 2.00000000e+00) + _6109;
	float2 sample4_texel_offset = _6111;
	float2 _6113 = float2(texel4to5ratio, texel2to3ratio_6063);
	float2 _6115 = float2(4.00000000e+00, 2.00000000e+00) + _6113;
	float2 sample5_texel_offset = _6115;
	float2 _6117 = float2(texel0to1ratio_6057, texel4to5ratio);
	float2 _6119 = float2(0.00000000e+00, 4.00000000e+00) + _6117;
	float2 sample6_texel_offset = _6119;
	float2 _6121 = float2(texel2to3ratio_6063, texel4to5ratio);
	float2 _6123 = float2(2.00000000e+00, 4.00000000e+00) + _6121;
	float2 sample7_texel_offset = _6123;
	float2 _6125 = float2(texel4to5ratio, texel4to5ratio);
	float2 _6127 = float2(4.00000000e+00, 4.00000000e+00) + _6125;
	float2 sample8_texel_offset = _6127;
	float _6131 = dot(float2(-6.00000000e+00, -6.00000000e+00), float2(-6.00000000e+00, -6.00000000e+00));
	float _6132 = -_6131;
	float _6133 = _6132 * denom_inv_6019;
	float _6134 = exp(_6133);
	float _6137 = dot(float2(-5.00000000e+00, -6.00000000e+00), float2(-5.00000000e+00, -6.00000000e+00));
	float _6138 = -_6137;
	float _6139 = _6138 * denom_inv_6019;
	float _6140 = exp(_6139);
	float _6141 = _6134 + _6140;
	float _6144 = dot(float2(-6.00000000e+00, -5.00000000e+00), float2(-6.00000000e+00, -5.00000000e+00));
	float _6145 = -_6144;
	float _6146 = _6145 * denom_inv_6019;
	float _6147 = exp(_6146);
	float _6148 = _6141 + _6147;
	float _6151 = dot(float2(-5.00000000e+00, -5.00000000e+00), float2(-5.00000000e+00, -5.00000000e+00));
	float _6152 = -_6151;
	float _6153 = _6152 * denom_inv_6019;
	float _6154 = exp(_6153);
	float _6155 = _6148 + _6154;
	float w8diag = _6155;
	float _6159 = dot(float2(-4.00000000e+00, -6.00000000e+00), float2(-4.00000000e+00, -6.00000000e+00));
	float _6160 = -_6159;
	float _6161 = _6160 * denom_inv_6019;
	float _6162 = exp(_6161);
	float _6165 = dot(float2(-3.00000000e+00, -6.00000000e+00), float2(-3.00000000e+00, -6.00000000e+00));
	float _6166 = -_6165;
	float _6167 = _6166 * denom_inv_6019;
	float _6168 = exp(_6167);
	float _6169 = _6162 + _6168;
	float _6172 = dot(float2(-4.00000000e+00, -5.00000000e+00), float2(-4.00000000e+00, -5.00000000e+00));
	float _6173 = -_6172;
	float _6174 = _6173 * denom_inv_6019;
	float _6175 = exp(_6174);
	float _6176 = _6169 + _6175;
	float _6179 = dot(float2(-3.00000000e+00, -5.00000000e+00), float2(-3.00000000e+00, -5.00000000e+00));
	float _6180 = -_6179;
	float _6181 = _6180 * denom_inv_6019;
	float _6182 = exp(_6181);
	float _6183 = _6176 + _6182;
	float w7diag = _6183;
	float _6187 = dot(float2(-2.00000000e+00, -6.00000000e+00), float2(-2.00000000e+00, -6.00000000e+00));
	float _6188 = -_6187;
	float _6189 = _6188 * denom_inv_6019;
	float _6190 = exp(_6189);
	float _6193 = dot(float2(-1.00000000e+00, -6.00000000e+00), float2(-1.00000000e+00, -6.00000000e+00));
	float _6194 = -_6193;
	float _6195 = _6194 * denom_inv_6019;
	float _6196 = exp(_6195);
	float _6197 = _6190 + _6196;
	float _6200 = dot(float2(-2.00000000e+00, -5.00000000e+00), float2(-2.00000000e+00, -5.00000000e+00));
	float _6201 = -_6200;
	float _6202 = _6201 * denom_inv_6019;
	float _6203 = exp(_6202);
	float _6204 = _6197 + _6203;
	float _6207 = dot(float2(-1.00000000e+00, -5.00000000e+00), float2(-1.00000000e+00, -5.00000000e+00));
	float _6208 = -_6207;
	float _6209 = _6208 * denom_inv_6019;
	float _6210 = exp(_6209);
	float _6211 = _6204 + _6210;
	float w6diag = _6211;
	float _6215 = dot(float2(0.00000000e+00, -6.00000000e+00), float2(0.00000000e+00, -6.00000000e+00));
	float _6216 = -_6215;
	float _6217 = _6216 * denom_inv_6019;
	float _6218 = exp(_6217);
	float _6221 = dot(float2(1.00000000e+00, -6.00000000e+00), float2(1.00000000e+00, -6.00000000e+00));
	float _6222 = -_6221;
	float _6223 = _6222 * denom_inv_6019;
	float _6224 = exp(_6223);
	float _6225 = _6218 + _6224;
	float _6228 = dot(float2(0.00000000e+00, -5.00000000e+00), float2(0.00000000e+00, -5.00000000e+00));
	float _6229 = -_6228;
	float _6230 = _6229 * denom_inv_6019;
	float _6231 = exp(_6230);
	float _6232 = _6225 + _6231;
	float _6235 = dot(float2(1.00000000e+00, -5.00000000e+00), float2(1.00000000e+00, -5.00000000e+00));
	float _6236 = -_6235;
	float _6237 = _6236 * denom_inv_6019;
	float _6238 = exp(_6237);
	float _6239 = _6232 + _6238;
	float w6adjy = _6239;
	float _6243 = dot(float2(2.00000000e+00, -6.00000000e+00), float2(2.00000000e+00, -6.00000000e+00));
	float _6244 = -_6243;
	float _6245 = _6244 * denom_inv_6019;
	float _6246 = exp(_6245);
	float _6249 = dot(float2(3.00000000e+00, -6.00000000e+00), float2(3.00000000e+00, -6.00000000e+00));
	float _6250 = -_6249;
	float _6251 = _6250 * denom_inv_6019;
	float _6252 = exp(_6251);
	float _6253 = _6246 + _6252;
	float _6256 = dot(float2(2.00000000e+00, -5.00000000e+00), float2(2.00000000e+00, -5.00000000e+00));
	float _6257 = -_6256;
	float _6258 = _6257 * denom_inv_6019;
	float _6259 = exp(_6258);
	float _6260 = _6253 + _6259;
	float _6263 = dot(float2(3.00000000e+00, -5.00000000e+00), float2(3.00000000e+00, -5.00000000e+00));
	float _6264 = -_6263;
	float _6265 = _6264 * denom_inv_6019;
	float _6266 = exp(_6265);
	float _6267 = _6260 + _6266;
	float w7adjy = _6267;
	float _6271 = dot(float2(4.00000000e+00, -6.00000000e+00), float2(4.00000000e+00, -6.00000000e+00));
	float _6272 = -_6271;
	float _6273 = _6272 * denom_inv_6019;
	float _6274 = exp(_6273);
	float _6277 = dot(float2(5.00000000e+00, -6.00000000e+00), float2(5.00000000e+00, -6.00000000e+00));
	float _6278 = -_6277;
	float _6279 = _6278 * denom_inv_6019;
	float _6280 = exp(_6279);
	float _6281 = _6274 + _6280;
	float _6284 = dot(float2(4.00000000e+00, -5.00000000e+00), float2(4.00000000e+00, -5.00000000e+00));
	float _6285 = -_6284;
	float _6286 = _6285 * denom_inv_6019;
	float _6287 = exp(_6286);
	float _6288 = _6281 + _6287;
	float _6291 = dot(float2(5.00000000e+00, -5.00000000e+00), float2(5.00000000e+00, -5.00000000e+00));
	float _6292 = -_6291;
	float _6293 = _6292 * denom_inv_6019;
	float _6294 = exp(_6293);
	float _6295 = _6288 + _6294;
	float w8adjy = _6295;
	float _6299 = dot(float2(-6.00000000e+00, -4.00000000e+00), float2(-6.00000000e+00, -4.00000000e+00));
	float _6300 = -_6299;
	float _6301 = _6300 * denom_inv_6019;
	float _6302 = exp(_6301);
	float _6305 = dot(float2(-5.00000000e+00, -4.00000000e+00), float2(-5.00000000e+00, -4.00000000e+00));
	float _6306 = -_6305;
	float _6307 = _6306 * denom_inv_6019;
	float _6308 = exp(_6307);
	float _6309 = _6302 + _6308;
	float _6312 = dot(float2(-6.00000000e+00, -3.00000000e+00), float2(-6.00000000e+00, -3.00000000e+00));
	float _6313 = -_6312;
	float _6314 = _6313 * denom_inv_6019;
	float _6315 = exp(_6314);
	float _6316 = _6309 + _6315;
	float _6319 = dot(float2(-5.00000000e+00, -3.00000000e+00), float2(-5.00000000e+00, -3.00000000e+00));
	float _6320 = -_6319;
	float _6321 = _6320 * denom_inv_6019;
	float _6322 = exp(_6321);
	float _6323 = _6316 + _6322;
	float w5diag = _6323;
	float _6327 = dot(float2(-4.00000000e+00, -4.00000000e+00), float2(-4.00000000e+00, -4.00000000e+00));
	float _6328 = -_6327;
	float _6329 = _6328 * denom_inv_6019;
	float _6330 = exp(_6329);
	float _6333 = dot(float2(-3.00000000e+00, -4.00000000e+00), float2(-3.00000000e+00, -4.00000000e+00));
	float _6334 = -_6333;
	float _6335 = _6334 * denom_inv_6019;
	float _6336 = exp(_6335);
	float _6337 = _6330 + _6336;
	float _6340 = dot(float2(-4.00000000e+00, -3.00000000e+00), float2(-4.00000000e+00, -3.00000000e+00));
	float _6341 = -_6340;
	float _6342 = _6341 * denom_inv_6019;
	float _6343 = exp(_6342);
	float _6344 = _6337 + _6343;
	float _6347 = dot(float2(-3.00000000e+00, -3.00000000e+00), float2(-3.00000000e+00, -3.00000000e+00));
	float _6348 = -_6347;
	float _6349 = _6348 * denom_inv_6019;
	float _6350 = exp(_6349);
	float _6351 = _6344 + _6350;
	float w4diag = _6351;
	float _6355 = dot(float2(-2.00000000e+00, -4.00000000e+00), float2(-2.00000000e+00, -4.00000000e+00));
	float _6356 = -_6355;
	float _6357 = _6356 * denom_inv_6019;
	float _6358 = exp(_6357);
	float _6361 = dot(float2(-1.00000000e+00, -4.00000000e+00), float2(-1.00000000e+00, -4.00000000e+00));
	float _6362 = -_6361;
	float _6363 = _6362 * denom_inv_6019;
	float _6364 = exp(_6363);
	float _6365 = _6358 + _6364;
	float _6368 = dot(float2(-2.00000000e+00, -3.00000000e+00), float2(-2.00000000e+00, -3.00000000e+00));
	float _6369 = -_6368;
	float _6370 = _6369 * denom_inv_6019;
	float _6371 = exp(_6370);
	float _6372 = _6365 + _6371;
	float _6375 = dot(float2(-1.00000000e+00, -3.00000000e+00), float2(-1.00000000e+00, -3.00000000e+00));
	float _6376 = -_6375;
	float _6377 = _6376 * denom_inv_6019;
	float _6378 = exp(_6377);
	float _6379 = _6372 + _6378;
	float w3diag = _6379;
	float _6383 = dot(float2(0.00000000e+00, -4.00000000e+00), float2(0.00000000e+00, -4.00000000e+00));
	float _6384 = -_6383;
	float _6385 = _6384 * denom_inv_6019;
	float _6386 = exp(_6385);
	float _6389 = dot(float2(1.00000000e+00, -4.00000000e+00), float2(1.00000000e+00, -4.00000000e+00));
	float _6390 = -_6389;
	float _6391 = _6390 * denom_inv_6019;
	float _6392 = exp(_6391);
	float _6393 = _6386 + _6392;
	float _6396 = dot(float2(0.00000000e+00, -3.00000000e+00), float2(0.00000000e+00, -3.00000000e+00));
	float _6397 = -_6396;
	float _6398 = _6397 * denom_inv_6019;
	float _6399 = exp(_6398);
	float _6400 = _6393 + _6399;
	float _6403 = dot(float2(1.00000000e+00, -3.00000000e+00), float2(1.00000000e+00, -3.00000000e+00));
	float _6404 = -_6403;
	float _6405 = _6404 * denom_inv_6019;
	float _6406 = exp(_6405);
	float _6407 = _6400 + _6406;
	float w3adjy = _6407;
	float _6411 = dot(float2(2.00000000e+00, -4.00000000e+00), float2(2.00000000e+00, -4.00000000e+00));
	float _6412 = -_6411;
	float _6413 = _6412 * denom_inv_6019;
	float _6414 = exp(_6413);
	float _6417 = dot(float2(3.00000000e+00, -4.00000000e+00), float2(3.00000000e+00, -4.00000000e+00));
	float _6418 = -_6417;
	float _6419 = _6418 * denom_inv_6019;
	float _6420 = exp(_6419);
	float _6421 = _6414 + _6420;
	float _6424 = dot(float2(2.00000000e+00, -3.00000000e+00), float2(2.00000000e+00, -3.00000000e+00));
	float _6425 = -_6424;
	float _6426 = _6425 * denom_inv_6019;
	float _6427 = exp(_6426);
	float _6428 = _6421 + _6427;
	float _6431 = dot(float2(3.00000000e+00, -3.00000000e+00), float2(3.00000000e+00, -3.00000000e+00));
	float _6432 = -_6431;
	float _6433 = _6432 * denom_inv_6019;
	float _6434 = exp(_6433);
	float _6435 = _6428 + _6434;
	float w4adjy = _6435;
	float _6439 = dot(float2(4.00000000e+00, -4.00000000e+00), float2(4.00000000e+00, -4.00000000e+00));
	float _6440 = -_6439;
	float _6441 = _6440 * denom_inv_6019;
	float _6442 = exp(_6441);
	float _6445 = dot(float2(5.00000000e+00, -4.00000000e+00), float2(5.00000000e+00, -4.00000000e+00));
	float _6446 = -_6445;
	float _6447 = _6446 * denom_inv_6019;
	float _6448 = exp(_6447);
	float _6449 = _6442 + _6448;
	float _6452 = dot(float2(4.00000000e+00, -3.00000000e+00), float2(4.00000000e+00, -3.00000000e+00));
	float _6453 = -_6452;
	float _6454 = _6453 * denom_inv_6019;
	float _6455 = exp(_6454);
	float _6456 = _6449 + _6455;
	float _6459 = dot(float2(5.00000000e+00, -3.00000000e+00), float2(5.00000000e+00, -3.00000000e+00));
	float _6460 = -_6459;
	float _6461 = _6460 * denom_inv_6019;
	float _6462 = exp(_6461);
	float _6463 = _6456 + _6462;
	float w5adjy = _6463;
	float _6467 = dot(float2(-6.00000000e+00, -2.00000000e+00), float2(-6.00000000e+00, -2.00000000e+00));
	float _6468 = -_6467;
	float _6469 = _6468 * denom_inv_6019;
	float _6470 = exp(_6469);
	float _6473 = dot(float2(-5.00000000e+00, -2.00000000e+00), float2(-5.00000000e+00, -2.00000000e+00));
	float _6474 = -_6473;
	float _6475 = _6474 * denom_inv_6019;
	float _6476 = exp(_6475);
	float _6477 = _6470 + _6476;
	float _6480 = dot(float2(-6.00000000e+00, -1.00000000e+00), float2(-6.00000000e+00, -1.00000000e+00));
	float _6481 = -_6480;
	float _6482 = _6481 * denom_inv_6019;
	float _6483 = exp(_6482);
	float _6484 = _6477 + _6483;
	float _6487 = dot(float2(-5.00000000e+00, -1.00000000e+00), float2(-5.00000000e+00, -1.00000000e+00));
	float _6488 = -_6487;
	float _6489 = _6488 * denom_inv_6019;
	float _6490 = exp(_6489);
	float _6491 = _6484 + _6490;
	float w2diag = _6491;
	float _6495 = dot(float2(-4.00000000e+00, -2.00000000e+00), float2(-4.00000000e+00, -2.00000000e+00));
	float _6496 = -_6495;
	float _6497 = _6496 * denom_inv_6019;
	float _6498 = exp(_6497);
	float _6501 = dot(float2(-3.00000000e+00, -2.00000000e+00), float2(-3.00000000e+00, -2.00000000e+00));
	float _6502 = -_6501;
	float _6503 = _6502 * denom_inv_6019;
	float _6504 = exp(_6503);
	float _6505 = _6498 + _6504;
	float _6508 = dot(float2(-4.00000000e+00, -1.00000000e+00), float2(-4.00000000e+00, -1.00000000e+00));
	float _6509 = -_6508;
	float _6510 = _6509 * denom_inv_6019;
	float _6511 = exp(_6510);
	float _6512 = _6505 + _6511;
	float _6515 = dot(float2(-3.00000000e+00, -1.00000000e+00), float2(-3.00000000e+00, -1.00000000e+00));
	float _6516 = -_6515;
	float _6517 = _6516 * denom_inv_6019;
	float _6518 = exp(_6517);
	float _6519 = _6512 + _6518;
	float w1diag = _6519;
	float _6523 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _6524 = -_6523;
	float _6525 = _6524 * denom_inv_6019;
	float _6526 = exp(_6525);
	float _6529 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _6530 = -_6529;
	float _6531 = _6530 * denom_inv_6019;
	float _6532 = exp(_6531);
	float _6533 = _6526 + _6532;
	float _6536 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _6537 = -_6536;
	float _6538 = _6537 * denom_inv_6019;
	float _6539 = exp(_6538);
	float _6540 = _6533 + _6539;
	float _6543 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _6544 = -_6543;
	float _6545 = _6544 * denom_inv_6019;
	float _6546 = exp(_6545);
	float _6547 = _6540 + _6546;
	float w0diag = _6547;
	float _6551 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _6552 = -_6551;
	float _6553 = _6552 * denom_inv_6019;
	float _6554 = exp(_6553);
	float _6557 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _6558 = -_6557;
	float _6559 = _6558 * denom_inv_6019;
	float _6560 = exp(_6559);
	float _6561 = _6554 + _6560;
	float _6564 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _6565 = -_6564;
	float _6566 = _6565 * denom_inv_6019;
	float _6567 = exp(_6566);
	float _6568 = _6561 + _6567;
	float _6571 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _6572 = -_6571;
	float _6573 = _6572 * denom_inv_6019;
	float _6574 = exp(_6573);
	float _6575 = _6568 + _6574;
	float w0adjy = _6575;
	float _6579 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _6580 = -_6579;
	float _6581 = _6580 * denom_inv_6019;
	float _6582 = exp(_6581);
	float _6585 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _6586 = -_6585;
	float _6587 = _6586 * denom_inv_6019;
	float _6588 = exp(_6587);
	float _6589 = _6582 + _6588;
	float _6592 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _6593 = -_6592;
	float _6594 = _6593 * denom_inv_6019;
	float _6595 = exp(_6594);
	float _6596 = _6589 + _6595;
	float _6599 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _6600 = -_6599;
	float _6601 = _6600 * denom_inv_6019;
	float _6602 = exp(_6601);
	float _6603 = _6596 + _6602;
	float w1adjy = _6603;
	float _6607 = dot(float2(4.00000000e+00, -2.00000000e+00), float2(4.00000000e+00, -2.00000000e+00));
	float _6608 = -_6607;
	float _6609 = _6608 * denom_inv_6019;
	float _6610 = exp(_6609);
	float _6613 = dot(float2(5.00000000e+00, -2.00000000e+00), float2(5.00000000e+00, -2.00000000e+00));
	float _6614 = -_6613;
	float _6615 = _6614 * denom_inv_6019;
	float _6616 = exp(_6615);
	float _6617 = _6610 + _6616;
	float _6620 = dot(float2(4.00000000e+00, -1.00000000e+00), float2(4.00000000e+00, -1.00000000e+00));
	float _6621 = -_6620;
	float _6622 = _6621 * denom_inv_6019;
	float _6623 = exp(_6622);
	float _6624 = _6617 + _6623;
	float _6627 = dot(float2(5.00000000e+00, -1.00000000e+00), float2(5.00000000e+00, -1.00000000e+00));
	float _6628 = -_6627;
	float _6629 = _6628 * denom_inv_6019;
	float _6630 = exp(_6629);
	float _6631 = _6624 + _6630;
	float w2adjy = _6631;
	float _6635 = dot(float2(-6.00000000e+00, 0.00000000e+00), float2(-6.00000000e+00, 0.00000000e+00));
	float _6636 = -_6635;
	float _6637 = _6636 * denom_inv_6019;
	float _6638 = exp(_6637);
	float _6641 = dot(float2(-5.00000000e+00, 0.00000000e+00), float2(-5.00000000e+00, 0.00000000e+00));
	float _6642 = -_6641;
	float _6643 = _6642 * denom_inv_6019;
	float _6644 = exp(_6643);
	float _6645 = _6638 + _6644;
	float _6648 = dot(float2(-6.00000000e+00, 1.00000000e+00), float2(-6.00000000e+00, 1.00000000e+00));
	float _6649 = -_6648;
	float _6650 = _6649 * denom_inv_6019;
	float _6651 = exp(_6650);
	float _6652 = _6645 + _6651;
	float _6655 = dot(float2(-5.00000000e+00, 1.00000000e+00), float2(-5.00000000e+00, 1.00000000e+00));
	float _6656 = -_6655;
	float _6657 = _6656 * denom_inv_6019;
	float _6658 = exp(_6657);
	float _6659 = _6652 + _6658;
	float w2adjx = _6659;
	float _6663 = dot(float2(-4.00000000e+00, 0.00000000e+00), float2(-4.00000000e+00, 0.00000000e+00));
	float _6664 = -_6663;
	float _6665 = _6664 * denom_inv_6019;
	float _6666 = exp(_6665);
	float _6669 = dot(float2(-3.00000000e+00, 0.00000000e+00), float2(-3.00000000e+00, 0.00000000e+00));
	float _6670 = -_6669;
	float _6671 = _6670 * denom_inv_6019;
	float _6672 = exp(_6671);
	float _6673 = _6666 + _6672;
	float _6676 = dot(float2(-4.00000000e+00, 1.00000000e+00), float2(-4.00000000e+00, 1.00000000e+00));
	float _6677 = -_6676;
	float _6678 = _6677 * denom_inv_6019;
	float _6679 = exp(_6678);
	float _6680 = _6673 + _6679;
	float _6683 = dot(float2(-3.00000000e+00, 1.00000000e+00), float2(-3.00000000e+00, 1.00000000e+00));
	float _6684 = -_6683;
	float _6685 = _6684 * denom_inv_6019;
	float _6686 = exp(_6685);
	float _6687 = _6680 + _6686;
	float w1adjx = _6687;
	float _6691 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _6692 = -_6691;
	float _6693 = _6692 * denom_inv_6019;
	float _6694 = exp(_6693);
	float _6697 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _6698 = -_6697;
	float _6699 = _6698 * denom_inv_6019;
	float _6700 = exp(_6699);
	float _6701 = _6694 + _6700;
	float _6704 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _6705 = -_6704;
	float _6706 = _6705 * denom_inv_6019;
	float _6707 = exp(_6706);
	float _6708 = _6701 + _6707;
	float _6711 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _6712 = -_6711;
	float _6713 = _6712 * denom_inv_6019;
	float _6714 = exp(_6713);
	float _6715 = _6708 + _6714;
	float w0adjx = _6715;
	float _6719 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _6720 = -_6719;
	float _6721 = _6720 * denom_inv_6019;
	float _6722 = exp(_6721);
	float _6725 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _6726 = -_6725;
	float _6727 = _6726 * denom_inv_6019;
	float _6728 = exp(_6727);
	float _6729 = _6722 + _6728;
	float _6732 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _6733 = -_6732;
	float _6734 = _6733 * denom_inv_6019;
	float _6735 = exp(_6734);
	float _6736 = _6729 + _6735;
	float _6739 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _6740 = -_6739;
	float _6741 = _6740 * denom_inv_6019;
	float _6742 = exp(_6741);
	float _6743 = _6736 + _6742;
	float w0curr = _6743;
	float _6747 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _6748 = -_6747;
	float _6749 = _6748 * denom_inv_6019;
	float _6750 = exp(_6749);
	float _6753 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _6754 = -_6753;
	float _6755 = _6754 * denom_inv_6019;
	float _6756 = exp(_6755);
	float _6757 = _6750 + _6756;
	float _6760 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _6761 = -_6760;
	float _6762 = _6761 * denom_inv_6019;
	float _6763 = exp(_6762);
	float _6764 = _6757 + _6763;
	float _6767 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _6768 = -_6767;
	float _6769 = _6768 * denom_inv_6019;
	float _6770 = exp(_6769);
	float _6771 = _6764 + _6770;
	float w1curr = _6771;
	float _6775 = dot(float2(4.00000000e+00, 0.00000000e+00), float2(4.00000000e+00, 0.00000000e+00));
	float _6776 = -_6775;
	float _6777 = _6776 * denom_inv_6019;
	float _6778 = exp(_6777);
	float _6781 = dot(float2(5.00000000e+00, 0.00000000e+00), float2(5.00000000e+00, 0.00000000e+00));
	float _6782 = -_6781;
	float _6783 = _6782 * denom_inv_6019;
	float _6784 = exp(_6783);
	float _6785 = _6778 + _6784;
	float _6788 = dot(float2(4.00000000e+00, 1.00000000e+00), float2(4.00000000e+00, 1.00000000e+00));
	float _6789 = -_6788;
	float _6790 = _6789 * denom_inv_6019;
	float _6791 = exp(_6790);
	float _6792 = _6785 + _6791;
	float _6795 = dot(float2(5.00000000e+00, 1.00000000e+00), float2(5.00000000e+00, 1.00000000e+00));
	float _6796 = -_6795;
	float _6797 = _6796 * denom_inv_6019;
	float _6798 = exp(_6797);
	float _6799 = _6792 + _6798;
	float w2curr = _6799;
	float _6803 = dot(float2(-6.00000000e+00, 2.00000000e+00), float2(-6.00000000e+00, 2.00000000e+00));
	float _6804 = -_6803;
	float _6805 = _6804 * denom_inv_6019;
	float _6806 = exp(_6805);
	float _6809 = dot(float2(-5.00000000e+00, 2.00000000e+00), float2(-5.00000000e+00, 2.00000000e+00));
	float _6810 = -_6809;
	float _6811 = _6810 * denom_inv_6019;
	float _6812 = exp(_6811);
	float _6813 = _6806 + _6812;
	float _6816 = dot(float2(-6.00000000e+00, 3.00000000e+00), float2(-6.00000000e+00, 3.00000000e+00));
	float _6817 = -_6816;
	float _6818 = _6817 * denom_inv_6019;
	float _6819 = exp(_6818);
	float _6820 = _6813 + _6819;
	float _6823 = dot(float2(-5.00000000e+00, 3.00000000e+00), float2(-5.00000000e+00, 3.00000000e+00));
	float _6824 = -_6823;
	float _6825 = _6824 * denom_inv_6019;
	float _6826 = exp(_6825);
	float _6827 = _6820 + _6826;
	float w5adjx = _6827;
	float _6831 = dot(float2(-4.00000000e+00, 2.00000000e+00), float2(-4.00000000e+00, 2.00000000e+00));
	float _6832 = -_6831;
	float _6833 = _6832 * denom_inv_6019;
	float _6834 = exp(_6833);
	float _6837 = dot(float2(-3.00000000e+00, 2.00000000e+00), float2(-3.00000000e+00, 2.00000000e+00));
	float _6838 = -_6837;
	float _6839 = _6838 * denom_inv_6019;
	float _6840 = exp(_6839);
	float _6841 = _6834 + _6840;
	float _6844 = dot(float2(-4.00000000e+00, 3.00000000e+00), float2(-4.00000000e+00, 3.00000000e+00));
	float _6845 = -_6844;
	float _6846 = _6845 * denom_inv_6019;
	float _6847 = exp(_6846);
	float _6848 = _6841 + _6847;
	float _6851 = dot(float2(-3.00000000e+00, 3.00000000e+00), float2(-3.00000000e+00, 3.00000000e+00));
	float _6852 = -_6851;
	float _6853 = _6852 * denom_inv_6019;
	float _6854 = exp(_6853);
	float _6855 = _6848 + _6854;
	float w4adjx = _6855;
	float _6859 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _6860 = -_6859;
	float _6861 = _6860 * denom_inv_6019;
	float _6862 = exp(_6861);
	float _6865 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _6866 = -_6865;
	float _6867 = _6866 * denom_inv_6019;
	float _6868 = exp(_6867);
	float _6869 = _6862 + _6868;
	float _6872 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _6873 = -_6872;
	float _6874 = _6873 * denom_inv_6019;
	float _6875 = exp(_6874);
	float _6876 = _6869 + _6875;
	float _6879 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _6880 = -_6879;
	float _6881 = _6880 * denom_inv_6019;
	float _6882 = exp(_6881);
	float _6883 = _6876 + _6882;
	float w3adjx = _6883;
	float _6887 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _6888 = -_6887;
	float _6889 = _6888 * denom_inv_6019;
	float _6890 = exp(_6889);
	float _6893 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _6894 = -_6893;
	float _6895 = _6894 * denom_inv_6019;
	float _6896 = exp(_6895);
	float _6897 = _6890 + _6896;
	float _6900 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _6901 = -_6900;
	float _6902 = _6901 * denom_inv_6019;
	float _6903 = exp(_6902);
	float _6904 = _6897 + _6903;
	float _6907 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _6908 = -_6907;
	float _6909 = _6908 * denom_inv_6019;
	float _6910 = exp(_6909);
	float _6911 = _6904 + _6910;
	float w3curr = _6911;
	float _6915 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _6916 = -_6915;
	float _6917 = _6916 * denom_inv_6019;
	float _6918 = exp(_6917);
	float _6921 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _6922 = -_6921;
	float _6923 = _6922 * denom_inv_6019;
	float _6924 = exp(_6923);
	float _6925 = _6918 + _6924;
	float _6928 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _6929 = -_6928;
	float _6930 = _6929 * denom_inv_6019;
	float _6931 = exp(_6930);
	float _6932 = _6925 + _6931;
	float _6935 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _6936 = -_6935;
	float _6937 = _6936 * denom_inv_6019;
	float _6938 = exp(_6937);
	float _6939 = _6932 + _6938;
	float w4curr = _6939;
	float _6943 = dot(float2(4.00000000e+00, 2.00000000e+00), float2(4.00000000e+00, 2.00000000e+00));
	float _6944 = -_6943;
	float _6945 = _6944 * denom_inv_6019;
	float _6946 = exp(_6945);
	float _6949 = dot(float2(5.00000000e+00, 2.00000000e+00), float2(5.00000000e+00, 2.00000000e+00));
	float _6950 = -_6949;
	float _6951 = _6950 * denom_inv_6019;
	float _6952 = exp(_6951);
	float _6953 = _6946 + _6952;
	float _6956 = dot(float2(4.00000000e+00, 3.00000000e+00), float2(4.00000000e+00, 3.00000000e+00));
	float _6957 = -_6956;
	float _6958 = _6957 * denom_inv_6019;
	float _6959 = exp(_6958);
	float _6960 = _6953 + _6959;
	float _6963 = dot(float2(5.00000000e+00, 3.00000000e+00), float2(5.00000000e+00, 3.00000000e+00));
	float _6964 = -_6963;
	float _6965 = _6964 * denom_inv_6019;
	float _6966 = exp(_6965);
	float _6967 = _6960 + _6966;
	float w5curr = _6967;
	float _6971 = dot(float2(-6.00000000e+00, 4.00000000e+00), float2(-6.00000000e+00, 4.00000000e+00));
	float _6972 = -_6971;
	float _6973 = _6972 * denom_inv_6019;
	float _6974 = exp(_6973);
	float _6977 = dot(float2(-5.00000000e+00, 4.00000000e+00), float2(-5.00000000e+00, 4.00000000e+00));
	float _6978 = -_6977;
	float _6979 = _6978 * denom_inv_6019;
	float _6980 = exp(_6979);
	float _6981 = _6974 + _6980;
	float _6984 = dot(float2(-6.00000000e+00, 5.00000000e+00), float2(-6.00000000e+00, 5.00000000e+00));
	float _6985 = -_6984;
	float _6986 = _6985 * denom_inv_6019;
	float _6987 = exp(_6986);
	float _6988 = _6981 + _6987;
	float _6991 = dot(float2(-5.00000000e+00, 5.00000000e+00), float2(-5.00000000e+00, 5.00000000e+00));
	float _6992 = -_6991;
	float _6993 = _6992 * denom_inv_6019;
	float _6994 = exp(_6993);
	float _6995 = _6988 + _6994;
	float w8adjx = _6995;
	float _6999 = dot(float2(-4.00000000e+00, 4.00000000e+00), float2(-4.00000000e+00, 4.00000000e+00));
	float _7000 = -_6999;
	float _7001 = _7000 * denom_inv_6019;
	float _7002 = exp(_7001);
	float _7005 = dot(float2(-3.00000000e+00, 4.00000000e+00), float2(-3.00000000e+00, 4.00000000e+00));
	float _7006 = -_7005;
	float _7007 = _7006 * denom_inv_6019;
	float _7008 = exp(_7007);
	float _7009 = _7002 + _7008;
	float _7012 = dot(float2(-4.00000000e+00, 5.00000000e+00), float2(-4.00000000e+00, 5.00000000e+00));
	float _7013 = -_7012;
	float _7014 = _7013 * denom_inv_6019;
	float _7015 = exp(_7014);
	float _7016 = _7009 + _7015;
	float _7019 = dot(float2(-3.00000000e+00, 5.00000000e+00), float2(-3.00000000e+00, 5.00000000e+00));
	float _7020 = -_7019;
	float _7021 = _7020 * denom_inv_6019;
	float _7022 = exp(_7021);
	float _7023 = _7016 + _7022;
	float w7adjx = _7023;
	float _7027 = dot(float2(-2.00000000e+00, 4.00000000e+00), float2(-2.00000000e+00, 4.00000000e+00));
	float _7028 = -_7027;
	float _7029 = _7028 * denom_inv_6019;
	float _7030 = exp(_7029);
	float _7033 = dot(float2(-1.00000000e+00, 4.00000000e+00), float2(-1.00000000e+00, 4.00000000e+00));
	float _7034 = -_7033;
	float _7035 = _7034 * denom_inv_6019;
	float _7036 = exp(_7035);
	float _7037 = _7030 + _7036;
	float _7040 = dot(float2(-2.00000000e+00, 5.00000000e+00), float2(-2.00000000e+00, 5.00000000e+00));
	float _7041 = -_7040;
	float _7042 = _7041 * denom_inv_6019;
	float _7043 = exp(_7042);
	float _7044 = _7037 + _7043;
	float _7047 = dot(float2(-1.00000000e+00, 5.00000000e+00), float2(-1.00000000e+00, 5.00000000e+00));
	float _7048 = -_7047;
	float _7049 = _7048 * denom_inv_6019;
	float _7050 = exp(_7049);
	float _7051 = _7044 + _7050;
	float w6adjx = _7051;
	float _7055 = dot(float2(0.00000000e+00, 4.00000000e+00), float2(0.00000000e+00, 4.00000000e+00));
	float _7056 = -_7055;
	float _7057 = _7056 * denom_inv_6019;
	float _7058 = exp(_7057);
	float _7061 = dot(float2(1.00000000e+00, 4.00000000e+00), float2(1.00000000e+00, 4.00000000e+00));
	float _7062 = -_7061;
	float _7063 = _7062 * denom_inv_6019;
	float _7064 = exp(_7063);
	float _7065 = _7058 + _7064;
	float _7068 = dot(float2(0.00000000e+00, 5.00000000e+00), float2(0.00000000e+00, 5.00000000e+00));
	float _7069 = -_7068;
	float _7070 = _7069 * denom_inv_6019;
	float _7071 = exp(_7070);
	float _7072 = _7065 + _7071;
	float _7075 = dot(float2(1.00000000e+00, 5.00000000e+00), float2(1.00000000e+00, 5.00000000e+00));
	float _7076 = -_7075;
	float _7077 = _7076 * denom_inv_6019;
	float _7078 = exp(_7077);
	float _7079 = _7072 + _7078;
	float w6curr = _7079;
	float _7083 = dot(float2(2.00000000e+00, 4.00000000e+00), float2(2.00000000e+00, 4.00000000e+00));
	float _7084 = -_7083;
	float _7085 = _7084 * denom_inv_6019;
	float _7086 = exp(_7085);
	float _7089 = dot(float2(3.00000000e+00, 4.00000000e+00), float2(3.00000000e+00, 4.00000000e+00));
	float _7090 = -_7089;
	float _7091 = _7090 * denom_inv_6019;
	float _7092 = exp(_7091);
	float _7093 = _7086 + _7092;
	float _7096 = dot(float2(2.00000000e+00, 5.00000000e+00), float2(2.00000000e+00, 5.00000000e+00));
	float _7097 = -_7096;
	float _7098 = _7097 * denom_inv_6019;
	float _7099 = exp(_7098);
	float _7100 = _7093 + _7099;
	float _7103 = dot(float2(3.00000000e+00, 5.00000000e+00), float2(3.00000000e+00, 5.00000000e+00));
	float _7104 = -_7103;
	float _7105 = _7104 * denom_inv_6019;
	float _7106 = exp(_7105);
	float _7107 = _7100 + _7106;
	float w7curr = _7107;
	float _7111 = dot(float2(4.00000000e+00, 4.00000000e+00), float2(4.00000000e+00, 4.00000000e+00));
	float _7112 = -_7111;
	float _7113 = _7112 * denom_inv_6019;
	float _7114 = exp(_7113);
	float _7117 = dot(float2(5.00000000e+00, 4.00000000e+00), float2(5.00000000e+00, 4.00000000e+00));
	float _7118 = -_7117;
	float _7119 = _7118 * denom_inv_6019;
	float _7120 = exp(_7119);
	float _7121 = _7114 + _7120;
	float _7124 = dot(float2(4.00000000e+00, 5.00000000e+00), float2(4.00000000e+00, 5.00000000e+00));
	float _7125 = -_7124;
	float _7126 = _7125 * denom_inv_6019;
	float _7127 = exp(_7126);
	float _7128 = _7121 + _7127;
	float _7131 = dot(float2(5.00000000e+00, 5.00000000e+00), float2(5.00000000e+00, 5.00000000e+00));
	float _7132 = -_7131;
	float _7133 = _7132 * denom_inv_6019;
	float _7134 = exp(_7133);
	float _7135 = _7128 + _7134;
	float w8curr = _7135;
	float4 _7137 = float4(w0curr, w0adjx, w0adjy, w0diag);
	float4 w0 = _7137;
	float4 _7139 = float4(w1curr, w1adjx, w1adjy, w1diag);
	float4 w1_7140 = _7139;
	float4 _7141 = float4(w2curr, w2adjx, w2adjy, w2diag);
	float4 w2_7142 = _7141;
	float4 _7143 = float4(w3curr, w3adjx, w3adjy, w3diag);
	float4 w3_7144 = _7143;
	float4 _7145 = float4(w4curr, w4adjx, w4adjy, w4diag);
	float4 w4_7146 = _7145;
	float4 _7147 = float4(w5curr, w5adjx, w5adjy, w5diag);
	float4 w5_7148 = _7147;
	float4 _7149 = float4(w6curr, w6adjx, w6adjy, w6diag);
	float4 w6_7150 = _7149;
	float4 _7151 = float4(w7curr, w7adjx, w7adjy, w7diag);
	float4 w7_7152 = _7151;
	float4 _7153 = float4(w8curr, w8adjx, w8adjy, w8diag);
	float4 w8_7154 = _7153;
	float4 _7155 = w0 + w1_7140;
	float4 _7156 = _7155 + w2_7142;
	float4 _7157 = _7156 + w3_7144;
	float4 _7158 = _7157 + w4_7146;
	float4 _7159 = _7158 + w5_7148;
	float4 _7160 = _7159 + w6_7150;
	float4 _7161 = _7160 + w7_7152;
	float4 _7162 = _7161 + w8_7154;
	float4 weight_sum4 = _7162;
	float2 _7166 = weight_sum4.xy + weight_sum4.zw;
	float2 weight_sum2 = _7166;
	float _7170 = weight_sum2.x + weight_sum2.y;
	float weight_sum = _7170;
	float _7173 = 1.00000000e+00 / weight_sum;
	float weight_sum_inv_7174 = _7173;
	float2 _7176 = dxdy * quad_vector.xy;
	float2 dxdy_curr = _7176;
	float2 _7178 = dxdy_curr * sample0curr_texel_offset;
	float2 _7180 = tex_uv.xy + _7178;
	float2 _7181;
	float _7182;
	_7181 = _7180;
	_7182 = input_gamma;
	float4 _7183 = F__tex2D_linearize(tex, _7181, _7182);
	float3 sample0curr = _7183.xyz;
	float2 _7186 = dxdy_curr * sample0adjx_texel_offset;
	float2 _7188 = tex_uv.xy + _7186;
	float2 _7189;
	float _7190;
	_7189 = _7188;
	_7190 = input_gamma;
	float4 _7191 = F__tex2D_linearize(tex, _7189, _7190);
	float3 sample0adjx = _7191.xyz;
	float2 _7194 = dxdy_curr * sample0adjy_texel_offset;
	float2 _7196 = tex_uv.xy + _7194;
	float2 _7197;
	float _7198;
	_7197 = _7196;
	_7198 = input_gamma;
	float4 _7199 = F__tex2D_linearize(tex, _7197, _7198);
	float3 sample0adjy = _7199.xyz;
	float2 _7202 = dxdy_curr * sample0diag_texel_offset;
	float2 _7204 = tex_uv.xy + _7202;
	float2 _7205;
	float _7206;
	_7205 = _7204;
	_7206 = input_gamma;
	float4 _7207 = F__tex2D_linearize(tex, _7205, _7206);
	float3 sample0diag = _7207.xyz;
	float2 _7210 = dxdy_curr * sample1_texel_offset;
	float2 _7211;
	_7211 = _7210;
	float4 _7212 = F__uv2_to_uv4(_7211);
	float4 _7213 = tex_uv + _7212;
	float4 _7214;
	float _7215;
	_7214 = _7213;
	_7215 = input_gamma;
	float4 _7216 = F__tex2Dlod_linearize(tex, _7214, _7215);
	float3 sample1curr = _7216.xyz;
	float2 _7219 = dxdy_curr * sample2_texel_offset;
	float2 _7220;
	_7220 = _7219;
	float4 _7221 = F__uv2_to_uv4(_7220);
	float4 _7222 = tex_uv + _7221;
	float4 _7223;
	float _7224;
	_7223 = _7222;
	_7224 = input_gamma;
	float4 _7225 = F__tex2Dlod_linearize(tex, _7223, _7224);
	float3 sample2curr = _7225.xyz;
	float2 _7228 = dxdy_curr * sample3_texel_offset;
	float2 _7229;
	_7229 = _7228;
	float4 _7230 = F__uv2_to_uv4(_7229);
	float4 _7231 = tex_uv + _7230;
	float4 _7232;
	float _7233;
	_7232 = _7231;
	_7233 = input_gamma;
	float4 _7234 = F__tex2Dlod_linearize(tex, _7232, _7233);
	float3 sample3curr = _7234.xyz;
	float2 _7237 = dxdy_curr * sample4_texel_offset;
	float2 _7238;
	_7238 = _7237;
	float4 _7239 = F__uv2_to_uv4(_7238);
	float4 _7240 = tex_uv + _7239;
	float4 _7241;
	float _7242;
	_7241 = _7240;
	_7242 = input_gamma;
	float4 _7243 = F__tex2Dlod_linearize(tex, _7241, _7242);
	float3 sample4curr = _7243.xyz;
	float2 _7246 = dxdy_curr * sample5_texel_offset;
	float2 _7247;
	_7247 = _7246;
	float4 _7248 = F__uv2_to_uv4(_7247);
	float4 _7249 = tex_uv + _7248;
	float4 _7250;
	float _7251;
	_7250 = _7249;
	_7251 = input_gamma;
	float4 _7252 = F__tex2Dlod_linearize(tex, _7250, _7251);
	float3 sample5curr = _7252.xyz;
	float2 _7255 = dxdy_curr * sample6_texel_offset;
	float2 _7256;
	_7256 = _7255;
	float4 _7257 = F__uv2_to_uv4(_7256);
	float4 _7258 = tex_uv + _7257;
	float4 _7259;
	float _7260;
	_7259 = _7258;
	_7260 = input_gamma;
	float4 _7261 = F__tex2Dlod_linearize(tex, _7259, _7260);
	float3 sample6curr = _7261.xyz;
	float2 _7264 = dxdy_curr * sample7_texel_offset;
	float2 _7265;
	_7265 = _7264;
	float4 _7266 = F__uv2_to_uv4(_7265);
	float4 _7267 = tex_uv + _7266;
	float4 _7268;
	float _7269;
	_7268 = _7267;
	_7269 = input_gamma;
	float4 _7270 = F__tex2Dlod_linearize(tex, _7268, _7269);
	float3 sample7curr = _7270.xyz;
	float2 _7273 = dxdy_curr * sample8_texel_offset;
	float2 _7274;
	_7274 = _7273;
	float4 _7275 = F__uv2_to_uv4(_7274);
	float4 _7276 = tex_uv + _7275;
	float4 _7277;
	float _7278;
	_7277 = _7276;
	_7278 = input_gamma;
	float4 _7279 = F__tex2Dlod_linearize(tex, _7277, _7278);
	float3 sample8curr = _7279.xyz;
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
	float4 _7330;
	float3 _7331;
	float3 _7332;
	float3 _7333;
	float3 _7334;
	_7330 = quad_vector;
	_7331 = sample1curr;
	F__quad_gather(_7330, _7331, _7332, _7333, _7334);
	sample1adjx = _7332;
	sample1adjy = _7333;
	sample1diag = _7334;
	float4 _7336;
	float3 _7337;
	float3 _7338;
	float3 _7339;
	float3 _7340;
	_7336 = quad_vector;
	_7337 = sample2curr;
	F__quad_gather(_7336, _7337, _7338, _7339, _7340);
	sample2adjx = _7338;
	sample2adjy = _7339;
	sample2diag = _7340;
	float4 _7342;
	float3 _7343;
	float3 _7344;
	float3 _7345;
	float3 _7346;
	_7342 = quad_vector;
	_7343 = sample3curr;
	F__quad_gather(_7342, _7343, _7344, _7345, _7346);
	sample3adjx = _7344;
	sample3adjy = _7345;
	sample3diag = _7346;
	float4 _7348;
	float3 _7349;
	float3 _7350;
	float3 _7351;
	float3 _7352;
	_7348 = quad_vector;
	_7349 = sample4curr;
	F__quad_gather(_7348, _7349, _7350, _7351, _7352);
	sample4adjx = _7350;
	sample4adjy = _7351;
	sample4diag = _7352;
	float4 _7354;
	float3 _7355;
	float3 _7356;
	float3 _7357;
	float3 _7358;
	_7354 = quad_vector;
	_7355 = sample5curr;
	F__quad_gather(_7354, _7355, _7356, _7357, _7358);
	sample5adjx = _7356;
	sample5adjy = _7357;
	sample5diag = _7358;
	float4 _7360;
	float3 _7361;
	float3 _7362;
	float3 _7363;
	float3 _7364;
	_7360 = quad_vector;
	_7361 = sample6curr;
	F__quad_gather(_7360, _7361, _7362, _7363, _7364);
	sample6adjx = _7362;
	sample6adjy = _7363;
	sample6diag = _7364;
	float4 _7366;
	float3 _7367;
	float3 _7368;
	float3 _7369;
	float3 _7370;
	_7366 = quad_vector;
	_7367 = sample7curr;
	F__quad_gather(_7366, _7367, _7368, _7369, _7370);
	sample7adjx = _7368;
	sample7adjy = _7369;
	sample7diag = _7370;
	float4 _7372;
	float3 _7373;
	float3 _7374;
	float3 _7375;
	float3 _7376;
	_7372 = quad_vector;
	_7373 = sample8curr;
	F__quad_gather(_7372, _7373, _7374, _7375, _7376);
	sample8adjx = _7374;
	sample8adjy = _7375;
	sample8diag = _7376;
	float3 sum_7379 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _7392 = float4x3(sample0curr.x, sample0curr.y, sample0curr.z, sample0adjx.x, sample0adjx.y, sample0adjx.z, sample0adjy.x, sample0adjy.y, sample0adjy.z, sample0diag.x, sample0diag.y, sample0diag.z);
	float3 _7393 = mul(w0, _7392);
	float3 _7394 = sum_7379 + _7393;
	sum_7379 = _7394;
	float4x3 _7407 = float4x3(sample1curr.x, sample1curr.y, sample1curr.z, sample1adjx.x, sample1adjx.y, sample1adjx.z, sample1adjy.x, sample1adjy.y, sample1adjy.z, sample1diag.x, sample1diag.y, sample1diag.z);
	float3 _7408 = mul(w1_7140, _7407);
	float3 _7409 = sum_7379 + _7408;
	sum_7379 = _7409;
	float4x3 _7422 = float4x3(sample2curr.x, sample2curr.y, sample2curr.z, sample2adjx.x, sample2adjx.y, sample2adjx.z, sample2adjy.x, sample2adjy.y, sample2adjy.z, sample2diag.x, sample2diag.y, sample2diag.z);
	float3 _7423 = mul(w2_7142, _7422);
	float3 _7424 = sum_7379 + _7423;
	sum_7379 = _7424;
	float4x3 _7437 = float4x3(sample3curr.x, sample3curr.y, sample3curr.z, sample3adjx.x, sample3adjx.y, sample3adjx.z, sample3adjy.x, sample3adjy.y, sample3adjy.z, sample3diag.x, sample3diag.y, sample3diag.z);
	float3 _7438 = mul(w3_7144, _7437);
	float3 _7439 = sum_7379 + _7438;
	sum_7379 = _7439;
	float4x3 _7452 = float4x3(sample4curr.x, sample4curr.y, sample4curr.z, sample4adjx.x, sample4adjx.y, sample4adjx.z, sample4adjy.x, sample4adjy.y, sample4adjy.z, sample4diag.x, sample4diag.y, sample4diag.z);
	float3 _7453 = mul(w4_7146, _7452);
	float3 _7454 = sum_7379 + _7453;
	sum_7379 = _7454;
	float4x3 _7467 = float4x3(sample5curr.x, sample5curr.y, sample5curr.z, sample5adjx.x, sample5adjx.y, sample5adjx.z, sample5adjy.x, sample5adjy.y, sample5adjy.z, sample5diag.x, sample5diag.y, sample5diag.z);
	float3 _7468 = mul(w5_7148, _7467);
	float3 _7469 = sum_7379 + _7468;
	sum_7379 = _7469;
	float4x3 _7482 = float4x3(sample6curr.x, sample6curr.y, sample6curr.z, sample6adjx.x, sample6adjx.y, sample6adjx.z, sample6adjy.x, sample6adjy.y, sample6adjy.z, sample6diag.x, sample6diag.y, sample6diag.z);
	float3 _7483 = mul(w6_7150, _7482);
	float3 _7484 = sum_7379 + _7483;
	sum_7379 = _7484;
	float4x3 _7497 = float4x3(sample7curr.x, sample7curr.y, sample7curr.z, sample7adjx.x, sample7adjx.y, sample7adjx.z, sample7adjy.x, sample7adjy.y, sample7adjy.z, sample7diag.x, sample7diag.y, sample7diag.z);
	float3 _7498 = mul(w7_7152, _7497);
	float3 _7499 = sum_7379 + _7498;
	sum_7379 = _7499;
	float4x3 _7512 = float4x3(sample8curr.x, sample8curr.y, sample8curr.z, sample8adjx.x, sample8adjx.y, sample8adjx.z, sample8adjy.x, sample8adjy.y, sample8adjy.z, sample8diag.x, sample8diag.y, sample8diag.z);
	float3 _7513 = mul(w8_7154, _7512);
	float3 _7514 = sum_7379 + _7513;
	sum_7379 = _7514;
	float3 _7516 = sum_7379 * weight_sum_inv_7174.xxx;
	return _7516;
}
float3 F__tex2Dblur10x10shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _7525 = sigma * sigma;
	float _7527 = 5.00000000e-01 / _7525;
	float denom_inv_7528 = _7527;
	float _7530 = -2.50000000e-01 * denom_inv_7528;
	float _7531 = exp(_7530);
	float w0_5off_7532 = _7531;
	float _7534 = -1.00000000e+00 * denom_inv_7528;
	float _7535 = exp(_7534);
	float w1off_7536 = _7535;
	float _7538 = -2.25000000e+00 * denom_inv_7528;
	float _7539 = exp(_7538);
	float w1_5off_7540 = _7539;
	float _7542 = -4.00000000e+00 * denom_inv_7528;
	float _7543 = exp(_7542);
	float w2off_7544 = _7543;
	float _7546 = -6.25000000e+00 * denom_inv_7528;
	float _7547 = exp(_7546);
	float w2_5off_7548 = _7547;
	float _7550 = -1.22500000e+01 * denom_inv_7528;
	float _7551 = exp(_7550);
	float w3_5off_7552 = _7551;
	float _7554 = -2.02500000e+01 * denom_inv_7528;
	float _7555 = exp(_7554);
	float w4_5off_7556 = _7555;
	float _7558 = -3.02500000e+01 * denom_inv_7528;
	float _7559 = exp(_7558);
	float w5_5off_7560 = _7559;
	float _7561 = w0_5off_7532 + w1_5off_7540;
	float _7562 = w1_5off_7540 / _7561;
	float _7565 = lerp(_7562, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_7566 = _7565;
	float _7567 = w2_5off_7548 + w3_5off_7552;
	float _7568 = w3_5off_7552 / _7567;
	float _7571 = lerp(_7568, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_7572 = _7571;
	float _7573 = w4_5off_7556 + w5_5off_7560;
	float _7574 = w5_5off_7560 / _7573;
	float _7577 = lerp(_7574, 5.00000000e-01, 5.00000000e-01);
	float texel4to5ratio_7578 = _7577;
	float _7580 = 1.00000000e+00 + w1off_7536;
	float _7581 = w1off_7536 / _7580;
	float texel0to1ratio_nearest_7582 = _7581;
	float _7583 = w1off_7536 + w2off_7544;
	float _7584 = w2off_7544 / _7583;
	float texel1to2ratio_nearest_7585 = _7584;
	float2 _7586 = float2(texel0to1ratio_nearest_7582, texel0to1ratio_nearest_7582);
	float2 _7588 = float2(0.00000000e+00, 0.00000000e+00) + _7586;
	float2 sample0curr_texel_offset_7589 = _7588;
	float _7590 = -texel1to2ratio_nearest_7585;
	float2 _7591 = float2(_7590, texel0to1ratio_nearest_7582);
	float2 _7593 = float2(-1.00000000e+00, 0.00000000e+00) + _7591;
	float2 sample0adjx_texel_offset_7594 = _7593;
	float _7595 = -texel1to2ratio_nearest_7585;
	float2 _7596 = float2(texel0to1ratio_nearest_7582, _7595);
	float2 _7598 = float2(0.00000000e+00, -1.00000000e+00) + _7596;
	float2 sample0adjy_texel_offset_7599 = _7598;
	float _7600 = -texel1to2ratio_nearest_7585;
	float _7601 = -texel1to2ratio_nearest_7585;
	float2 _7602 = float2(_7600, _7601);
	float2 _7604 = float2(-1.00000000e+00, -1.00000000e+00) + _7602;
	float2 sample0diag_texel_offset_7605 = _7604;
	float2 _7606 = float2(texel2to3ratio_7572, texel0to1ratio_7566);
	float2 _7608 = float2(2.00000000e+00, 0.00000000e+00) + _7606;
	float2 sample1_texel_offset_7609 = _7608;
	float2 _7610 = float2(texel4to5ratio_7578, texel0to1ratio_7566);
	float2 _7612 = float2(4.00000000e+00, 0.00000000e+00) + _7610;
	float2 sample2_texel_offset_7613 = _7612;
	float2 _7614 = float2(texel0to1ratio_7566, texel2to3ratio_7572);
	float2 _7616 = float2(0.00000000e+00, 2.00000000e+00) + _7614;
	float2 sample3_texel_offset_7617 = _7616;
	float2 _7618 = float2(texel2to3ratio_7572, texel2to3ratio_7572);
	float2 _7620 = float2(2.00000000e+00, 2.00000000e+00) + _7618;
	float2 sample4_texel_offset_7621 = _7620;
	float2 _7622 = float2(texel4to5ratio_7578, texel2to3ratio_7572);
	float2 _7624 = float2(4.00000000e+00, 2.00000000e+00) + _7622;
	float2 sample5_texel_offset_7625 = _7624;
	float2 _7626 = float2(texel0to1ratio_7566, texel4to5ratio_7578);
	float2 _7628 = float2(0.00000000e+00, 4.00000000e+00) + _7626;
	float2 sample6_texel_offset_7629 = _7628;
	float2 _7630 = float2(texel2to3ratio_7572, texel4to5ratio_7578);
	float2 _7632 = float2(2.00000000e+00, 4.00000000e+00) + _7630;
	float2 sample7_texel_offset_7633 = _7632;
	float2 _7634 = float2(texel4to5ratio_7578, texel4to5ratio_7578);
	float2 _7636 = float2(4.00000000e+00, 4.00000000e+00) + _7634;
	float2 sample8_texel_offset_7637 = _7636;
	float _7640 = dot(float2(-4.00000000e+00, -4.00000000e+00), float2(-4.00000000e+00, -4.00000000e+00));
	float _7641 = -_7640;
	float _7642 = _7641 * denom_inv_7528;
	float _7643 = exp(_7642);
	float _7646 = dot(float2(-3.00000000e+00, -4.00000000e+00), float2(-3.00000000e+00, -4.00000000e+00));
	float _7647 = -_7646;
	float _7648 = _7647 * denom_inv_7528;
	float _7649 = exp(_7648);
	float _7650 = _7643 + _7649;
	float _7653 = dot(float2(-4.00000000e+00, -3.00000000e+00), float2(-4.00000000e+00, -3.00000000e+00));
	float _7654 = -_7653;
	float _7655 = _7654 * denom_inv_7528;
	float _7656 = exp(_7655);
	float _7657 = _7650 + _7656;
	float _7660 = dot(float2(-3.00000000e+00, -3.00000000e+00), float2(-3.00000000e+00, -3.00000000e+00));
	float _7661 = -_7660;
	float _7662 = _7661 * denom_inv_7528;
	float _7663 = exp(_7662);
	float _7664 = _7657 + _7663;
	float w4diag_7665 = _7664;
	float _7668 = dot(float2(-2.00000000e+00, -4.00000000e+00), float2(-2.00000000e+00, -4.00000000e+00));
	float _7669 = -_7668;
	float _7670 = _7669 * denom_inv_7528;
	float _7671 = exp(_7670);
	float _7674 = dot(float2(-1.00000000e+00, -4.00000000e+00), float2(-1.00000000e+00, -4.00000000e+00));
	float _7675 = -_7674;
	float _7676 = _7675 * denom_inv_7528;
	float _7677 = exp(_7676);
	float _7678 = _7671 + _7677;
	float _7681 = dot(float2(-2.00000000e+00, -3.00000000e+00), float2(-2.00000000e+00, -3.00000000e+00));
	float _7682 = -_7681;
	float _7683 = _7682 * denom_inv_7528;
	float _7684 = exp(_7683);
	float _7685 = _7678 + _7684;
	float _7688 = dot(float2(-1.00000000e+00, -3.00000000e+00), float2(-1.00000000e+00, -3.00000000e+00));
	float _7689 = -_7688;
	float _7690 = _7689 * denom_inv_7528;
	float _7691 = exp(_7690);
	float _7692 = _7685 + _7691;
	float w3diag_7693 = _7692;
	float _7696 = dot(float2(0.00000000e+00, -4.00000000e+00), float2(0.00000000e+00, -4.00000000e+00));
	float _7697 = -_7696;
	float _7698 = _7697 * denom_inv_7528;
	float _7699 = exp(_7698);
	float _7702 = dot(float2(1.00000000e+00, -4.00000000e+00), float2(1.00000000e+00, -4.00000000e+00));
	float _7703 = -_7702;
	float _7704 = _7703 * denom_inv_7528;
	float _7705 = exp(_7704);
	float _7706 = _7699 + _7705;
	float _7709 = dot(float2(0.00000000e+00, -3.00000000e+00), float2(0.00000000e+00, -3.00000000e+00));
	float _7710 = -_7709;
	float _7711 = _7710 * denom_inv_7528;
	float _7712 = exp(_7711);
	float _7713 = _7706 + _7712;
	float _7716 = dot(float2(1.00000000e+00, -3.00000000e+00), float2(1.00000000e+00, -3.00000000e+00));
	float _7717 = -_7716;
	float _7718 = _7717 * denom_inv_7528;
	float _7719 = exp(_7718);
	float _7720 = _7713 + _7719;
	float w3adjy_7721 = _7720;
	float _7724 = dot(float2(2.00000000e+00, -4.00000000e+00), float2(2.00000000e+00, -4.00000000e+00));
	float _7725 = -_7724;
	float _7726 = _7725 * denom_inv_7528;
	float _7727 = exp(_7726);
	float _7730 = dot(float2(3.00000000e+00, -4.00000000e+00), float2(3.00000000e+00, -4.00000000e+00));
	float _7731 = -_7730;
	float _7732 = _7731 * denom_inv_7528;
	float _7733 = exp(_7732);
	float _7734 = _7727 + _7733;
	float _7737 = dot(float2(2.00000000e+00, -3.00000000e+00), float2(2.00000000e+00, -3.00000000e+00));
	float _7738 = -_7737;
	float _7739 = _7738 * denom_inv_7528;
	float _7740 = exp(_7739);
	float _7741 = _7734 + _7740;
	float _7744 = dot(float2(3.00000000e+00, -3.00000000e+00), float2(3.00000000e+00, -3.00000000e+00));
	float _7745 = -_7744;
	float _7746 = _7745 * denom_inv_7528;
	float _7747 = exp(_7746);
	float _7748 = _7741 + _7747;
	float w4adjy_7749 = _7748;
	float _7752 = dot(float2(4.00000000e+00, -4.00000000e+00), float2(4.00000000e+00, -4.00000000e+00));
	float _7753 = -_7752;
	float _7754 = _7753 * denom_inv_7528;
	float _7755 = exp(_7754);
	float _7758 = dot(float2(5.00000000e+00, -4.00000000e+00), float2(5.00000000e+00, -4.00000000e+00));
	float _7759 = -_7758;
	float _7760 = _7759 * denom_inv_7528;
	float _7761 = exp(_7760);
	float _7762 = _7755 + _7761;
	float _7765 = dot(float2(4.00000000e+00, -3.00000000e+00), float2(4.00000000e+00, -3.00000000e+00));
	float _7766 = -_7765;
	float _7767 = _7766 * denom_inv_7528;
	float _7768 = exp(_7767);
	float _7769 = _7762 + _7768;
	float _7772 = dot(float2(5.00000000e+00, -3.00000000e+00), float2(5.00000000e+00, -3.00000000e+00));
	float _7773 = -_7772;
	float _7774 = _7773 * denom_inv_7528;
	float _7775 = exp(_7774);
	float _7776 = _7769 + _7775;
	float w5adjy_7777 = _7776;
	float _7780 = dot(float2(-4.00000000e+00, -2.00000000e+00), float2(-4.00000000e+00, -2.00000000e+00));
	float _7781 = -_7780;
	float _7782 = _7781 * denom_inv_7528;
	float _7783 = exp(_7782);
	float _7786 = dot(float2(-3.00000000e+00, -2.00000000e+00), float2(-3.00000000e+00, -2.00000000e+00));
	float _7787 = -_7786;
	float _7788 = _7787 * denom_inv_7528;
	float _7789 = exp(_7788);
	float _7790 = _7783 + _7789;
	float _7793 = dot(float2(-4.00000000e+00, -1.00000000e+00), float2(-4.00000000e+00, -1.00000000e+00));
	float _7794 = -_7793;
	float _7795 = _7794 * denom_inv_7528;
	float _7796 = exp(_7795);
	float _7797 = _7790 + _7796;
	float _7800 = dot(float2(-3.00000000e+00, -1.00000000e+00), float2(-3.00000000e+00, -1.00000000e+00));
	float _7801 = -_7800;
	float _7802 = _7801 * denom_inv_7528;
	float _7803 = exp(_7802);
	float _7804 = _7797 + _7803;
	float w1diag_7805 = _7804;
	float _7808 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _7809 = -_7808;
	float _7810 = _7809 * denom_inv_7528;
	float _7811 = exp(_7810);
	float _7814 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _7815 = -_7814;
	float _7816 = _7815 * denom_inv_7528;
	float _7817 = exp(_7816);
	float _7818 = _7811 + _7817;
	float _7821 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _7822 = -_7821;
	float _7823 = _7822 * denom_inv_7528;
	float _7824 = exp(_7823);
	float _7825 = _7818 + _7824;
	float _7828 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _7829 = -_7828;
	float _7830 = _7829 * denom_inv_7528;
	float _7831 = exp(_7830);
	float _7832 = _7825 + _7831;
	float w0diag_7833 = _7832;
	float _7836 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _7837 = -_7836;
	float _7838 = _7837 * denom_inv_7528;
	float _7839 = exp(_7838);
	float _7842 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _7843 = -_7842;
	float _7844 = _7843 * denom_inv_7528;
	float _7845 = exp(_7844);
	float _7846 = _7839 + _7845;
	float _7849 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _7850 = -_7849;
	float _7851 = _7850 * denom_inv_7528;
	float _7852 = exp(_7851);
	float _7853 = _7846 + _7852;
	float _7856 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _7857 = -_7856;
	float _7858 = _7857 * denom_inv_7528;
	float _7859 = exp(_7858);
	float _7860 = _7853 + _7859;
	float w0adjy_7861 = _7860;
	float _7864 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _7865 = -_7864;
	float _7866 = _7865 * denom_inv_7528;
	float _7867 = exp(_7866);
	float _7870 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _7871 = -_7870;
	float _7872 = _7871 * denom_inv_7528;
	float _7873 = exp(_7872);
	float _7874 = _7867 + _7873;
	float _7877 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _7878 = -_7877;
	float _7879 = _7878 * denom_inv_7528;
	float _7880 = exp(_7879);
	float _7881 = _7874 + _7880;
	float _7884 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _7885 = -_7884;
	float _7886 = _7885 * denom_inv_7528;
	float _7887 = exp(_7886);
	float _7888 = _7881 + _7887;
	float w1adjy_7889 = _7888;
	float _7892 = dot(float2(4.00000000e+00, -2.00000000e+00), float2(4.00000000e+00, -2.00000000e+00));
	float _7893 = -_7892;
	float _7894 = _7893 * denom_inv_7528;
	float _7895 = exp(_7894);
	float _7898 = dot(float2(5.00000000e+00, -2.00000000e+00), float2(5.00000000e+00, -2.00000000e+00));
	float _7899 = -_7898;
	float _7900 = _7899 * denom_inv_7528;
	float _7901 = exp(_7900);
	float _7902 = _7895 + _7901;
	float _7905 = dot(float2(4.00000000e+00, -1.00000000e+00), float2(4.00000000e+00, -1.00000000e+00));
	float _7906 = -_7905;
	float _7907 = _7906 * denom_inv_7528;
	float _7908 = exp(_7907);
	float _7909 = _7902 + _7908;
	float _7912 = dot(float2(5.00000000e+00, -1.00000000e+00), float2(5.00000000e+00, -1.00000000e+00));
	float _7913 = -_7912;
	float _7914 = _7913 * denom_inv_7528;
	float _7915 = exp(_7914);
	float _7916 = _7909 + _7915;
	float w2adjy_7917 = _7916;
	float _7920 = dot(float2(-4.00000000e+00, 0.00000000e+00), float2(-4.00000000e+00, 0.00000000e+00));
	float _7921 = -_7920;
	float _7922 = _7921 * denom_inv_7528;
	float _7923 = exp(_7922);
	float _7926 = dot(float2(-3.00000000e+00, 0.00000000e+00), float2(-3.00000000e+00, 0.00000000e+00));
	float _7927 = -_7926;
	float _7928 = _7927 * denom_inv_7528;
	float _7929 = exp(_7928);
	float _7930 = _7923 + _7929;
	float _7933 = dot(float2(-4.00000000e+00, 1.00000000e+00), float2(-4.00000000e+00, 1.00000000e+00));
	float _7934 = -_7933;
	float _7935 = _7934 * denom_inv_7528;
	float _7936 = exp(_7935);
	float _7937 = _7930 + _7936;
	float _7940 = dot(float2(-3.00000000e+00, 1.00000000e+00), float2(-3.00000000e+00, 1.00000000e+00));
	float _7941 = -_7940;
	float _7942 = _7941 * denom_inv_7528;
	float _7943 = exp(_7942);
	float _7944 = _7937 + _7943;
	float w1adjx_7945 = _7944;
	float _7948 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _7949 = -_7948;
	float _7950 = _7949 * denom_inv_7528;
	float _7951 = exp(_7950);
	float _7954 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _7955 = -_7954;
	float _7956 = _7955 * denom_inv_7528;
	float _7957 = exp(_7956);
	float _7958 = _7951 + _7957;
	float _7961 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _7962 = -_7961;
	float _7963 = _7962 * denom_inv_7528;
	float _7964 = exp(_7963);
	float _7965 = _7958 + _7964;
	float _7968 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _7969 = -_7968;
	float _7970 = _7969 * denom_inv_7528;
	float _7971 = exp(_7970);
	float _7972 = _7965 + _7971;
	float w0adjx_7973 = _7972;
	float _7976 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _7977 = -_7976;
	float _7978 = _7977 * denom_inv_7528;
	float _7979 = exp(_7978);
	float _7982 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _7983 = -_7982;
	float _7984 = _7983 * denom_inv_7528;
	float _7985 = exp(_7984);
	float _7986 = _7979 + _7985;
	float _7989 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _7990 = -_7989;
	float _7991 = _7990 * denom_inv_7528;
	float _7992 = exp(_7991);
	float _7993 = _7986 + _7992;
	float _7996 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _7997 = -_7996;
	float _7998 = _7997 * denom_inv_7528;
	float _7999 = exp(_7998);
	float _8000 = _7993 + _7999;
	float w0curr_8001 = _8000;
	float _8004 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _8005 = -_8004;
	float _8006 = _8005 * denom_inv_7528;
	float _8007 = exp(_8006);
	float _8010 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _8011 = -_8010;
	float _8012 = _8011 * denom_inv_7528;
	float _8013 = exp(_8012);
	float _8014 = _8007 + _8013;
	float _8017 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _8018 = -_8017;
	float _8019 = _8018 * denom_inv_7528;
	float _8020 = exp(_8019);
	float _8021 = _8014 + _8020;
	float _8024 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _8025 = -_8024;
	float _8026 = _8025 * denom_inv_7528;
	float _8027 = exp(_8026);
	float _8028 = _8021 + _8027;
	float w1curr_8029 = _8028;
	float _8032 = dot(float2(4.00000000e+00, 0.00000000e+00), float2(4.00000000e+00, 0.00000000e+00));
	float _8033 = -_8032;
	float _8034 = _8033 * denom_inv_7528;
	float _8035 = exp(_8034);
	float _8038 = dot(float2(5.00000000e+00, 0.00000000e+00), float2(5.00000000e+00, 0.00000000e+00));
	float _8039 = -_8038;
	float _8040 = _8039 * denom_inv_7528;
	float _8041 = exp(_8040);
	float _8042 = _8035 + _8041;
	float _8045 = dot(float2(4.00000000e+00, 1.00000000e+00), float2(4.00000000e+00, 1.00000000e+00));
	float _8046 = -_8045;
	float _8047 = _8046 * denom_inv_7528;
	float _8048 = exp(_8047);
	float _8049 = _8042 + _8048;
	float _8052 = dot(float2(5.00000000e+00, 1.00000000e+00), float2(5.00000000e+00, 1.00000000e+00));
	float _8053 = -_8052;
	float _8054 = _8053 * denom_inv_7528;
	float _8055 = exp(_8054);
	float _8056 = _8049 + _8055;
	float w2curr_8057 = _8056;
	float _8060 = dot(float2(-4.00000000e+00, 2.00000000e+00), float2(-4.00000000e+00, 2.00000000e+00));
	float _8061 = -_8060;
	float _8062 = _8061 * denom_inv_7528;
	float _8063 = exp(_8062);
	float _8066 = dot(float2(-3.00000000e+00, 2.00000000e+00), float2(-3.00000000e+00, 2.00000000e+00));
	float _8067 = -_8066;
	float _8068 = _8067 * denom_inv_7528;
	float _8069 = exp(_8068);
	float _8070 = _8063 + _8069;
	float _8073 = dot(float2(-4.00000000e+00, 3.00000000e+00), float2(-4.00000000e+00, 3.00000000e+00));
	float _8074 = -_8073;
	float _8075 = _8074 * denom_inv_7528;
	float _8076 = exp(_8075);
	float _8077 = _8070 + _8076;
	float _8080 = dot(float2(-3.00000000e+00, 3.00000000e+00), float2(-3.00000000e+00, 3.00000000e+00));
	float _8081 = -_8080;
	float _8082 = _8081 * denom_inv_7528;
	float _8083 = exp(_8082);
	float _8084 = _8077 + _8083;
	float w4adjx_8085 = _8084;
	float _8088 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _8089 = -_8088;
	float _8090 = _8089 * denom_inv_7528;
	float _8091 = exp(_8090);
	float _8094 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _8095 = -_8094;
	float _8096 = _8095 * denom_inv_7528;
	float _8097 = exp(_8096);
	float _8098 = _8091 + _8097;
	float _8101 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _8102 = -_8101;
	float _8103 = _8102 * denom_inv_7528;
	float _8104 = exp(_8103);
	float _8105 = _8098 + _8104;
	float _8108 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _8109 = -_8108;
	float _8110 = _8109 * denom_inv_7528;
	float _8111 = exp(_8110);
	float _8112 = _8105 + _8111;
	float w3adjx_8113 = _8112;
	float _8116 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _8117 = -_8116;
	float _8118 = _8117 * denom_inv_7528;
	float _8119 = exp(_8118);
	float _8122 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _8123 = -_8122;
	float _8124 = _8123 * denom_inv_7528;
	float _8125 = exp(_8124);
	float _8126 = _8119 + _8125;
	float _8129 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _8130 = -_8129;
	float _8131 = _8130 * denom_inv_7528;
	float _8132 = exp(_8131);
	float _8133 = _8126 + _8132;
	float _8136 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _8137 = -_8136;
	float _8138 = _8137 * denom_inv_7528;
	float _8139 = exp(_8138);
	float _8140 = _8133 + _8139;
	float w3curr_8141 = _8140;
	float _8144 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _8145 = -_8144;
	float _8146 = _8145 * denom_inv_7528;
	float _8147 = exp(_8146);
	float _8150 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _8151 = -_8150;
	float _8152 = _8151 * denom_inv_7528;
	float _8153 = exp(_8152);
	float _8154 = _8147 + _8153;
	float _8157 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _8158 = -_8157;
	float _8159 = _8158 * denom_inv_7528;
	float _8160 = exp(_8159);
	float _8161 = _8154 + _8160;
	float _8164 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _8165 = -_8164;
	float _8166 = _8165 * denom_inv_7528;
	float _8167 = exp(_8166);
	float _8168 = _8161 + _8167;
	float w4curr_8169 = _8168;
	float _8172 = dot(float2(4.00000000e+00, 2.00000000e+00), float2(4.00000000e+00, 2.00000000e+00));
	float _8173 = -_8172;
	float _8174 = _8173 * denom_inv_7528;
	float _8175 = exp(_8174);
	float _8178 = dot(float2(5.00000000e+00, 2.00000000e+00), float2(5.00000000e+00, 2.00000000e+00));
	float _8179 = -_8178;
	float _8180 = _8179 * denom_inv_7528;
	float _8181 = exp(_8180);
	float _8182 = _8175 + _8181;
	float _8185 = dot(float2(4.00000000e+00, 3.00000000e+00), float2(4.00000000e+00, 3.00000000e+00));
	float _8186 = -_8185;
	float _8187 = _8186 * denom_inv_7528;
	float _8188 = exp(_8187);
	float _8189 = _8182 + _8188;
	float _8192 = dot(float2(5.00000000e+00, 3.00000000e+00), float2(5.00000000e+00, 3.00000000e+00));
	float _8193 = -_8192;
	float _8194 = _8193 * denom_inv_7528;
	float _8195 = exp(_8194);
	float _8196 = _8189 + _8195;
	float w5curr_8197 = _8196;
	float _8200 = dot(float2(-4.00000000e+00, 4.00000000e+00), float2(-4.00000000e+00, 4.00000000e+00));
	float _8201 = -_8200;
	float _8202 = _8201 * denom_inv_7528;
	float _8203 = exp(_8202);
	float _8206 = dot(float2(-3.00000000e+00, 4.00000000e+00), float2(-3.00000000e+00, 4.00000000e+00));
	float _8207 = -_8206;
	float _8208 = _8207 * denom_inv_7528;
	float _8209 = exp(_8208);
	float _8210 = _8203 + _8209;
	float _8213 = dot(float2(-4.00000000e+00, 5.00000000e+00), float2(-4.00000000e+00, 5.00000000e+00));
	float _8214 = -_8213;
	float _8215 = _8214 * denom_inv_7528;
	float _8216 = exp(_8215);
	float _8217 = _8210 + _8216;
	float _8220 = dot(float2(-3.00000000e+00, 5.00000000e+00), float2(-3.00000000e+00, 5.00000000e+00));
	float _8221 = -_8220;
	float _8222 = _8221 * denom_inv_7528;
	float _8223 = exp(_8222);
	float _8224 = _8217 + _8223;
	float w7adjx_8225 = _8224;
	float _8228 = dot(float2(-2.00000000e+00, 4.00000000e+00), float2(-2.00000000e+00, 4.00000000e+00));
	float _8229 = -_8228;
	float _8230 = _8229 * denom_inv_7528;
	float _8231 = exp(_8230);
	float _8234 = dot(float2(-1.00000000e+00, 4.00000000e+00), float2(-1.00000000e+00, 4.00000000e+00));
	float _8235 = -_8234;
	float _8236 = _8235 * denom_inv_7528;
	float _8237 = exp(_8236);
	float _8238 = _8231 + _8237;
	float _8241 = dot(float2(-2.00000000e+00, 5.00000000e+00), float2(-2.00000000e+00, 5.00000000e+00));
	float _8242 = -_8241;
	float _8243 = _8242 * denom_inv_7528;
	float _8244 = exp(_8243);
	float _8245 = _8238 + _8244;
	float _8248 = dot(float2(-1.00000000e+00, 5.00000000e+00), float2(-1.00000000e+00, 5.00000000e+00));
	float _8249 = -_8248;
	float _8250 = _8249 * denom_inv_7528;
	float _8251 = exp(_8250);
	float _8252 = _8245 + _8251;
	float w6adjx_8253 = _8252;
	float _8256 = dot(float2(0.00000000e+00, 4.00000000e+00), float2(0.00000000e+00, 4.00000000e+00));
	float _8257 = -_8256;
	float _8258 = _8257 * denom_inv_7528;
	float _8259 = exp(_8258);
	float _8262 = dot(float2(1.00000000e+00, 4.00000000e+00), float2(1.00000000e+00, 4.00000000e+00));
	float _8263 = -_8262;
	float _8264 = _8263 * denom_inv_7528;
	float _8265 = exp(_8264);
	float _8266 = _8259 + _8265;
	float _8269 = dot(float2(0.00000000e+00, 5.00000000e+00), float2(0.00000000e+00, 5.00000000e+00));
	float _8270 = -_8269;
	float _8271 = _8270 * denom_inv_7528;
	float _8272 = exp(_8271);
	float _8273 = _8266 + _8272;
	float _8276 = dot(float2(1.00000000e+00, 5.00000000e+00), float2(1.00000000e+00, 5.00000000e+00));
	float _8277 = -_8276;
	float _8278 = _8277 * denom_inv_7528;
	float _8279 = exp(_8278);
	float _8280 = _8273 + _8279;
	float w6curr_8281 = _8280;
	float _8284 = dot(float2(2.00000000e+00, 4.00000000e+00), float2(2.00000000e+00, 4.00000000e+00));
	float _8285 = -_8284;
	float _8286 = _8285 * denom_inv_7528;
	float _8287 = exp(_8286);
	float _8290 = dot(float2(3.00000000e+00, 4.00000000e+00), float2(3.00000000e+00, 4.00000000e+00));
	float _8291 = -_8290;
	float _8292 = _8291 * denom_inv_7528;
	float _8293 = exp(_8292);
	float _8294 = _8287 + _8293;
	float _8297 = dot(float2(2.00000000e+00, 5.00000000e+00), float2(2.00000000e+00, 5.00000000e+00));
	float _8298 = -_8297;
	float _8299 = _8298 * denom_inv_7528;
	float _8300 = exp(_8299);
	float _8301 = _8294 + _8300;
	float _8304 = dot(float2(3.00000000e+00, 5.00000000e+00), float2(3.00000000e+00, 5.00000000e+00));
	float _8305 = -_8304;
	float _8306 = _8305 * denom_inv_7528;
	float _8307 = exp(_8306);
	float _8308 = _8301 + _8307;
	float w7curr_8309 = _8308;
	float _8312 = dot(float2(4.00000000e+00, 4.00000000e+00), float2(4.00000000e+00, 4.00000000e+00));
	float _8313 = -_8312;
	float _8314 = _8313 * denom_inv_7528;
	float _8315 = exp(_8314);
	float _8318 = dot(float2(5.00000000e+00, 4.00000000e+00), float2(5.00000000e+00, 4.00000000e+00));
	float _8319 = -_8318;
	float _8320 = _8319 * denom_inv_7528;
	float _8321 = exp(_8320);
	float _8322 = _8315 + _8321;
	float _8325 = dot(float2(4.00000000e+00, 5.00000000e+00), float2(4.00000000e+00, 5.00000000e+00));
	float _8326 = -_8325;
	float _8327 = _8326 * denom_inv_7528;
	float _8328 = exp(_8327);
	float _8329 = _8322 + _8328;
	float _8332 = dot(float2(5.00000000e+00, 5.00000000e+00), float2(5.00000000e+00, 5.00000000e+00));
	float _8333 = -_8332;
	float _8334 = _8333 * denom_inv_7528;
	float _8335 = exp(_8334);
	float _8336 = _8329 + _8335;
	float w8curr_8337 = _8336;
	float _8338 = w0curr_8001 + w1curr_8029;
	float _8339 = _8338 + w2curr_8057;
	float _8340 = _8339 + w3curr_8141;
	float _8341 = _8340 + w4curr_8169;
	float _8342 = _8341 + w5curr_8197;
	float _8343 = _8342 + w6curr_8281;
	float _8344 = _8343 + w7curr_8309;
	float _8345 = _8344 + w8curr_8337;
	float _8346 = _8345 + w0adjx_7973;
	float _8347 = _8346 + w1adjx_7945;
	float _8348 = _8347 + w3adjx_8113;
	float _8349 = _8348 + w4adjx_8085;
	float _8350 = _8349 + w6adjx_8253;
	float _8351 = _8350 + w7adjx_8225;
	float _8352 = _8351 + w0adjy_7861;
	float _8353 = _8352 + w1adjy_7889;
	float _8354 = _8353 + w2adjy_7917;
	float _8355 = _8354 + w3adjy_7721;
	float _8356 = _8355 + w4adjy_7749;
	float _8357 = _8356 + w5adjy_7777;
	float _8358 = _8357 + w0diag_7833;
	float _8359 = _8358 + w1diag_7805;
	float _8360 = _8359 + w3diag_7693;
	float _8361 = _8360 + w4diag_7665;
	float _8363 = 1.00000000e+00 / _8361;
	float weight_sum_inv_8364 = _8363;
	float4 _8365 = float4(w0curr_8001, w0adjx_7973, w0adjy_7861, w0diag_7833);
	float4 w0_8366 = _8365;
	float4 _8367 = float4(w1curr_8029, w1adjx_7945, w1adjy_7889, w1diag_7805);
	float4 w1_8368 = _8367;
	float4 _8369 = float4(w3curr_8141, w3adjx_8113, w3adjy_7721, w3diag_7693);
	float4 w3_8370 = _8369;
	float4 _8371 = float4(w4curr_8169, w4adjx_8085, w4adjy_7749, w4diag_7665);
	float4 w4_8372 = _8371;
	float4 _8373 = float4(w2curr_8057, w2adjy_7917, w5curr_8197, w5adjy_7777);
	float4 w2and5 = _8373;
	float4 _8375 = float4(w6curr_8281, w6adjx_8253, w7curr_8309, w7adjx_8225);
	float4 w6and7 = _8375;
	float2 _8378 = dxdy * quad_vector.xy;
	float2 dxdy_curr_8379 = _8378;
	float2 _8380 = dxdy_curr_8379 * sample0curr_texel_offset_7589;
	float2 _8382 = tex_uv.xy + _8380;
	float2 _8383;
	float _8384;
	_8383 = _8382;
	_8384 = input_gamma;
	float4 _8385 = F__tex2D_linearize(tex, _8383, _8384);
	float3 sample0curr_8387 = _8385.xyz;
	float2 _8388 = dxdy_curr_8379 * sample0adjx_texel_offset_7594;
	float2 _8390 = tex_uv.xy + _8388;
	float2 _8391;
	float _8392;
	_8391 = _8390;
	_8392 = input_gamma;
	float4 _8393 = F__tex2D_linearize(tex, _8391, _8392);
	float3 sample0adjx_8395 = _8393.xyz;
	float2 _8396 = dxdy_curr_8379 * sample0adjy_texel_offset_7599;
	float2 _8398 = tex_uv.xy + _8396;
	float2 _8399;
	float _8400;
	_8399 = _8398;
	_8400 = input_gamma;
	float4 _8401 = F__tex2D_linearize(tex, _8399, _8400);
	float3 sample0adjy_8403 = _8401.xyz;
	float2 _8404 = dxdy_curr_8379 * sample0diag_texel_offset_7605;
	float2 _8406 = tex_uv.xy + _8404;
	float2 _8407;
	float _8408;
	_8407 = _8406;
	_8408 = input_gamma;
	float4 _8409 = F__tex2D_linearize(tex, _8407, _8408);
	float3 sample0diag_8411 = _8409.xyz;
	float2 _8412 = dxdy_curr_8379 * sample1_texel_offset_7609;
	float2 _8413;
	_8413 = _8412;
	float4 _8414 = F__uv2_to_uv4(_8413);
	float4 _8415 = tex_uv + _8414;
	float4 _8416;
	float _8417;
	_8416 = _8415;
	_8417 = input_gamma;
	float4 _8418 = F__tex2Dlod_linearize(tex, _8416, _8417);
	float3 sample1curr_8420 = _8418.xyz;
	float2 _8421 = dxdy_curr_8379 * sample2_texel_offset_7613;
	float2 _8422;
	_8422 = _8421;
	float4 _8423 = F__uv2_to_uv4(_8422);
	float4 _8424 = tex_uv + _8423;
	float4 _8425;
	float _8426;
	_8425 = _8424;
	_8426 = input_gamma;
	float4 _8427 = F__tex2Dlod_linearize(tex, _8425, _8426);
	float3 sample2curr_8429 = _8427.xyz;
	float2 _8430 = dxdy_curr_8379 * sample3_texel_offset_7617;
	float2 _8431;
	_8431 = _8430;
	float4 _8432 = F__uv2_to_uv4(_8431);
	float4 _8433 = tex_uv + _8432;
	float4 _8434;
	float _8435;
	_8434 = _8433;
	_8435 = input_gamma;
	float4 _8436 = F__tex2Dlod_linearize(tex, _8434, _8435);
	float3 sample3curr_8438 = _8436.xyz;
	float2 _8439 = dxdy_curr_8379 * sample4_texel_offset_7621;
	float2 _8440;
	_8440 = _8439;
	float4 _8441 = F__uv2_to_uv4(_8440);
	float4 _8442 = tex_uv + _8441;
	float4 _8443;
	float _8444;
	_8443 = _8442;
	_8444 = input_gamma;
	float4 _8445 = F__tex2Dlod_linearize(tex, _8443, _8444);
	float3 sample4curr_8447 = _8445.xyz;
	float2 _8448 = dxdy_curr_8379 * sample5_texel_offset_7625;
	float2 _8449;
	_8449 = _8448;
	float4 _8450 = F__uv2_to_uv4(_8449);
	float4 _8451 = tex_uv + _8450;
	float4 _8452;
	float _8453;
	_8452 = _8451;
	_8453 = input_gamma;
	float4 _8454 = F__tex2Dlod_linearize(tex, _8452, _8453);
	float3 sample5curr_8456 = _8454.xyz;
	float2 _8457 = dxdy_curr_8379 * sample6_texel_offset_7629;
	float2 _8458;
	_8458 = _8457;
	float4 _8459 = F__uv2_to_uv4(_8458);
	float4 _8460 = tex_uv + _8459;
	float4 _8461;
	float _8462;
	_8461 = _8460;
	_8462 = input_gamma;
	float4 _8463 = F__tex2Dlod_linearize(tex, _8461, _8462);
	float3 sample6curr_8465 = _8463.xyz;
	float2 _8466 = dxdy_curr_8379 * sample7_texel_offset_7633;
	float2 _8467;
	_8467 = _8466;
	float4 _8468 = F__uv2_to_uv4(_8467);
	float4 _8469 = tex_uv + _8468;
	float4 _8470;
	float _8471;
	_8470 = _8469;
	_8471 = input_gamma;
	float4 _8472 = F__tex2Dlod_linearize(tex, _8470, _8471);
	float3 sample7curr_8474 = _8472.xyz;
	float2 _8475 = dxdy_curr_8379 * sample8_texel_offset_7637;
	float2 _8476;
	_8476 = _8475;
	float4 _8477 = F__uv2_to_uv4(_8476);
	float4 _8478 = tex_uv + _8477;
	float4 _8479;
	float _8480;
	_8479 = _8478;
	_8480 = input_gamma;
	float4 _8481 = F__tex2Dlod_linearize(tex, _8479, _8480);
	float3 sample8curr_8483 = _8481.xyz;
	float3 sample1adjx_8485 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1adjy_8487 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1diag_8489 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjx_8491 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjy_8493 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2diag_8495 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjx_8497 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjy_8499 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3diag_8501 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4adjx_8503 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4adjy_8505 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample4diag_8507 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5adjx_8509 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5adjy_8511 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample5diag_8513 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6adjx_8515 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6adjy_8517 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample6diag_8519 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7adjx_8521 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7adjy_8523 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample7diag_8525 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _8526;
	float3 _8527;
	float3 _8528;
	float3 _8529;
	float3 _8530;
	_8526 = quad_vector;
	_8527 = sample1curr_8420;
	F__quad_gather(_8526, _8527, _8528, _8529, _8530);
	sample1adjx_8485 = _8528;
	sample1adjy_8487 = _8529;
	sample1diag_8489 = _8530;
	float4 _8532;
	float3 _8533;
	float3 _8534;
	float3 _8535;
	float3 _8536;
	_8532 = quad_vector;
	_8533 = sample2curr_8429;
	F__quad_gather(_8532, _8533, _8534, _8535, _8536);
	sample2adjx_8491 = _8534;
	sample2adjy_8493 = _8535;
	sample2diag_8495 = _8536;
	float4 _8538;
	float3 _8539;
	float3 _8540;
	float3 _8541;
	float3 _8542;
	_8538 = quad_vector;
	_8539 = sample3curr_8438;
	F__quad_gather(_8538, _8539, _8540, _8541, _8542);
	sample3adjx_8497 = _8540;
	sample3adjy_8499 = _8541;
	sample3diag_8501 = _8542;
	float4 _8544;
	float3 _8545;
	float3 _8546;
	float3 _8547;
	float3 _8548;
	_8544 = quad_vector;
	_8545 = sample4curr_8447;
	F__quad_gather(_8544, _8545, _8546, _8547, _8548);
	sample4adjx_8503 = _8546;
	sample4adjy_8505 = _8547;
	sample4diag_8507 = _8548;
	float4 _8550;
	float3 _8551;
	float3 _8552;
	float3 _8553;
	float3 _8554;
	_8550 = quad_vector;
	_8551 = sample5curr_8456;
	F__quad_gather(_8550, _8551, _8552, _8553, _8554);
	sample5adjx_8509 = _8552;
	sample5adjy_8511 = _8553;
	sample5diag_8513 = _8554;
	float4 _8556;
	float3 _8557;
	float3 _8558;
	float3 _8559;
	float3 _8560;
	_8556 = quad_vector;
	_8557 = sample6curr_8465;
	F__quad_gather(_8556, _8557, _8558, _8559, _8560);
	sample6adjx_8515 = _8558;
	sample6adjy_8517 = _8559;
	sample6diag_8519 = _8560;
	float4 _8562;
	float3 _8563;
	float3 _8564;
	float3 _8565;
	float3 _8566;
	_8562 = quad_vector;
	_8563 = sample7curr_8474;
	F__quad_gather(_8562, _8563, _8564, _8565, _8566);
	sample7adjx_8521 = _8564;
	sample7adjy_8523 = _8565;
	sample7diag_8525 = _8566;
	float3 sum_8569 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _8582 = float4x3(sample0curr_8387.x, sample0curr_8387.y, sample0curr_8387.z, sample0adjx_8395.x, sample0adjx_8395.y, sample0adjx_8395.z, sample0adjy_8403.x, sample0adjy_8403.y, sample0adjy_8403.z, sample0diag_8411.x, sample0diag_8411.y, sample0diag_8411.z);
	float3 _8583 = mul(w0_8366, _8582);
	float3 _8584 = sum_8569 + _8583;
	sum_8569 = _8584;
	float4x3 _8597 = float4x3(sample1curr_8420.x, sample1curr_8420.y, sample1curr_8420.z, sample1adjx_8485.x, sample1adjx_8485.y, sample1adjx_8485.z, sample1adjy_8487.x, sample1adjy_8487.y, sample1adjy_8487.z, sample1diag_8489.x, sample1diag_8489.y, sample1diag_8489.z);
	float3 _8598 = mul(w1_8368, _8597);
	float3 _8599 = sum_8569 + _8598;
	sum_8569 = _8599;
	float4x3 _8612 = float4x3(sample3curr_8438.x, sample3curr_8438.y, sample3curr_8438.z, sample3adjx_8497.x, sample3adjx_8497.y, sample3adjx_8497.z, sample3adjy_8499.x, sample3adjy_8499.y, sample3adjy_8499.z, sample3diag_8501.x, sample3diag_8501.y, sample3diag_8501.z);
	float3 _8613 = mul(w3_8370, _8612);
	float3 _8614 = sum_8569 + _8613;
	sum_8569 = _8614;
	float4x3 _8627 = float4x3(sample4curr_8447.x, sample4curr_8447.y, sample4curr_8447.z, sample4adjx_8503.x, sample4adjx_8503.y, sample4adjx_8503.z, sample4adjy_8505.x, sample4adjy_8505.y, sample4adjy_8505.z, sample4diag_8507.x, sample4diag_8507.y, sample4diag_8507.z);
	float3 _8628 = mul(w4_8372, _8627);
	float3 _8629 = sum_8569 + _8628;
	sum_8569 = _8629;
	float4x3 _8642 = float4x3(sample2curr_8429.x, sample2curr_8429.y, sample2curr_8429.z, sample2adjy_8493.x, sample2adjy_8493.y, sample2adjy_8493.z, sample5curr_8456.x, sample5curr_8456.y, sample5curr_8456.z, sample5adjy_8511.x, sample5adjy_8511.y, sample5adjy_8511.z);
	float3 _8643 = mul(w2and5, _8642);
	float3 _8644 = sum_8569 + _8643;
	sum_8569 = _8644;
	float4x3 _8657 = float4x3(sample6curr_8465.x, sample6curr_8465.y, sample6curr_8465.z, sample6adjx_8515.x, sample6adjx_8515.y, sample6adjx_8515.z, sample7curr_8474.x, sample7curr_8474.y, sample7curr_8474.z, sample7adjx_8521.x, sample7adjx_8521.y, sample7adjx_8521.z);
	float3 _8658 = mul(w6and7, _8657);
	float3 _8659 = sum_8569 + _8658;
	sum_8569 = _8659;
	float3 _8661 = w8curr_8337.xxx * sample8curr_8483;
	float3 _8662 = sum_8569 + _8661;
	sum_8569 = _8662;
	float3 _8664 = sum_8569 * weight_sum_inv_8364.xxx;
	return _8664;
}
float3 F__tex2Dblur8x8shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _8673 = sigma * sigma;
	float _8675 = 5.00000000e-01 / _8673;
	float denom_inv_8676 = _8675;
	float _8678 = -2.50000000e-01 * denom_inv_8676;
	float _8679 = exp(_8678);
	float w0_5off_8680 = _8679;
	float _8682 = -1.00000000e+00 * denom_inv_8676;
	float _8683 = exp(_8682);
	float w1off_8684 = _8683;
	float _8686 = -2.25000000e+00 * denom_inv_8676;
	float _8687 = exp(_8686);
	float w1_5off_8688 = _8687;
	float _8690 = -4.00000000e+00 * denom_inv_8676;
	float _8691 = exp(_8690);
	float w2off_8692 = _8691;
	float _8694 = -6.25000000e+00 * denom_inv_8676;
	float _8695 = exp(_8694);
	float w2_5off_8696 = _8695;
	float _8698 = -1.22500000e+01 * denom_inv_8676;
	float _8699 = exp(_8698);
	float w3_5off_8700 = _8699;
	float _8701 = w0_5off_8680 + w1_5off_8688;
	float _8702 = w1_5off_8688 / _8701;
	float _8705 = lerp(_8702, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_8706 = _8705;
	float _8707 = w2_5off_8696 + w3_5off_8700;
	float _8708 = w3_5off_8700 / _8707;
	float _8711 = lerp(_8708, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_8712 = _8711;
	float _8714 = 1.00000000e+00 + w1off_8684;
	float _8715 = w1off_8684 / _8714;
	float texel0to1ratio_nearest_8716 = _8715;
	float _8717 = w1off_8684 + w2off_8692;
	float _8718 = w2off_8692 / _8717;
	float texel1to2ratio_nearest_8719 = _8718;
	float2 _8720 = float2(texel0to1ratio_nearest_8716, texel0to1ratio_nearest_8716);
	float2 _8722 = float2(0.00000000e+00, 0.00000000e+00) + _8720;
	float2 sample0curr_texel_offset_8723 = _8722;
	float _8724 = -texel1to2ratio_nearest_8719;
	float2 _8725 = float2(_8724, texel0to1ratio_nearest_8716);
	float2 _8727 = float2(-1.00000000e+00, 0.00000000e+00) + _8725;
	float2 sample0adjx_texel_offset_8728 = _8727;
	float _8729 = -texel1to2ratio_nearest_8719;
	float2 _8730 = float2(texel0to1ratio_nearest_8716, _8729);
	float2 _8732 = float2(0.00000000e+00, -1.00000000e+00) + _8730;
	float2 sample0adjy_texel_offset_8733 = _8732;
	float _8734 = -texel1to2ratio_nearest_8719;
	float _8735 = -texel1to2ratio_nearest_8719;
	float2 _8736 = float2(_8734, _8735);
	float2 _8738 = float2(-1.00000000e+00, -1.00000000e+00) + _8736;
	float2 sample0diag_texel_offset_8739 = _8738;
	float2 _8740 = float2(texel2to3ratio_8712, texel0to1ratio_8706);
	float2 _8742 = float2(2.00000000e+00, 0.00000000e+00) + _8740;
	float2 sample1_texel_offset_8743 = _8742;
	float2 _8744 = float2(texel0to1ratio_8706, texel2to3ratio_8712);
	float2 _8746 = float2(0.00000000e+00, 2.00000000e+00) + _8744;
	float2 sample2_texel_offset_8747 = _8746;
	float2 _8748 = float2(texel2to3ratio_8712, texel2to3ratio_8712);
	float2 _8750 = float2(2.00000000e+00, 2.00000000e+00) + _8748;
	float2 sample3_texel_offset_8751 = _8750;
	float _8754 = dot(float2(-4.00000000e+00, -4.00000000e+00), float2(-4.00000000e+00, -4.00000000e+00));
	float _8755 = -_8754;
	float _8756 = _8755 * denom_inv_8676;
	float _8757 = exp(_8756);
	float _8760 = dot(float2(-3.00000000e+00, -4.00000000e+00), float2(-3.00000000e+00, -4.00000000e+00));
	float _8761 = -_8760;
	float _8762 = _8761 * denom_inv_8676;
	float _8763 = exp(_8762);
	float _8764 = _8757 + _8763;
	float _8767 = dot(float2(-4.00000000e+00, -3.00000000e+00), float2(-4.00000000e+00, -3.00000000e+00));
	float _8768 = -_8767;
	float _8769 = _8768 * denom_inv_8676;
	float _8770 = exp(_8769);
	float _8771 = _8764 + _8770;
	float _8774 = dot(float2(-3.00000000e+00, -3.00000000e+00), float2(-3.00000000e+00, -3.00000000e+00));
	float _8775 = -_8774;
	float _8776 = _8775 * denom_inv_8676;
	float _8777 = exp(_8776);
	float _8778 = _8771 + _8777;
	float w3diag_8779 = _8778;
	float _8782 = dot(float2(-2.00000000e+00, -4.00000000e+00), float2(-2.00000000e+00, -4.00000000e+00));
	float _8783 = -_8782;
	float _8784 = _8783 * denom_inv_8676;
	float _8785 = exp(_8784);
	float _8788 = dot(float2(-1.00000000e+00, -4.00000000e+00), float2(-1.00000000e+00, -4.00000000e+00));
	float _8789 = -_8788;
	float _8790 = _8789 * denom_inv_8676;
	float _8791 = exp(_8790);
	float _8792 = _8785 + _8791;
	float _8795 = dot(float2(-2.00000000e+00, -3.00000000e+00), float2(-2.00000000e+00, -3.00000000e+00));
	float _8796 = -_8795;
	float _8797 = _8796 * denom_inv_8676;
	float _8798 = exp(_8797);
	float _8799 = _8792 + _8798;
	float _8802 = dot(float2(-1.00000000e+00, -3.00000000e+00), float2(-1.00000000e+00, -3.00000000e+00));
	float _8803 = -_8802;
	float _8804 = _8803 * denom_inv_8676;
	float _8805 = exp(_8804);
	float _8806 = _8799 + _8805;
	float w2diag_8807 = _8806;
	float _8810 = dot(float2(0.00000000e+00, -4.00000000e+00), float2(0.00000000e+00, -4.00000000e+00));
	float _8811 = -_8810;
	float _8812 = _8811 * denom_inv_8676;
	float _8813 = exp(_8812);
	float _8816 = dot(float2(1.00000000e+00, -4.00000000e+00), float2(1.00000000e+00, -4.00000000e+00));
	float _8817 = -_8816;
	float _8818 = _8817 * denom_inv_8676;
	float _8819 = exp(_8818);
	float _8820 = _8813 + _8819;
	float _8823 = dot(float2(0.00000000e+00, -3.00000000e+00), float2(0.00000000e+00, -3.00000000e+00));
	float _8824 = -_8823;
	float _8825 = _8824 * denom_inv_8676;
	float _8826 = exp(_8825);
	float _8827 = _8820 + _8826;
	float _8830 = dot(float2(1.00000000e+00, -3.00000000e+00), float2(1.00000000e+00, -3.00000000e+00));
	float _8831 = -_8830;
	float _8832 = _8831 * denom_inv_8676;
	float _8833 = exp(_8832);
	float _8834 = _8827 + _8833;
	float w2adjy_8835 = _8834;
	float _8838 = dot(float2(2.00000000e+00, -4.00000000e+00), float2(2.00000000e+00, -4.00000000e+00));
	float _8839 = -_8838;
	float _8840 = _8839 * denom_inv_8676;
	float _8841 = exp(_8840);
	float _8844 = dot(float2(3.00000000e+00, -4.00000000e+00), float2(3.00000000e+00, -4.00000000e+00));
	float _8845 = -_8844;
	float _8846 = _8845 * denom_inv_8676;
	float _8847 = exp(_8846);
	float _8848 = _8841 + _8847;
	float _8851 = dot(float2(2.00000000e+00, -3.00000000e+00), float2(2.00000000e+00, -3.00000000e+00));
	float _8852 = -_8851;
	float _8853 = _8852 * denom_inv_8676;
	float _8854 = exp(_8853);
	float _8855 = _8848 + _8854;
	float _8858 = dot(float2(3.00000000e+00, -3.00000000e+00), float2(3.00000000e+00, -3.00000000e+00));
	float _8859 = -_8858;
	float _8860 = _8859 * denom_inv_8676;
	float _8861 = exp(_8860);
	float _8862 = _8855 + _8861;
	float w3adjy_8863 = _8862;
	float _8866 = dot(float2(-4.00000000e+00, -2.00000000e+00), float2(-4.00000000e+00, -2.00000000e+00));
	float _8867 = -_8866;
	float _8868 = _8867 * denom_inv_8676;
	float _8869 = exp(_8868);
	float _8872 = dot(float2(-3.00000000e+00, -2.00000000e+00), float2(-3.00000000e+00, -2.00000000e+00));
	float _8873 = -_8872;
	float _8874 = _8873 * denom_inv_8676;
	float _8875 = exp(_8874);
	float _8876 = _8869 + _8875;
	float _8879 = dot(float2(-4.00000000e+00, -1.00000000e+00), float2(-4.00000000e+00, -1.00000000e+00));
	float _8880 = -_8879;
	float _8881 = _8880 * denom_inv_8676;
	float _8882 = exp(_8881);
	float _8883 = _8876 + _8882;
	float _8886 = dot(float2(-3.00000000e+00, -1.00000000e+00), float2(-3.00000000e+00, -1.00000000e+00));
	float _8887 = -_8886;
	float _8888 = _8887 * denom_inv_8676;
	float _8889 = exp(_8888);
	float _8890 = _8883 + _8889;
	float w1diag_8891 = _8890;
	float _8894 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _8895 = -_8894;
	float _8896 = _8895 * denom_inv_8676;
	float _8897 = exp(_8896);
	float _8900 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _8901 = -_8900;
	float _8902 = _8901 * denom_inv_8676;
	float _8903 = exp(_8902);
	float _8904 = _8897 + _8903;
	float _8907 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _8908 = -_8907;
	float _8909 = _8908 * denom_inv_8676;
	float _8910 = exp(_8909);
	float _8911 = _8904 + _8910;
	float _8914 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _8915 = -_8914;
	float _8916 = _8915 * denom_inv_8676;
	float _8917 = exp(_8916);
	float _8918 = _8911 + _8917;
	float w0diag_8919 = _8918;
	float _8922 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _8923 = -_8922;
	float _8924 = _8923 * denom_inv_8676;
	float _8925 = exp(_8924);
	float _8928 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _8929 = -_8928;
	float _8930 = _8929 * denom_inv_8676;
	float _8931 = exp(_8930);
	float _8932 = _8925 + _8931;
	float _8935 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _8936 = -_8935;
	float _8937 = _8936 * denom_inv_8676;
	float _8938 = exp(_8937);
	float _8939 = _8932 + _8938;
	float _8942 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _8943 = -_8942;
	float _8944 = _8943 * denom_inv_8676;
	float _8945 = exp(_8944);
	float _8946 = _8939 + _8945;
	float w0adjy_8947 = _8946;
	float _8950 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _8951 = -_8950;
	float _8952 = _8951 * denom_inv_8676;
	float _8953 = exp(_8952);
	float _8956 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _8957 = -_8956;
	float _8958 = _8957 * denom_inv_8676;
	float _8959 = exp(_8958);
	float _8960 = _8953 + _8959;
	float _8963 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _8964 = -_8963;
	float _8965 = _8964 * denom_inv_8676;
	float _8966 = exp(_8965);
	float _8967 = _8960 + _8966;
	float _8970 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _8971 = -_8970;
	float _8972 = _8971 * denom_inv_8676;
	float _8973 = exp(_8972);
	float _8974 = _8967 + _8973;
	float w1adjy_8975 = _8974;
	float _8978 = dot(float2(-4.00000000e+00, 0.00000000e+00), float2(-4.00000000e+00, 0.00000000e+00));
	float _8979 = -_8978;
	float _8980 = _8979 * denom_inv_8676;
	float _8981 = exp(_8980);
	float _8984 = dot(float2(-3.00000000e+00, 0.00000000e+00), float2(-3.00000000e+00, 0.00000000e+00));
	float _8985 = -_8984;
	float _8986 = _8985 * denom_inv_8676;
	float _8987 = exp(_8986);
	float _8988 = _8981 + _8987;
	float _8991 = dot(float2(-4.00000000e+00, 1.00000000e+00), float2(-4.00000000e+00, 1.00000000e+00));
	float _8992 = -_8991;
	float _8993 = _8992 * denom_inv_8676;
	float _8994 = exp(_8993);
	float _8995 = _8988 + _8994;
	float _8998 = dot(float2(-3.00000000e+00, 1.00000000e+00), float2(-3.00000000e+00, 1.00000000e+00));
	float _8999 = -_8998;
	float _9000 = _8999 * denom_inv_8676;
	float _9001 = exp(_9000);
	float _9002 = _8995 + _9001;
	float w1adjx_9003 = _9002;
	float _9006 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _9007 = -_9006;
	float _9008 = _9007 * denom_inv_8676;
	float _9009 = exp(_9008);
	float _9012 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _9013 = -_9012;
	float _9014 = _9013 * denom_inv_8676;
	float _9015 = exp(_9014);
	float _9016 = _9009 + _9015;
	float _9019 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _9020 = -_9019;
	float _9021 = _9020 * denom_inv_8676;
	float _9022 = exp(_9021);
	float _9023 = _9016 + _9022;
	float _9026 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _9027 = -_9026;
	float _9028 = _9027 * denom_inv_8676;
	float _9029 = exp(_9028);
	float _9030 = _9023 + _9029;
	float w0adjx_9031 = _9030;
	float _9034 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _9035 = -_9034;
	float _9036 = _9035 * denom_inv_8676;
	float _9037 = exp(_9036);
	float _9040 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _9041 = -_9040;
	float _9042 = _9041 * denom_inv_8676;
	float _9043 = exp(_9042);
	float _9044 = _9037 + _9043;
	float _9047 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _9048 = -_9047;
	float _9049 = _9048 * denom_inv_8676;
	float _9050 = exp(_9049);
	float _9051 = _9044 + _9050;
	float _9054 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _9055 = -_9054;
	float _9056 = _9055 * denom_inv_8676;
	float _9057 = exp(_9056);
	float _9058 = _9051 + _9057;
	float w0curr_9059 = _9058;
	float _9062 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _9063 = -_9062;
	float _9064 = _9063 * denom_inv_8676;
	float _9065 = exp(_9064);
	float _9068 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _9069 = -_9068;
	float _9070 = _9069 * denom_inv_8676;
	float _9071 = exp(_9070);
	float _9072 = _9065 + _9071;
	float _9075 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _9076 = -_9075;
	float _9077 = _9076 * denom_inv_8676;
	float _9078 = exp(_9077);
	float _9079 = _9072 + _9078;
	float _9082 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _9083 = -_9082;
	float _9084 = _9083 * denom_inv_8676;
	float _9085 = exp(_9084);
	float _9086 = _9079 + _9085;
	float w1curr_9087 = _9086;
	float _9090 = dot(float2(-4.00000000e+00, 2.00000000e+00), float2(-4.00000000e+00, 2.00000000e+00));
	float _9091 = -_9090;
	float _9092 = _9091 * denom_inv_8676;
	float _9093 = exp(_9092);
	float _9096 = dot(float2(-3.00000000e+00, 2.00000000e+00), float2(-3.00000000e+00, 2.00000000e+00));
	float _9097 = -_9096;
	float _9098 = _9097 * denom_inv_8676;
	float _9099 = exp(_9098);
	float _9100 = _9093 + _9099;
	float _9103 = dot(float2(-4.00000000e+00, 3.00000000e+00), float2(-4.00000000e+00, 3.00000000e+00));
	float _9104 = -_9103;
	float _9105 = _9104 * denom_inv_8676;
	float _9106 = exp(_9105);
	float _9107 = _9100 + _9106;
	float _9110 = dot(float2(-3.00000000e+00, 3.00000000e+00), float2(-3.00000000e+00, 3.00000000e+00));
	float _9111 = -_9110;
	float _9112 = _9111 * denom_inv_8676;
	float _9113 = exp(_9112);
	float _9114 = _9107 + _9113;
	float w3adjx_9115 = _9114;
	float _9118 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _9119 = -_9118;
	float _9120 = _9119 * denom_inv_8676;
	float _9121 = exp(_9120);
	float _9124 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _9125 = -_9124;
	float _9126 = _9125 * denom_inv_8676;
	float _9127 = exp(_9126);
	float _9128 = _9121 + _9127;
	float _9131 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _9132 = -_9131;
	float _9133 = _9132 * denom_inv_8676;
	float _9134 = exp(_9133);
	float _9135 = _9128 + _9134;
	float _9138 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _9139 = -_9138;
	float _9140 = _9139 * denom_inv_8676;
	float _9141 = exp(_9140);
	float _9142 = _9135 + _9141;
	float w2adjx_9143 = _9142;
	float _9146 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _9147 = -_9146;
	float _9148 = _9147 * denom_inv_8676;
	float _9149 = exp(_9148);
	float _9152 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _9153 = -_9152;
	float _9154 = _9153 * denom_inv_8676;
	float _9155 = exp(_9154);
	float _9156 = _9149 + _9155;
	float _9159 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _9160 = -_9159;
	float _9161 = _9160 * denom_inv_8676;
	float _9162 = exp(_9161);
	float _9163 = _9156 + _9162;
	float _9166 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _9167 = -_9166;
	float _9168 = _9167 * denom_inv_8676;
	float _9169 = exp(_9168);
	float _9170 = _9163 + _9169;
	float w2curr_9171 = _9170;
	float _9174 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _9175 = -_9174;
	float _9176 = _9175 * denom_inv_8676;
	float _9177 = exp(_9176);
	float _9180 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _9181 = -_9180;
	float _9182 = _9181 * denom_inv_8676;
	float _9183 = exp(_9182);
	float _9184 = _9177 + _9183;
	float _9187 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _9188 = -_9187;
	float _9189 = _9188 * denom_inv_8676;
	float _9190 = exp(_9189);
	float _9191 = _9184 + _9190;
	float _9194 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _9195 = -_9194;
	float _9196 = _9195 * denom_inv_8676;
	float _9197 = exp(_9196);
	float _9198 = _9191 + _9197;
	float w3curr_9199 = _9198;
	float4 _9200 = float4(w0curr_9059, w0adjx_9031, w0adjy_8947, w0diag_8919);
	float4 w0_9201 = _9200;
	float4 _9202 = float4(w1curr_9087, w1adjx_9003, w1adjy_8975, w1diag_8891);
	float4 w1_9203 = _9202;
	float4 _9204 = float4(w2curr_9171, w2adjx_9143, w2adjy_8835, w2diag_8807);
	float4 w2_9205 = _9204;
	float4 _9206 = float4(w3curr_9199, w3adjx_9115, w3adjy_8863, w3diag_8779);
	float4 w3_9207 = _9206;
	float4 _9208 = w0_9201 + w1_9203;
	float4 _9209 = _9208 + w2_9205;
	float4 _9210 = _9209 + w3_9207;
	float4 weight_sum4_9211 = _9210;
	float2 _9214 = weight_sum4_9211.xy + weight_sum4_9211.zw;
	float2 weight_sum2_9215 = _9214;
	float _9218 = weight_sum2_9215.x + weight_sum2_9215.y;
	float weight_sum_9219 = _9218;
	float _9221 = 1.00000000e+00 / weight_sum_9219;
	float weight_sum_inv_9222 = _9221;
	float2 _9224 = dxdy * quad_vector.xy;
	float2 dxdy_curr_9225 = _9224;
	float2 _9226 = dxdy_curr_9225 * sample0curr_texel_offset_8723;
	float2 _9228 = tex_uv.xy + _9226;
	float2 _9229;
	float _9230;
	_9229 = _9228;
	_9230 = input_gamma;
	float4 _9231 = F__tex2D_linearize(tex, _9229, _9230);
	float3 sample0curr_9233 = _9231.xyz;
	float2 _9234 = dxdy_curr_9225 * sample0adjx_texel_offset_8728;
	float2 _9236 = tex_uv.xy + _9234;
	float2 _9237;
	float _9238;
	_9237 = _9236;
	_9238 = input_gamma;
	float4 _9239 = F__tex2D_linearize(tex, _9237, _9238);
	float3 sample0adjx_9241 = _9239.xyz;
	float2 _9242 = dxdy_curr_9225 * sample0adjy_texel_offset_8733;
	float2 _9244 = tex_uv.xy + _9242;
	float2 _9245;
	float _9246;
	_9245 = _9244;
	_9246 = input_gamma;
	float4 _9247 = F__tex2D_linearize(tex, _9245, _9246);
	float3 sample0adjy_9249 = _9247.xyz;
	float2 _9250 = dxdy_curr_9225 * sample0diag_texel_offset_8739;
	float2 _9252 = tex_uv.xy + _9250;
	float2 _9253;
	float _9254;
	_9253 = _9252;
	_9254 = input_gamma;
	float4 _9255 = F__tex2D_linearize(tex, _9253, _9254);
	float3 sample0diag_9257 = _9255.xyz;
	float2 _9258 = dxdy_curr_9225 * sample1_texel_offset_8743;
	float2 _9259;
	_9259 = _9258;
	float4 _9260 = F__uv2_to_uv4(_9259);
	float4 _9261 = tex_uv + _9260;
	float4 _9262;
	float _9263;
	_9262 = _9261;
	_9263 = input_gamma;
	float4 _9264 = F__tex2Dlod_linearize(tex, _9262, _9263);
	float3 sample1curr_9266 = _9264.xyz;
	float2 _9267 = dxdy_curr_9225 * sample2_texel_offset_8747;
	float2 _9268;
	_9268 = _9267;
	float4 _9269 = F__uv2_to_uv4(_9268);
	float4 _9270 = tex_uv + _9269;
	float4 _9271;
	float _9272;
	_9271 = _9270;
	_9272 = input_gamma;
	float4 _9273 = F__tex2Dlod_linearize(tex, _9271, _9272);
	float3 sample2curr_9275 = _9273.xyz;
	float2 _9276 = dxdy_curr_9225 * sample3_texel_offset_8751;
	float2 _9277;
	_9277 = _9276;
	float4 _9278 = F__uv2_to_uv4(_9277);
	float4 _9279 = tex_uv + _9278;
	float4 _9280;
	float _9281;
	_9280 = _9279;
	_9281 = input_gamma;
	float4 _9282 = F__tex2Dlod_linearize(tex, _9280, _9281);
	float3 sample3curr_9284 = _9282.xyz;
	float3 sample1adjx_9286 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1adjy_9288 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1diag_9290 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjx_9292 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjy_9294 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2diag_9296 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjx_9298 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3adjy_9300 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample3diag_9302 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _9303;
	float3 _9304;
	float3 _9305;
	float3 _9306;
	float3 _9307;
	_9303 = quad_vector;
	_9304 = sample1curr_9266;
	F__quad_gather(_9303, _9304, _9305, _9306, _9307);
	sample1adjx_9286 = _9305;
	sample1adjy_9288 = _9306;
	sample1diag_9290 = _9307;
	float4 _9309;
	float3 _9310;
	float3 _9311;
	float3 _9312;
	float3 _9313;
	_9309 = quad_vector;
	_9310 = sample2curr_9275;
	F__quad_gather(_9309, _9310, _9311, _9312, _9313);
	sample2adjx_9292 = _9311;
	sample2adjy_9294 = _9312;
	sample2diag_9296 = _9313;
	float4 _9315;
	float3 _9316;
	float3 _9317;
	float3 _9318;
	float3 _9319;
	_9315 = quad_vector;
	_9316 = sample3curr_9284;
	F__quad_gather(_9315, _9316, _9317, _9318, _9319);
	sample3adjx_9298 = _9317;
	sample3adjy_9300 = _9318;
	sample3diag_9302 = _9319;
	float3 sum_9322 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _9335 = float4x3(sample0curr_9233.x, sample0curr_9233.y, sample0curr_9233.z, sample0adjx_9241.x, sample0adjx_9241.y, sample0adjx_9241.z, sample0adjy_9249.x, sample0adjy_9249.y, sample0adjy_9249.z, sample0diag_9257.x, sample0diag_9257.y, sample0diag_9257.z);
	float3 _9336 = mul(w0_9201, _9335);
	float3 _9337 = sum_9322 + _9336;
	sum_9322 = _9337;
	float4x3 _9350 = float4x3(sample1curr_9266.x, sample1curr_9266.y, sample1curr_9266.z, sample1adjx_9286.x, sample1adjx_9286.y, sample1adjx_9286.z, sample1adjy_9288.x, sample1adjy_9288.y, sample1adjy_9288.z, sample1diag_9290.x, sample1diag_9290.y, sample1diag_9290.z);
	float3 _9351 = mul(w1_9203, _9350);
	float3 _9352 = sum_9322 + _9351;
	sum_9322 = _9352;
	float4x3 _9365 = float4x3(sample2curr_9275.x, sample2curr_9275.y, sample2curr_9275.z, sample2adjx_9292.x, sample2adjx_9292.y, sample2adjx_9292.z, sample2adjy_9294.x, sample2adjy_9294.y, sample2adjy_9294.z, sample2diag_9296.x, sample2diag_9296.y, sample2diag_9296.z);
	float3 _9366 = mul(w2_9205, _9365);
	float3 _9367 = sum_9322 + _9366;
	sum_9322 = _9367;
	float4x3 _9380 = float4x3(sample3curr_9284.x, sample3curr_9284.y, sample3curr_9284.z, sample3adjx_9298.x, sample3adjx_9298.y, sample3adjx_9298.z, sample3adjy_9300.x, sample3adjy_9300.y, sample3adjy_9300.z, sample3diag_9302.x, sample3diag_9302.y, sample3diag_9302.z);
	float3 _9381 = mul(w3_9207, _9380);
	float3 _9382 = sum_9322 + _9381;
	sum_9322 = _9382;
	float3 _9384 = sum_9322 * weight_sum_inv_9222.xxx;
	return _9384;
}
float3 F__tex2Dblur6x6shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float sigma,
	in float input_gamma)
{
	float _9393 = sigma * sigma;
	float _9395 = 5.00000000e-01 / _9393;
	float denom_inv_9396 = _9395;
	float _9398 = -2.50000000e-01 * denom_inv_9396;
	float _9399 = exp(_9398);
	float w0_5off_9400 = _9399;
	float _9402 = -1.00000000e+00 * denom_inv_9396;
	float _9403 = exp(_9402);
	float w1off_9404 = _9403;
	float _9406 = -2.25000000e+00 * denom_inv_9396;
	float _9407 = exp(_9406);
	float w1_5off_9408 = _9407;
	float _9410 = -4.00000000e+00 * denom_inv_9396;
	float _9411 = exp(_9410);
	float w2off_9412 = _9411;
	float _9414 = -6.25000000e+00 * denom_inv_9396;
	float _9415 = exp(_9414);
	float w2_5off_9416 = _9415;
	float _9418 = -1.22500000e+01 * denom_inv_9396;
	float _9419 = exp(_9418);
	float w3_5off_9420 = _9419;
	float _9421 = w0_5off_9400 + w1_5off_9408;
	float _9422 = w1_5off_9408 / _9421;
	float _9425 = lerp(_9422, 5.00000000e-01, 5.00000000e-01);
	float texel0to1ratio_9426 = _9425;
	float _9427 = w2_5off_9416 + w3_5off_9420;
	float _9428 = w3_5off_9420 / _9427;
	float _9431 = lerp(_9428, 5.00000000e-01, 5.00000000e-01);
	float texel2to3ratio_9432 = _9431;
	float _9434 = 1.00000000e+00 + w1off_9404;
	float _9435 = w1off_9404 / _9434;
	float texel0to1ratio_nearest_9436 = _9435;
	float _9437 = w1off_9404 + w2off_9412;
	float _9438 = w2off_9412 / _9437;
	float texel1to2ratio_nearest_9439 = _9438;
	float2 _9440 = float2(texel0to1ratio_nearest_9436, texel0to1ratio_nearest_9436);
	float2 _9442 = float2(0.00000000e+00, 0.00000000e+00) + _9440;
	float2 sample0curr_texel_offset_9443 = _9442;
	float _9444 = -texel1to2ratio_nearest_9439;
	float2 _9445 = float2(_9444, texel0to1ratio_nearest_9436);
	float2 _9447 = float2(-1.00000000e+00, 0.00000000e+00) + _9445;
	float2 sample0adjx_texel_offset_9448 = _9447;
	float _9449 = -texel1to2ratio_nearest_9439;
	float2 _9450 = float2(texel0to1ratio_nearest_9436, _9449);
	float2 _9452 = float2(0.00000000e+00, -1.00000000e+00) + _9450;
	float2 sample0adjy_texel_offset_9453 = _9452;
	float _9454 = -texel1to2ratio_nearest_9439;
	float _9455 = -texel1to2ratio_nearest_9439;
	float2 _9456 = float2(_9454, _9455);
	float2 _9458 = float2(-1.00000000e+00, -1.00000000e+00) + _9456;
	float2 sample0diag_texel_offset_9459 = _9458;
	float2 _9460 = float2(texel2to3ratio_9432, texel0to1ratio_9426);
	float2 _9462 = float2(2.00000000e+00, 0.00000000e+00) + _9460;
	float2 sample1_texel_offset_9463 = _9462;
	float2 _9464 = float2(texel0to1ratio_9426, texel2to3ratio_9432);
	float2 _9466 = float2(0.00000000e+00, 2.00000000e+00) + _9464;
	float2 sample2_texel_offset_9467 = _9466;
	float2 _9468 = float2(texel2to3ratio_9432, texel2to3ratio_9432);
	float2 _9470 = float2(2.00000000e+00, 2.00000000e+00) + _9468;
	float2 sample3_texel_offset_9471 = _9470;
	float _9474 = dot(float2(-2.00000000e+00, -2.00000000e+00), float2(-2.00000000e+00, -2.00000000e+00));
	float _9475 = -_9474;
	float _9476 = _9475 * denom_inv_9396;
	float _9477 = exp(_9476);
	float _9480 = dot(float2(-1.00000000e+00, -2.00000000e+00), float2(-1.00000000e+00, -2.00000000e+00));
	float _9481 = -_9480;
	float _9482 = _9481 * denom_inv_9396;
	float _9483 = exp(_9482);
	float _9484 = _9477 + _9483;
	float _9487 = dot(float2(-2.00000000e+00, -1.00000000e+00), float2(-2.00000000e+00, -1.00000000e+00));
	float _9488 = -_9487;
	float _9489 = _9488 * denom_inv_9396;
	float _9490 = exp(_9489);
	float _9491 = _9484 + _9490;
	float _9494 = dot(float2(-1.00000000e+00, -1.00000000e+00), float2(-1.00000000e+00, -1.00000000e+00));
	float _9495 = -_9494;
	float _9496 = _9495 * denom_inv_9396;
	float _9497 = exp(_9496);
	float _9498 = _9491 + _9497;
	float w0diag_9499 = _9498;
	float _9502 = dot(float2(0.00000000e+00, -2.00000000e+00), float2(0.00000000e+00, -2.00000000e+00));
	float _9503 = -_9502;
	float _9504 = _9503 * denom_inv_9396;
	float _9505 = exp(_9504);
	float _9508 = dot(float2(1.00000000e+00, -2.00000000e+00), float2(1.00000000e+00, -2.00000000e+00));
	float _9509 = -_9508;
	float _9510 = _9509 * denom_inv_9396;
	float _9511 = exp(_9510);
	float _9512 = _9505 + _9511;
	float _9515 = dot(float2(0.00000000e+00, -1.00000000e+00), float2(0.00000000e+00, -1.00000000e+00));
	float _9516 = -_9515;
	float _9517 = _9516 * denom_inv_9396;
	float _9518 = exp(_9517);
	float _9519 = _9512 + _9518;
	float _9522 = dot(float2(1.00000000e+00, -1.00000000e+00), float2(1.00000000e+00, -1.00000000e+00));
	float _9523 = -_9522;
	float _9524 = _9523 * denom_inv_9396;
	float _9525 = exp(_9524);
	float _9526 = _9519 + _9525;
	float w0adjy_9527 = _9526;
	float _9530 = dot(float2(2.00000000e+00, -2.00000000e+00), float2(2.00000000e+00, -2.00000000e+00));
	float _9531 = -_9530;
	float _9532 = _9531 * denom_inv_9396;
	float _9533 = exp(_9532);
	float _9536 = dot(float2(3.00000000e+00, -2.00000000e+00), float2(3.00000000e+00, -2.00000000e+00));
	float _9537 = -_9536;
	float _9538 = _9537 * denom_inv_9396;
	float _9539 = exp(_9538);
	float _9540 = _9533 + _9539;
	float _9543 = dot(float2(2.00000000e+00, -1.00000000e+00), float2(2.00000000e+00, -1.00000000e+00));
	float _9544 = -_9543;
	float _9545 = _9544 * denom_inv_9396;
	float _9546 = exp(_9545);
	float _9547 = _9540 + _9546;
	float _9550 = dot(float2(3.00000000e+00, -1.00000000e+00), float2(3.00000000e+00, -1.00000000e+00));
	float _9551 = -_9550;
	float _9552 = _9551 * denom_inv_9396;
	float _9553 = exp(_9552);
	float _9554 = _9547 + _9553;
	float w1adjy_9555 = _9554;
	float _9558 = dot(float2(-2.00000000e+00, 0.00000000e+00), float2(-2.00000000e+00, 0.00000000e+00));
	float _9559 = -_9558;
	float _9560 = _9559 * denom_inv_9396;
	float _9561 = exp(_9560);
	float _9564 = dot(float2(-1.00000000e+00, 0.00000000e+00), float2(-1.00000000e+00, 0.00000000e+00));
	float _9565 = -_9564;
	float _9566 = _9565 * denom_inv_9396;
	float _9567 = exp(_9566);
	float _9568 = _9561 + _9567;
	float _9571 = dot(float2(-2.00000000e+00, 1.00000000e+00), float2(-2.00000000e+00, 1.00000000e+00));
	float _9572 = -_9571;
	float _9573 = _9572 * denom_inv_9396;
	float _9574 = exp(_9573);
	float _9575 = _9568 + _9574;
	float _9578 = dot(float2(-1.00000000e+00, 1.00000000e+00), float2(-1.00000000e+00, 1.00000000e+00));
	float _9579 = -_9578;
	float _9580 = _9579 * denom_inv_9396;
	float _9581 = exp(_9580);
	float _9582 = _9575 + _9581;
	float w0adjx_9583 = _9582;
	float _9586 = dot(float2(0.00000000e+00, 0.00000000e+00), float2(0.00000000e+00, 0.00000000e+00));
	float _9587 = -_9586;
	float _9588 = _9587 * denom_inv_9396;
	float _9589 = exp(_9588);
	float _9592 = dot(float2(1.00000000e+00, 0.00000000e+00), float2(1.00000000e+00, 0.00000000e+00));
	float _9593 = -_9592;
	float _9594 = _9593 * denom_inv_9396;
	float _9595 = exp(_9594);
	float _9596 = _9589 + _9595;
	float _9599 = dot(float2(0.00000000e+00, 1.00000000e+00), float2(0.00000000e+00, 1.00000000e+00));
	float _9600 = -_9599;
	float _9601 = _9600 * denom_inv_9396;
	float _9602 = exp(_9601);
	float _9603 = _9596 + _9602;
	float _9606 = dot(float2(1.00000000e+00, 1.00000000e+00), float2(1.00000000e+00, 1.00000000e+00));
	float _9607 = -_9606;
	float _9608 = _9607 * denom_inv_9396;
	float _9609 = exp(_9608);
	float _9610 = _9603 + _9609;
	float w0curr_9611 = _9610;
	float _9614 = dot(float2(2.00000000e+00, 0.00000000e+00), float2(2.00000000e+00, 0.00000000e+00));
	float _9615 = -_9614;
	float _9616 = _9615 * denom_inv_9396;
	float _9617 = exp(_9616);
	float _9620 = dot(float2(3.00000000e+00, 0.00000000e+00), float2(3.00000000e+00, 0.00000000e+00));
	float _9621 = -_9620;
	float _9622 = _9621 * denom_inv_9396;
	float _9623 = exp(_9622);
	float _9624 = _9617 + _9623;
	float _9627 = dot(float2(2.00000000e+00, 1.00000000e+00), float2(2.00000000e+00, 1.00000000e+00));
	float _9628 = -_9627;
	float _9629 = _9628 * denom_inv_9396;
	float _9630 = exp(_9629);
	float _9631 = _9624 + _9630;
	float _9634 = dot(float2(3.00000000e+00, 1.00000000e+00), float2(3.00000000e+00, 1.00000000e+00));
	float _9635 = -_9634;
	float _9636 = _9635 * denom_inv_9396;
	float _9637 = exp(_9636);
	float _9638 = _9631 + _9637;
	float w1curr_9639 = _9638;
	float _9642 = dot(float2(-2.00000000e+00, 2.00000000e+00), float2(-2.00000000e+00, 2.00000000e+00));
	float _9643 = -_9642;
	float _9644 = _9643 * denom_inv_9396;
	float _9645 = exp(_9644);
	float _9648 = dot(float2(-1.00000000e+00, 2.00000000e+00), float2(-1.00000000e+00, 2.00000000e+00));
	float _9649 = -_9648;
	float _9650 = _9649 * denom_inv_9396;
	float _9651 = exp(_9650);
	float _9652 = _9645 + _9651;
	float _9655 = dot(float2(-2.00000000e+00, 3.00000000e+00), float2(-2.00000000e+00, 3.00000000e+00));
	float _9656 = -_9655;
	float _9657 = _9656 * denom_inv_9396;
	float _9658 = exp(_9657);
	float _9659 = _9652 + _9658;
	float _9662 = dot(float2(-1.00000000e+00, 3.00000000e+00), float2(-1.00000000e+00, 3.00000000e+00));
	float _9663 = -_9662;
	float _9664 = _9663 * denom_inv_9396;
	float _9665 = exp(_9664);
	float _9666 = _9659 + _9665;
	float w2adjx_9667 = _9666;
	float _9670 = dot(float2(0.00000000e+00, 2.00000000e+00), float2(0.00000000e+00, 2.00000000e+00));
	float _9671 = -_9670;
	float _9672 = _9671 * denom_inv_9396;
	float _9673 = exp(_9672);
	float _9676 = dot(float2(1.00000000e+00, 2.00000000e+00), float2(1.00000000e+00, 2.00000000e+00));
	float _9677 = -_9676;
	float _9678 = _9677 * denom_inv_9396;
	float _9679 = exp(_9678);
	float _9680 = _9673 + _9679;
	float _9683 = dot(float2(0.00000000e+00, 3.00000000e+00), float2(0.00000000e+00, 3.00000000e+00));
	float _9684 = -_9683;
	float _9685 = _9684 * denom_inv_9396;
	float _9686 = exp(_9685);
	float _9687 = _9680 + _9686;
	float _9690 = dot(float2(1.00000000e+00, 3.00000000e+00), float2(1.00000000e+00, 3.00000000e+00));
	float _9691 = -_9690;
	float _9692 = _9691 * denom_inv_9396;
	float _9693 = exp(_9692);
	float _9694 = _9687 + _9693;
	float w2curr_9695 = _9694;
	float _9698 = dot(float2(2.00000000e+00, 2.00000000e+00), float2(2.00000000e+00, 2.00000000e+00));
	float _9699 = -_9698;
	float _9700 = _9699 * denom_inv_9396;
	float _9701 = exp(_9700);
	float _9704 = dot(float2(3.00000000e+00, 2.00000000e+00), float2(3.00000000e+00, 2.00000000e+00));
	float _9705 = -_9704;
	float _9706 = _9705 * denom_inv_9396;
	float _9707 = exp(_9706);
	float _9708 = _9701 + _9707;
	float _9711 = dot(float2(2.00000000e+00, 3.00000000e+00), float2(2.00000000e+00, 3.00000000e+00));
	float _9712 = -_9711;
	float _9713 = _9712 * denom_inv_9396;
	float _9714 = exp(_9713);
	float _9715 = _9708 + _9714;
	float _9718 = dot(float2(3.00000000e+00, 3.00000000e+00), float2(3.00000000e+00, 3.00000000e+00));
	float _9719 = -_9718;
	float _9720 = _9719 * denom_inv_9396;
	float _9721 = exp(_9720);
	float _9722 = _9715 + _9721;
	float w3curr_9723 = _9722;
	float _9724 = w0curr_9611 + w1curr_9639;
	float _9725 = _9724 + w2curr_9695;
	float _9726 = _9725 + w3curr_9723;
	float _9727 = _9726 + w0adjx_9583;
	float _9728 = _9727 + w2adjx_9667;
	float _9729 = _9728 + w0adjy_9527;
	float _9730 = _9729 + w1adjy_9555;
	float _9731 = _9730 + w0diag_9499;
	float _9733 = 1.00000000e+00 / _9731;
	float weight_sum_inv_9734 = _9733;
	float4 _9735 = float4(w0curr_9611, w0adjx_9583, w0adjy_9527, w0diag_9499);
	float4 w0_9736 = _9735;
	float2 _9738 = dxdy * quad_vector.xy;
	float2 dxdy_curr_9739 = _9738;
	float2 _9740 = dxdy_curr_9739 * sample0curr_texel_offset_9443;
	float2 _9742 = tex_uv.xy + _9740;
	float2 _9743;
	float _9744;
	_9743 = _9742;
	_9744 = input_gamma;
	float4 _9745 = F__tex2D_linearize(tex, _9743, _9744);
	float3 sample0curr_9747 = _9745.xyz;
	float2 _9748 = dxdy_curr_9739 * sample0adjx_texel_offset_9448;
	float2 _9750 = tex_uv.xy + _9748;
	float2 _9751;
	float _9752;
	_9751 = _9750;
	_9752 = input_gamma;
	float4 _9753 = F__tex2D_linearize(tex, _9751, _9752);
	float3 sample0adjx_9755 = _9753.xyz;
	float2 _9756 = dxdy_curr_9739 * sample0adjy_texel_offset_9453;
	float2 _9758 = tex_uv.xy + _9756;
	float2 _9759;
	float _9760;
	_9759 = _9758;
	_9760 = input_gamma;
	float4 _9761 = F__tex2D_linearize(tex, _9759, _9760);
	float3 sample0adjy_9763 = _9761.xyz;
	float2 _9764 = dxdy_curr_9739 * sample0diag_texel_offset_9459;
	float2 _9766 = tex_uv.xy + _9764;
	float2 _9767;
	float _9768;
	_9767 = _9766;
	_9768 = input_gamma;
	float4 _9769 = F__tex2D_linearize(tex, _9767, _9768);
	float3 sample0diag_9771 = _9769.xyz;
	float2 _9772 = dxdy_curr_9739 * sample1_texel_offset_9463;
	float2 _9773;
	_9773 = _9772;
	float4 _9774 = F__uv2_to_uv4(_9773);
	float4 _9775 = tex_uv + _9774;
	float4 _9776;
	float _9777;
	_9776 = _9775;
	_9777 = input_gamma;
	float4 _9778 = F__tex2Dlod_linearize(tex, _9776, _9777);
	float3 sample1curr_9780 = _9778.xyz;
	float2 _9781 = dxdy_curr_9739 * sample2_texel_offset_9467;
	float2 _9782;
	_9782 = _9781;
	float4 _9783 = F__uv2_to_uv4(_9782);
	float4 _9784 = tex_uv + _9783;
	float4 _9785;
	float _9786;
	_9785 = _9784;
	_9786 = input_gamma;
	float4 _9787 = F__tex2Dlod_linearize(tex, _9785, _9786);
	float3 sample2curr_9789 = _9787.xyz;
	float2 _9790 = dxdy_curr_9739 * sample3_texel_offset_9471;
	float2 _9791;
	_9791 = _9790;
	float4 _9792 = F__uv2_to_uv4(_9791);
	float4 _9793 = tex_uv + _9792;
	float4 _9794;
	float _9795;
	_9794 = _9793;
	_9795 = input_gamma;
	float4 _9796 = F__tex2Dlod_linearize(tex, _9794, _9795);
	float3 sample3curr_9798 = _9796.xyz;
	float3 sample1adjx_9800 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1adjy_9802 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample1diag_9804 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjx_9806 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2adjy_9808 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 sample2diag_9810 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4 _9811;
	float3 _9812;
	float3 _9813;
	float3 _9814;
	float3 _9815;
	_9811 = quad_vector;
	_9812 = sample1curr_9780;
	F__quad_gather(_9811, _9812, _9813, _9814, _9815);
	sample1adjx_9800 = _9813;
	sample1adjy_9802 = _9814;
	sample1diag_9804 = _9815;
	float4 _9817;
	float3 _9818;
	float3 _9819;
	float3 _9820;
	float3 _9821;
	_9817 = quad_vector;
	_9818 = sample2curr_9789;
	F__quad_gather(_9817, _9818, _9819, _9820, _9821);
	sample2adjx_9806 = _9819;
	sample2adjy_9808 = _9820;
	sample2diag_9810 = _9821;
	float3 sum_9824 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float4x3 _9837 = float4x3(sample0curr_9747.x, sample0curr_9747.y, sample0curr_9747.z, sample0adjx_9755.x, sample0adjx_9755.y, sample0adjx_9755.z, sample0adjy_9763.x, sample0adjy_9763.y, sample0adjy_9763.z, sample0diag_9771.x, sample0diag_9771.y, sample0diag_9771.z);
	float3 _9838 = mul(w0_9736, _9837);
	float3 _9839 = sum_9824 + _9838;
	sum_9824 = _9839;
	float3 _9841 = w1curr_9639.xxx * sample1curr_9780;
	float3 _9843 = w1adjy_9555.xxx * sample1adjy_9802;
	float3 _9844 = _9841 + _9843;
	float3 _9846 = w2curr_9695.xxx * sample2curr_9789;
	float3 _9847 = _9844 + _9846;
	float3 _9849 = w2adjx_9667.xxx * sample2adjx_9806;
	float3 _9850 = _9847 + _9849;
	float3 _9852 = w3curr_9723.xxx * sample3curr_9798;
	float3 _9853 = _9850 + _9852;
	float3 _9854 = sum_9824 + _9853;
	sum_9824 = _9854;
	float3 _9856 = sum_9824 * weight_sum_inv_9734.xxx;
	return _9856;
}
float3 F__tex2Dblur11resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9863;
	float2 _9864;
	float _9865;
	float _9866;
	_9863 = tex_uv;
	_9864 = dxdy;
	_9865 = 2.15986323e+00;
	_9866 = input_gamma;
	float3 _9868 = F__tex2Dblur11resize(tex, _9863, _9864, _9865, _9866);
	return _9868;
}
float3 F__tex2Dblur9resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9875;
	float2 _9876;
	float _9877;
	float _9878;
	_9875 = tex_uv;
	_9876 = dxdy;
	_9877 = 1.75332034e+00;
	_9878 = input_gamma;
	float3 _9880 = F__tex2Dblur9resize(tex, _9875, _9876, _9877, _9878);
	return _9880;
}
float3 F__tex2Dblur7resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9887;
	float2 _9888;
	float _9889;
	float _9890;
	_9887 = tex_uv;
	_9888 = dxdy;
	_9889 = 1.36103511e+00;
	_9890 = input_gamma;
	float3 _9892 = F__tex2Dblur7resize(tex, _9887, _9888, _9889, _9890);
	return _9892;
}
float3 F__tex2Dblur5resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9899;
	float2 _9900;
	float _9901;
	float _9902;
	_9899 = tex_uv;
	_9900 = dxdy;
	_9901 = 9.84570324e-01;
	_9902 = input_gamma;
	float3 _9904 = F__tex2Dblur5resize(tex, _9899, _9900, _9901, _9902);
	return _9904;
}
float3 F__tex2Dblur3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9911;
	float2 _9912;
	float _9913;
	float _9914;
	_9911 = tex_uv;
	_9912 = dxdy;
	_9913 = 6.26660168e-01;
	_9914 = input_gamma;
	float3 _9916 = F__tex2Dblur3resize(tex, _9911, _9912, _9913, _9914);
	return _9916;
}
float3 F__tex2Dblur11fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9923;
	float2 _9924;
	float _9925;
	float _9926;
	_9923 = tex_uv;
	_9924 = dxdy;
	_9925 = 2.15986323e+00;
	_9926 = input_gamma;
	float3 _9928 = F__tex2Dblur11fast(tex, _9923, _9924, _9925, _9926);
	return _9928;
}
float3 F__tex2Dblur9fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9935;
	float2 _9936;
	float _9937;
	float _9938;
	_9935 = tex_uv;
	_9936 = dxdy;
	_9937 = 1.75332034e+00;
	_9938 = input_gamma;
	float3 _9940 = F__tex2Dblur9fast(tex, _9935, _9936, _9937, _9938);
	return _9940;
}
float3 F__tex2Dblur7fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9947;
	float2 _9948;
	float _9949;
	float _9950;
	_9947 = tex_uv;
	_9948 = dxdy;
	_9949 = 1.36103511e+00;
	_9950 = input_gamma;
	float3 _9952 = F__tex2Dblur7fast(tex, _9947, _9948, _9949, _9950);
	return _9952;
}
float3 F__tex2Dblur5fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9959;
	float2 _9960;
	float _9961;
	float _9962;
	_9959 = tex_uv;
	_9960 = dxdy;
	_9961 = 9.84570324e-01;
	_9962 = input_gamma;
	float3 _9964 = F__tex2Dblur5fast(tex, _9959, _9960, _9961, _9962);
	return _9964;
}
float3 F__tex2Dblur3fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9971;
	float2 _9972;
	float _9973;
	float _9974;
	_9971 = tex_uv;
	_9972 = dxdy;
	_9973 = 6.26660168e-01;
	_9974 = input_gamma;
	float3 _9976 = F__tex2Dblur3fast(tex, _9971, _9972, _9973, _9974);
	return _9976;
}
float3 F__tex2Dblur43fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9983;
	float2 _9984;
	float _9985;
	float _9986;
	_9983 = tex_uv;
	_9984 = dxdy;
	_9985 = 1.01852055e+01;
	_9986 = input_gamma;
	float3 _9988 = F__tex2Dblur43fast(tex, _9983, _9984, _9985, _9986);
	return _9988;
}
float3 F__tex2Dblur31fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _9995;
	float2 _9996;
	float _9997;
	float _9998;
	_9995 = tex_uv;
	_9996 = dxdy;
	_9997 = 6.86488056e+00;
	_9998 = input_gamma;
	float3 _10000 = F__tex2Dblur31fast(tex, _9995, _9996, _9997, _9998);
	return _10000;
}
float3 F__tex2Dblur25fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10007;
	float2 _10008;
	float _10009;
	float _10010;
	_10007 = tex_uv;
	_10008 = dxdy;
	_10009 = 5.34095764e+00;
	_10010 = input_gamma;
	float3 _10012 = F__tex2Dblur25fast(tex, _10007, _10008, _10009, _10010);
	return _10012;
}
float3 F__tex2Dblur17fast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10019;
	float2 _10020;
	float _10021;
	float _10022;
	_10019 = tex_uv;
	_10020 = dxdy;
	_10021 = 3.45535588e+00;
	_10022 = input_gamma;
	float3 _10024 = F__tex2Dblur17fast(tex, _10019, _10020, _10021, _10022);
	return _10024;
}
float3 F__tex2Dblur3x3resize(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10031;
	float2 _10032;
	float _10033;
	float _10034;
	_10031 = tex_uv;
	_10032 = dxdy;
	_10033 = 6.26660168e-01;
	_10034 = input_gamma;
	float3 _10036 = F__tex2Dblur3x3resize(tex, _10031, _10032, _10033, _10034);
	return _10036;
}
float3 F__tex2Dblur9x9(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10043;
	float2 _10044;
	float _10045;
	float _10046;
	_10043 = tex_uv;
	_10044 = dxdy;
	_10045 = 1.75332034e+00;
	_10046 = input_gamma;
	float3 _10048 = F__tex2Dblur9x9(tex, _10043, _10044, _10045, _10046);
	return _10048;
}
float3 F__tex2Dblur7x7(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10055;
	float2 _10056;
	float _10057;
	float _10058;
	_10055 = tex_uv;
	_10056 = dxdy;
	_10057 = 1.36103511e+00;
	_10058 = input_gamma;
	float3 _10060 = F__tex2Dblur7x7(tex, _10055, _10056, _10057, _10058);
	return _10060;
}
float3 F__tex2Dblur5x5(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10067;
	float2 _10068;
	float _10069;
	float _10070;
	_10067 = tex_uv;
	_10068 = dxdy;
	_10069 = 9.84570324e-01;
	_10070 = input_gamma;
	float3 _10072 = F__tex2Dblur5x5(tex, _10067, _10068, _10069, _10070);
	return _10072;
}
float3 F__tex2Dblur3x3(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float input_gamma)
{
	float2 _10079;
	float2 _10080;
	float _10081;
	float _10082;
	_10079 = tex_uv;
	_10080 = dxdy;
	_10081 = 6.26660168e-01;
	_10082 = input_gamma;
	float3 _10084 = F__tex2Dblur3x3(tex, _10079, _10080, _10081, _10082);
	return _10084;
}
float3 F__tex2Dblur12x12shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10092;
	float2 _10093;
	float4 _10094;
	float _10095;
	float _10096;
	_10092 = tex_uv;
	_10093 = dxdy;
	_10094 = quad_vector;
	_10095 = 2.21523428e+00;
	_10096 = input_gamma;
	float3 _10098 = F__tex2Dblur12x12shared(tex, _10092, _10093, _10094, _10095, _10096);
	return _10098;
}
float3 F__tex2Dblur10x10shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10106;
	float2 _10107;
	float4 _10108;
	float _10109;
	float _10110;
	_10106 = tex_uv;
	_10107 = dxdy;
	_10108 = quad_vector;
	_10109 = 1.80478513e+00;
	_10110 = input_gamma;
	float3 _10112 = F__tex2Dblur10x10shared(tex, _10106, _10107, _10108, _10109, _10110);
	return _10112;
}
float3 F__tex2Dblur8x8shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10120;
	float2 _10121;
	float4 _10122;
	float _10123;
	float _10124;
	_10120 = tex_uv;
	_10121 = dxdy;
	_10122 = quad_vector;
	_10123 = 1.40800786e+00;
	_10124 = input_gamma;
	float3 _10126 = F__tex2Dblur8x8shared(tex, _10120, _10121, _10122, _10123, _10124);
	return _10126;
}
float3 F__tex2Dblur6x6shared(
	in __sampler2D_float4 tex,
	in float4 tex_uv,
	in float2 dxdy,
	in float4 quad_vector,
	in float input_gamma)
{
	float4 _10134;
	float2 _10135;
	float4 _10136;
	float _10137;
	float _10138;
	_10134 = tex_uv;
	_10135 = dxdy;
	_10136 = quad_vector;
	_10137 = 1.02626956e+00;
	_10138 = input_gamma;
	float3 _10140 = F__tex2Dblur6x6shared(tex, _10134, _10135, _10136, _10137, _10138);
	return _10140;
}
void F__blurHorizontalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 blur_dxdy : TEXCOORD1)
{
	uint _10147;
	float4 _10148;
	float2 _10149;
	_10147 = id;
	F__PostProcessVS(_10147, _10148, _10149);
	position = _10148;
	texcoord = _10149;
	blur_dxdy = float2(2.77777785e-03, 0.00000000e+00);
	return;
}
void F__blurHorizontalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 blur_dxdy : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _10158 = F__get_intermediate_gamma();
	float2 _10159;
	float2 _10160;
	float _10161;
	_10159 = texcoord;
	_10160 = blur_dxdy;
	_10161 = _10158;
	float3 _10162 = F__tex2Dblur9fast(V__samplerBlurVertical, _10159, _10160, _10161);
	float3 blur_color = _10162;
	float4 _10168 = float4(blur_color.x, blur_color.y, blur_color.z, 1.00000000e+00);
	float _10169 = F__get_intermediate_gamma();
	float4 _10170;
	float _10171;
	_10170 = _10168;
	_10171 = _10169;
	float4 _10172 = F__encode_output(_10170, _10171);
	color = _10172;
	return;
}
void F__blurVerticalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 blur_dxdy : TEXCOORD1)
{
	uint _10179;
	float4 _10180;
	float2 _10181;
	_10179 = id;
	F__PostProcessVS(_10179, _10180, _10181);
	position = _10180;
	texcoord = _10181;
	blur_dxdy = float2(0.00000000e+00, 3.70370364e-03);
	return;
}
void F__blurVerticalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 blur_dxdy : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _10190 = F__get_intermediate_gamma();
	float2 _10191;
	float2 _10192;
	float _10193;
	_10191 = texcoord;
	_10192 = blur_dxdy;
	_10193 = _10190;
	float3 _10194 = F__tex2Dblur9fast(V__samplerBloomApproxHoriz, _10191, _10192, _10193);
	float3 blur_color_10195 = _10194;
	float4 _10200 = float4(blur_color_10195.x, blur_color_10195.y, blur_color_10195.z, 1.00000000e+00);
	float _10201 = F__get_intermediate_gamma();
	float4 _10202;
	float _10203;
	_10202 = _10200;
	_10203 = _10201;
	float4 _10204 = F__encode_output(_10202, _10203);
	color = _10204;
	return;
}
void F__freezeFrameVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0)
{
	bool _10211 = V__scanline_deinterlacing_mode == 2u;
	bool _10213 = V__scanline_deinterlacing_mode == 3u;
	bool _10214 = _10211 || _10213;
	bool _10215 = V__enable_interlacing && _10214;
	float use_deinterlacing_tex = ((float)_10215);
	bool _10219 = id == 2u;
	float _10221 = use_deinterlacing_tex * 2.00000000e+00;
	float _10223 = _10219 ? _10221 : 0.00000000e+00;
	texcoord[0] = _10223;
	bool _10225 = id == 1u;
	float _10228 = _10225 ? 2.00000000e+00 : 0.00000000e+00;
	texcoord[1] = _10228;
	float2 _10230 = texcoord * float2(2.00000000e+00, -2.00000000e+00);
	float2 _10232 = _10230 + float2(-1.00000000e+00, 1.00000000e+00);
	float4 _10237 = float4(_10232.x, _10232.y, 0.00000000e+00, 1.00000000e+00);
	position = _10237;
	return;
}
void F__freezeFramePS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float4 _10243 = V__samplerBeamConvergence.t.Sample(V__samplerBeamConvergence.s, texcoord);
	color = _10243;
	return;
}
void F__deinterlaceVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 v_step : TEXCOORD1)
{
	uint _10250;
	float4 _10251;
	float2 _10252;
	_10250 = id;
	F__freezeFrameVS(_10250, _10251, _10252);
	position = _10251;
	texcoord = _10252;
	float _10255 = rcp(1.08000000e+03);
	float _10257 = ((float)V__scanline_thickness) * _10255;
	float2 _10259 = float2(0.00000000e+00, _10257);
	v_step = _10259;
	return;
}
void F__deinterlacePS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float2 v_step : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	bool _10267 = V__geom_rotation_mode == 0u;
	bool _10269 = V__geom_rotation_mode == 2u;
	bool _10270 = _10267 || _10269;
	float2 _10273 = lerp(texcoord.yx, texcoord, ((float2)_10270.xx));
	float2 rotated_coord_10274 = _10273;
	bool _10276 = V__geom_rotation_mode == 0u;
	bool _10278 = V__geom_rotation_mode == 2u;
	bool _10279 = _10276 || _10278;
	float _10283 = lerp(1.44000000e+03, 1.08000000e+03, ((float)_10279));
	float scale_10284 = _10283;
	float2 _10285;
	float _10286;
	_10285 = rotated_coord_10274;
	_10286 = scale_10284;
	S__InterpolationFieldData _10287 = F__calc_interpolation_field_data(_10285, _10286);
	S__InterpolationFieldData interpolation_data_10288 = _10287;
	bool _10293 = V__scanline_deinterlacing_mode == 2u;
	bool _10294 = V__enable_interlacing && _10293;
	[branch] if (_10294)
	{
		float2 _10295;
		_10295 = texcoord;
		float4 _10296 = F__tex2D_nograd(V__samplerBeamConvergence, _10295);
		float4 cur_line_color = _10296;
		float2 _10298;
		_10298 = texcoord;
		float4 _10299 = F__tex2D_nograd(V__samplerFreezeFrame, _10298);
		float4 cur_line_prev_color = _10299;
		float4 _10301 = cur_line_color + cur_line_prev_color;
		float4 _10303 = _10301 / float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
		float4 avg_color = _10303;
		float4 _10306 = float4(1.50000000e+00, 1.50000000e+00, 1.50000000e+00, 1.50000000e+00) * cur_line_color;
		float4 _10308 = lerp(_10306, avg_color, ((float4)interpolation_data_10288.wrong_field.xxxx));
		float4 raw_out_color = _10308;
		float4 _10310;
		float _10311;
		_10310 = raw_out_color;
		_10311 = V__deinterlacing_blend_gamma;
		float4 _10312 = F__encode_output(_10310, _10311);
		color = _10312;
	}
	else
	{
		bool _10317 = V__scanline_deinterlacing_mode == 3u;
		bool _10318 = V__enable_interlacing && _10317;
		if (_10318)
		{
			float _10322 = lerp(1.00000000e+00, -1.00000000e+00, ((float)interpolation_data_10288.scanline_parity));
			float2 _10324 = _10322.xx * v_step;
			float2 raw_offset = _10324;
			float2 _10328 = lerp(float2(0.00000000e+00, 0.00000000e+00), raw_offset, ((float2)interpolation_data_10288.wrong_field.xx));
			float2 curr_offset = _10328;
			float2 _10332 = lerp(raw_offset, float2(0.00000000e+00, 0.00000000e+00), ((float2)interpolation_data_10288.wrong_field.xx));
			float2 prev_offset = _10332;
			float2 _10334 = texcoord + curr_offset;
			float2 _10335;
			_10335 = _10334;
			float4 _10336 = F__tex2D_nograd(V__samplerBeamConvergence, _10335);
			float4 cur_line_color_10337 = _10336;
			float2 _10338 = texcoord + prev_offset;
			float2 _10339;
			_10339 = _10338;
			float4 _10340 = F__tex2D_nograd(V__samplerFreezeFrame, _10339);
			float4 prev_line_color = _10340;
			float4 _10342 = cur_line_color_10337 + prev_line_color;
			float4 _10344 = _10342 / float4(2.00000000e+00, 2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
			float4 avg_color_10345 = _10344;
			float4 _10347 = lerp(cur_line_color_10337, avg_color_10345, ((float4)interpolation_data_10288.wrong_field.xxxx));
			float4 raw_out_color_10348 = _10347;
			float4 _10349;
			float _10350;
			_10349 = raw_out_color_10348;
			_10350 = V__deinterlacing_blend_gamma;
			float4 _10351 = F__encode_output(_10349, _10350);
			color = _10351;
		}
		else
		{
			float2 _10352;
			_10352 = texcoord;
			float4 _10353 = F__tex2D_nograd(V__samplerBeamConvergence, _10352);
			color = _10353;
		}
	}
	return;
}
float F__get_selected_aspect_ratio()
{
	float aspect_ratio = 0.00000000e+00;
	bool _10362 = V__mask_type == 0;
	bool _10364 = V__mask_type == 3;
	bool _10365 = _10362 || _10364;
	[flatten] if (_10365)
	{
		aspect_ratio = V__scale_triad_height;
	}
	else
	{
		bool _10370 = V__mask_type == 1;
		bool _10372 = V__mask_type == 4;
		bool _10373 = _10370 || _10372;
		if (_10373)
		{
			float _10375 = V__scale_triad_height * 1.12500000e+00;
			aspect_ratio = _10375;
		}
		else
		{
			float _10377 = V__scale_triad_height * 3.33333343e-01;
			aspect_ratio = _10377;
		}
	}
	[flatten] switch (V__mask_type)
	{
	case 0: {
		aspect_ratio = V__scale_triad_height;
		break;
	}
	case 1: {
		float _10382 = V__scale_triad_height * 1.12500000e+00;
		aspect_ratio = _10382;
		break;
	}
	case 2: {
		float _10385 = V__scale_triad_height * 3.33333343e-01;
		aspect_ratio = _10385;
		break;
	}
	case 3: {
		aspect_ratio = V__scale_triad_height;
		break;
	}
	case 4: {
		float _10389 = V__scale_triad_height * 1.00000000e+00;
		aspect_ratio = _10389;
		break;
	}
	default: {
		float _10392 = V__scale_triad_height * 5.00000000e-01;
		aspect_ratio = _10392;
		break;
	}
	}
	return aspect_ratio;
}
float2 F__calc_triad_size()
{
	float _10395 = F__get_selected_aspect_ratio();
	float aspect_ratio_10396 = _10395;
	bool _10401 = V__mask_size_param == 0u;
	[branch] if (_10401)
	{
		float2 _10403 = float2(1.00000000e+00, aspect_ratio_10396);
		float2 _10405 = _10403 * V__mask_triad_width.xx;
		return _10405;
	}
	else
	{
		float _10406 = rcp(V__mask_num_triads_across);
		float _10408 = 1.44000000e+03 * _10406;
		float triad_width = _10408;
		float2 _10411 = float2(1.00000000e+00, aspect_ratio_10396);
		float2 _10413 = _10411 * triad_width.xx;
		return _10413;
	}
}
float2 F__calc_phosphor_viewport_frequency_factor()
{
	float _10416 = F__get_selected_aspect_ratio();
	float aspect_ratio_10417 = _10416;
	float2 triad_size_factor = float2(0.00000000e+00, 0.00000000e+00);
	float2 num_triads_factor = float2(0.00000000e+00, 0.00000000e+00);
	bool _10426 = V__geom_rotation_mode == 0u;
	bool _10428 = V__geom_rotation_mode == 2u;
	bool _10429 = _10426 || _10428;
	[branch] if (_10429)
	{
		float2 _10431 = float2(1.00000000e+00, aspect_ratio_10417);
		float2 _10433 = V__mask_triad_width.xx * _10431;
		float2 _10434 = rcp(_10433);
		float2 _10436 = float2(1.44000000e+03, 1.08000000e+03) * _10434;
		triad_size_factor = _10436;
		float _10438 = rcp(1.44000000e+03);
		float _10440 = 1.08000000e+03 * _10438;
		float _10441 = rcp(aspect_ratio_10417);
		float _10442 = _10440 * _10441;
		float2 _10444 = float2(1.00000000e+00, _10442);
		float2 _10446 = V__mask_num_triads_across.xx * _10444;
		num_triads_factor = _10446;
	}
	else
	{
		float2 _10448 = float2(1.00000000e+00, aspect_ratio_10417);
		float2 _10450 = V__mask_triad_width.xx * _10448;
		float2 _10451 = rcp(_10450);
		float2 _10454 = float2(1.44000000e+03, 1.08000000e+03) * _10451.yx;
		triad_size_factor = _10454;
		float _10456 = rcp(1.44000000e+03);
		float _10458 = 1.08000000e+03 * _10456;
		float _10459 = rcp(aspect_ratio_10417);
		float _10460 = _10458 * _10459;
		float2 _10462 = float2(1.00000000e+00, _10460);
		float2 _10465 = V__mask_num_triads_across.xx * _10462.yx;
		num_triads_factor = _10465;
	}
	bool _10467 = V__mask_size_param == 0u;
	float2 _10469 = _10467.xx ? triad_size_factor : num_triads_factor;
	return _10469;
}
float3 F__get_phosphor_intensity_grille(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 grille_pq)
{
	bool _10476 = V__geom_rotation_mode == 2u;
	bool _10478 = V__geom_rotation_mode == 3u;
	bool _10479 = _10476 || _10478;
	float3 _10483 = _10479.xxx ? float3(8.12500000e-01, 5.00000000e-01, 1.87500000e-01) : float3(1.87500000e-01, 5.00000000e-01, 8.12500000e-01);
	float3 center_offsets = _10483;
	float3 _10486 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10487 = center_offsets + _10486;
	center_offsets = _10487;
	float _10490 = texcoord.x * viewport_frequency_factor.x;
	float3 _10492 = _10490.xxx - center_offsets;
	float3 _10494 = _10492 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10495 = frac(_10494);
	float3 _10497 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10495;
	float3 _10499 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10497;
	float3 _10500 = abs(_10499);
	float3 theta = _10500;
	float3 _10503 = theta - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10505 = _10503 * grille_pq.y.xxx;
	float3 _10506 = exp(_10505);
	float3 alpha_10507 = _10506;
	float3 _10509 = alpha_10507 + grille_pq.x.xxx;
	float3 _10510 = rcp(_10509);
	float3 _10511 = alpha_10507 * _10510;
	return _10511;
}
float3 F__get_phosphor_intensity_slot(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 slot_pq_x,
	in float2 slot_pq_y)
{
	bool _10519 = V__geom_rotation_mode == 2u;
	bool _10521 = V__geom_rotation_mode == 3u;
	bool _10522 = _10519 || _10521;
	float3 _10526 = _10522.xxx ? float3(8.12500000e-01, 5.00000000e-01, 1.87500000e-01) : float3(1.87500000e-01, 5.00000000e-01, 8.12500000e-01);
	float3 center_offsets_x = _10526;
	bool _10529 = V__geom_rotation_mode == 2u;
	bool _10531 = V__geom_rotation_mode == 3u;
	bool _10532 = _10529 || _10531;
	float3 _10536 = _10532.xxx ? float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) : float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 center_offsets_y = _10536;
	float3 _10539 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10540 = center_offsets_x + _10539;
	center_offsets_x = _10540;
	float3 _10542 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10543 = center_offsets_y + _10542;
	center_offsets_y = _10543;
	float _10546 = texcoord.x * viewport_frequency_factor.x;
	float3 _10548 = _10546.xxx - center_offsets_x;
	float3 _10550 = _10548 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10551 = frac(_10550);
	float3 _10553 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10551;
	float3 _10555 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10553;
	float3 _10556 = abs(_10555);
	float3 theta_x1 = _10556;
	float3 _10559 = theta_x1 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10561 = _10559 * slot_pq_x.y.xxx;
	float3 _10562 = exp(_10561);
	float3 alpha_x1 = _10562;
	float3 _10565 = alpha_x1 + slot_pq_x.x.xxx;
	float3 _10566 = rcp(_10565);
	float3 _10567 = alpha_x1 * _10566;
	alpha_x1 = _10567;
	float _10570 = texcoord.x * viewport_frequency_factor.x;
	float3 _10572 = _10570.xxx - center_offsets_x;
	float3 _10574 = _10572 + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10576 = _10574 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10577 = frac(_10576);
	float3 _10579 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10577;
	float3 _10581 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10579;
	float3 _10582 = abs(_10581);
	float3 theta_x2 = _10582;
	float3 _10585 = theta_x2 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10587 = _10585 * slot_pq_x.y.xxx;
	float3 _10588 = exp(_10587);
	float3 alpha_x2 = _10588;
	float3 _10591 = alpha_x2 + slot_pq_x.x.xxx;
	float3 _10592 = rcp(_10591);
	float3 _10593 = alpha_x2 * _10592;
	alpha_x2 = _10593;
	float _10596 = texcoord.y * viewport_frequency_factor.y;
	float3 _10598 = _10596.xxx - center_offsets_y;
	float3 _10600 = _10598 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10601 = frac(_10600);
	float3 _10603 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10601;
	float3 _10605 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10603;
	float3 _10606 = abs(_10605);
	float3 theta_y1 = _10606;
	float3 _10609 = theta_y1 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10611 = _10609 * slot_pq_y.y.xxx;
	float3 _10612 = exp(_10611);
	float3 alpha_y1 = _10612;
	float3 _10615 = alpha_y1 + slot_pq_y.x.xxx;
	float3 _10616 = rcp(_10615);
	float3 _10617 = alpha_y1 * _10616;
	alpha_y1 = _10617;
	float _10620 = texcoord.y * viewport_frequency_factor.y;
	float3 _10622 = _10620.xxx - center_offsets_y;
	float3 _10624 = _10622 + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10626 = _10624 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10627 = frac(_10626);
	float3 _10629 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10627;
	float3 _10631 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10629;
	float3 _10632 = abs(_10631);
	float3 theta_y2 = _10632;
	float3 _10635 = theta_y2 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10637 = _10635 * slot_pq_y.y.xxx;
	float3 _10638 = exp(_10637);
	float3 alpha_y2 = _10638;
	float3 _10641 = alpha_y2 + slot_pq_y.x.xxx;
	float3 _10642 = rcp(_10641);
	float3 _10643 = alpha_y2 * _10642;
	alpha_y2 = _10643;
	float3 _10644 = alpha_x1 * alpha_y1;
	float3 _10645 = alpha_x2 * alpha_y2;
	float3 _10646 = _10644 + _10645;
	return _10646;
}
float3 F__get_phosphor_intensity_shadow(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 shadow_q)
{
	bool _10653 = V__geom_rotation_mode == 2u;
	bool _10655 = V__geom_rotation_mode == 3u;
	bool _10656 = _10653 || _10655;
	float3 _10660 = _10656.xxx ? float3(3.33333343e-01, 0.00000000e+00, 6.66666687e-01) : float3(6.66666687e-01, 0.00000000e+00, 3.33333343e-01);
	float3 center_offsets_x_10661 = _10660;
	bool _10663 = V__geom_rotation_mode == 2u;
	bool _10665 = V__geom_rotation_mode == 3u;
	bool _10666 = _10663 || _10665;
	float3 _10670 = _10666.xxx ? float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00) : float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 center_offsets_y_10671 = _10670;
	float3 _10673 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10674 = center_offsets_x_10661 + _10673;
	center_offsets_x_10661 = _10674;
	float3 _10676 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10677 = center_offsets_y_10671 + _10676;
	center_offsets_y_10671 = _10677;
	float2 _10678 = -V__phosphor_thickness;
	float2 _10679 = exp(_10678);
	float2 _10681 = float2(1.00000000e+00, 1.00000000e+00) - _10679;
	float2 thickness_scaled = _10681;
	float _10685 = texcoord.x * viewport_frequency_factor.x;
	float3 _10687 = _10685.xxx - center_offsets_x_10661;
	float3 x_adj = _10687;
	float _10691 = texcoord.y * viewport_frequency_factor.y;
	float3 _10693 = _10691.xxx - center_offsets_y_10671;
	float3 y_adj = _10693;
	float3 _10696 = x_adj * float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
	float3 _10698 = _10696 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10700 = _10698 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10701 = frac(_10700);
	float3 _10703 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10701;
	float3 _10705 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10703;
	float3 _10706 = abs(_10705);
	float3 _10708 = float3(1.66666672e-01, 1.66666672e-01, 1.66666672e-01) * _10706;
	float3 texcoord_x_periodic1 = _10708;
	float3 _10711 = x_adj * float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
	float3 _10713 = _10711 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10714 = frac(_10713);
	float3 _10716 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10714;
	float3 _10718 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10716;
	float3 _10719 = abs(_10718);
	float3 _10721 = float3(1.66666672e-01, 1.66666672e-01, 1.66666672e-01) * _10719;
	float3 texcoord_x_periodic2 = _10721;
	float3 _10723 = texcoord_x_periodic1 * texcoord_x_periodic1;
	float3 _10725 = float3(2.77777798e-02, 2.77777798e-02, 2.77777798e-02) - _10723;
	float3 _10726 = sqrt(_10725);
	float3 ty1 = _10726;
	float3 _10728 = texcoord_x_periodic2 * texcoord_x_periodic2;
	float3 _10730 = float3(2.77777798e-02, 2.77777798e-02, 2.77777798e-02) - _10728;
	float3 _10731 = sqrt(_10730);
	float3 ty2 = _10731;
	float _10735 = 1.00000000e+00 - thickness_scaled.x;
	float _10736 = rcp(_10735);
	float _10738 = thickness_scaled.x * _10736;
	float _10739 = log(_10738);
	float _10742 = shadow_q.x * 1.66666657e-01;
	float _10743 = _10739 - _10742;
	float _10744 = -_10743;
	float _10745 = exp(_10744);
	float shadow_px = _10745;
	float _10749 = 1.00000000e+00 - thickness_scaled.y;
	float _10750 = rcp(_10749);
	float _10752 = thickness_scaled.y * _10750;
	float _10753 = log(_10752);
	float3 _10755 = ty1 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float _10757 = rcp(3.33333343e-01);
	float3 _10759 = _10755 * _10757.xxx;
	float3 _10761 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10759;
	float3 _10763 = float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) - _10761;
	float3 _10765 = shadow_q.y.xxx * _10763;
	float3 _10767 = _10753.xxx - _10765;
	float3 _10768 = -_10767;
	float3 _10769 = exp(_10768);
	float3 shadow_py1 = _10769;
	float _10773 = 1.00000000e+00 - thickness_scaled.y;
	float _10774 = rcp(_10773);
	float _10776 = thickness_scaled.y * _10774;
	float _10777 = log(_10776);
	float3 _10779 = ty2 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float _10781 = rcp(3.33333343e-01);
	float3 _10783 = _10779 * _10781.xxx;
	float3 _10785 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10783;
	float3 _10787 = float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01) - _10785;
	float3 _10789 = shadow_q.y.xxx * _10787;
	float3 _10791 = _10777.xxx - _10789;
	float3 _10792 = -_10791;
	float3 _10793 = exp(_10792);
	float3 shadow_py2 = _10793;
	float3 _10796 = x_adj * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10797 = frac(_10796);
	float3 _10799 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10797;
	float3 _10801 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10799;
	float3 _10802 = abs(_10801);
	float3 theta_x1_10803 = _10802;
	float3 _10805 = theta_x1_10803 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10807 = _10805 * shadow_q.x.xxx;
	float3 _10808 = exp(_10807);
	float3 alpha_x1_10809 = _10808;
	float3 _10811 = alpha_x1_10809 + shadow_px.xxx;
	float3 _10812 = rcp(_10811);
	float3 _10813 = alpha_x1_10809 * _10812;
	alpha_x1_10809 = _10813;
	float3 _10815 = x_adj + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10817 = _10815 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10818 = frac(_10817);
	float3 _10820 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10818;
	float3 _10822 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10820;
	float3 _10823 = abs(_10822);
	float3 theta_x2_10824 = _10823;
	float3 _10826 = theta_x2_10824 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10828 = _10826 * shadow_q.x.xxx;
	float3 _10829 = exp(_10828);
	float3 alpha_x2_10830 = _10829;
	float3 _10832 = alpha_x2_10830 + shadow_px.xxx;
	float3 _10833 = rcp(_10832);
	float3 _10834 = alpha_x2_10830 * _10833;
	alpha_x2_10830 = _10834;
	float3 _10836 = y_adj * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10837 = frac(_10836);
	float3 _10839 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10837;
	float3 _10841 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10839;
	float3 _10842 = abs(_10841);
	float3 theta_y1_10843 = _10842;
	float3 _10845 = theta_y1_10843 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10847 = _10845 * shadow_q.y.xxx;
	float3 _10848 = exp(_10847);
	float3 alpha_y1_10849 = _10848;
	float3 _10850 = alpha_y1_10849 + shadow_py1;
	float3 _10851 = rcp(_10850);
	float3 _10852 = alpha_y1_10849 * _10851;
	alpha_y1_10849 = _10852;
	float3 _10854 = y_adj + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10856 = _10854 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10857 = frac(_10856);
	float3 _10859 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10857;
	float3 _10861 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10859;
	float3 _10862 = abs(_10861);
	float3 theta_y2_10863 = _10862;
	float3 _10865 = theta_y2_10863 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10867 = _10865 * shadow_q.y.xxx;
	float3 _10868 = exp(_10867);
	float3 alpha_y2_10869 = _10868;
	float3 _10870 = alpha_y2_10869 + shadow_py2;
	float3 _10871 = rcp(_10870);
	float3 _10872 = alpha_y2_10869 * _10871;
	alpha_y2_10869 = _10872;
	float3 _10873 = alpha_x1_10809 * alpha_y1_10849;
	float3 _10874 = alpha_x2_10830 * alpha_y2_10869;
	float3 _10875 = _10873 + _10874;
	return _10875;
}
float3 F__get_phosphor_intensity_grille_small(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 grille_pq_x)
{
	bool _10882 = V__geom_rotation_mode == 2u;
	bool _10884 = V__geom_rotation_mode == 3u;
	bool _10885 = _10882 || _10884;
	float3 _10889 = _10885.xxx ? float3(7.50000000e-01, 2.50000000e-01, 7.50000000e-01) : float3(2.50000000e-01, 7.50000000e-01, 2.50000000e-01);
	float3 center_offsets_x_10890 = _10889;
	float3 _10892 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10893 = center_offsets_x_10890 + _10892;
	center_offsets_x_10890 = _10893;
	float _10896 = texcoord.x * viewport_frequency_factor.x;
	float3 _10898 = _10896.xxx - center_offsets_x_10890;
	float3 _10900 = _10898 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10901 = frac(_10900);
	float3 _10903 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10901;
	float3 _10905 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10903;
	float3 _10906 = abs(_10905);
	float3 theta_10907 = _10906;
	float3 _10909 = theta_10907 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10911 = _10909 * grille_pq_x.y.xxx;
	float3 _10912 = exp(_10911);
	float3 alpha_10913 = _10912;
	float3 _10915 = alpha_10913 + grille_pq_x.x.xxx;
	float3 _10916 = rcp(_10915);
	float3 _10917 = alpha_10913 * _10916;
	alpha_10913 = _10917;
	float3 _10918 = sqrt(alpha_10913);
	return _10918;
}
float3 F__get_phosphor_intensity_slot_small(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 slot_pq_x,
	in float2 slot_pq_y)
{
	bool _10926 = V__geom_rotation_mode == 2u;
	bool _10928 = V__geom_rotation_mode == 3u;
	bool _10929 = _10926 || _10928;
	float3 _10933 = _10929.xxx ? float3(7.50000000e-01, 2.50000000e-01, 7.50000000e-01) : float3(2.50000000e-01, 7.50000000e-01, 2.50000000e-01);
	float3 center_offsets_x_10934 = _10933;
	bool _10936 = V__geom_rotation_mode == 2u;
	bool _10938 = V__geom_rotation_mode == 3u;
	bool _10939 = _10936 || _10938;
	float3 _10943 = _10939.xxx ? float3(3.75000000e-01, 3.75000000e-01, 3.75000000e-01) : float3(3.75000000e-01, 3.75000000e-01, 3.75000000e-01);
	float3 center_offsets_y1 = _10943;
	bool _10946 = V__geom_rotation_mode == 2u;
	bool _10948 = V__geom_rotation_mode == 3u;
	bool _10949 = _10946 || _10948;
	float3 _10953 = _10949.xxx ? float3(6.25000000e-01, 6.25000000e-01, 6.25000000e-01) : float3(6.25000000e-01, 6.25000000e-01, 6.25000000e-01);
	float3 center_offsets_y2 = _10953;
	float3 _10956 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10957 = center_offsets_x_10934 + _10956;
	center_offsets_x_10934 = _10957;
	float3 _10959 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10960 = center_offsets_y1 + _10959;
	center_offsets_y1 = _10960;
	float3 _10962 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10963 = center_offsets_y2 + _10962;
	center_offsets_y2 = _10963;
	float _10966 = texcoord.x * viewport_frequency_factor.x;
	float3 _10968 = _10966.xxx - center_offsets_x_10934;
	float3 _10970 = _10968 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10971 = frac(_10970);
	float3 _10973 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10971;
	float3 _10975 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10973;
	float3 _10976 = abs(_10975);
	float3 theta_x1_10977 = _10976;
	float3 _10979 = theta_x1_10977 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10981 = _10979 * slot_pq_x.y.xxx;
	float3 _10982 = exp(_10981);
	float3 alpha_x1_10983 = _10982;
	float3 _10985 = alpha_x1_10983 + slot_pq_x.x.xxx;
	float3 _10986 = rcp(_10985);
	float3 _10987 = alpha_x1_10983 * _10986;
	alpha_x1_10983 = _10987;
	float _10990 = texcoord.x * viewport_frequency_factor.x;
	float3 _10992 = _10990.xxx - center_offsets_x_10934;
	float3 _10994 = _10992 + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _10996 = _10994 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _10997 = frac(_10996);
	float3 _10999 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _10997;
	float3 _11001 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _10999;
	float3 _11002 = abs(_11001);
	float3 theta_x2_11003 = _11002;
	float3 _11005 = theta_x2_11003 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11007 = _11005 * slot_pq_x.y.xxx;
	float3 _11008 = exp(_11007);
	float3 alpha_x2_11009 = _11008;
	float3 _11011 = alpha_x2_11009 + slot_pq_x.x.xxx;
	float3 _11012 = rcp(_11011);
	float3 _11013 = alpha_x2_11009 * _11012;
	alpha_x2_11009 = _11013;
	float _11016 = texcoord.y * viewport_frequency_factor.y;
	float3 _11018 = _11016.xxx - center_offsets_y1;
	float3 _11020 = _11018 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11021 = frac(_11020);
	float3 _11023 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11021;
	float3 _11025 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11023;
	float3 _11026 = abs(_11025);
	float3 theta_y1_11027 = _11026;
	float3 _11029 = theta_y1_11027 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11031 = _11029 * slot_pq_y.y.xxx;
	float3 _11032 = exp(_11031);
	float3 alpha_y1_11033 = _11032;
	float3 _11035 = alpha_y1_11033 + slot_pq_y.x.xxx;
	float3 _11036 = rcp(_11035);
	float3 _11037 = alpha_y1_11033 * _11036;
	alpha_y1_11033 = _11037;
	float _11040 = texcoord.y * viewport_frequency_factor.y;
	float3 _11042 = _11040.xxx - center_offsets_y2;
	float3 _11044 = _11042 + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11046 = _11044 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11047 = frac(_11046);
	float3 _11049 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11047;
	float3 _11051 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11049;
	float3 _11052 = abs(_11051);
	float3 theta_y2_11053 = _11052;
	float3 _11055 = theta_y2_11053 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11057 = _11055 * slot_pq_y.y.xxx;
	float3 _11058 = exp(_11057);
	float3 alpha_y2_11059 = _11058;
	float3 _11061 = alpha_y2_11059 + slot_pq_y.x.xxx;
	float3 _11062 = rcp(_11061);
	float3 _11063 = alpha_y2_11059 * _11062;
	alpha_y2_11059 = _11063;
	float3 _11064 = alpha_x1_10983 * alpha_y1_11033;
	float3 _11065 = alpha_x2_11009 * alpha_y2_11059;
	float3 _11066 = _11064 + _11065;
	return _11066;
}
float3 F__get_phosphor_intensity_shadow_small(
	in float2 texcoord,
	in float2 viewport_frequency_factor,
	in float2 shadow_pq_x,
	in float2 shadow_pq_y)
{
	bool _11074 = V__geom_rotation_mode == 2u;
	bool _11076 = V__geom_rotation_mode == 3u;
	bool _11077 = _11074 || _11076;
	float3 _11081 = _11077.xxx ? float3(7.50000000e-01, 2.50000000e-01, 7.50000000e-01) : float3(2.50000000e-01, 7.50000000e-01, 2.50000000e-01);
	float3 center_offsets_x_11082 = _11081;
	bool _11084 = V__geom_rotation_mode == 2u;
	bool _11086 = V__geom_rotation_mode == 3u;
	bool _11087 = _11084 || _11086;
	float3 _11091 = _11087.xxx ? float3(8.50000000e+00, 8.50000000e+00, 8.50000000e+00) : float3(8.50000000e+00, 8.50000000e+00, 8.50000000e+00);
	float3 center_offsets_y_11092 = _11091;
	float3 _11094 = V__phosphor_offset_x * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11095 = center_offsets_x_11082 + _11094;
	center_offsets_x_11082 = _11095;
	float3 _11097 = V__phosphor_offset_y * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11098 = center_offsets_y_11092 + _11097;
	center_offsets_y_11092 = _11098;
	float _11101 = texcoord.x * viewport_frequency_factor.x;
	float3 _11103 = _11101.xxx - center_offsets_x_11082;
	float3 _11105 = _11103 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11106 = frac(_11105);
	float3 _11108 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11106;
	float3 _11110 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11108;
	float3 _11111 = abs(_11110);
	float3 theta_x1_11112 = _11111;
	float3 _11114 = theta_x1_11112 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11116 = _11114 * shadow_pq_x.y.xxx;
	float3 _11117 = exp(_11116);
	float3 alpha_x1_11118 = _11117;
	float3 _11120 = alpha_x1_11118 + shadow_pq_x.x.xxx;
	float3 _11121 = rcp(_11120);
	float3 _11122 = alpha_x1_11118 * _11121;
	alpha_x1_11118 = _11122;
	float _11125 = texcoord.x * viewport_frequency_factor.x;
	float3 _11127 = _11125.xxx - center_offsets_x_11082;
	float3 _11129 = _11127 + float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11131 = _11129 * float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11132 = frac(_11131);
	float3 _11134 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11132;
	float3 _11136 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11134;
	float3 _11137 = abs(_11136);
	float3 theta_x2_11138 = _11137;
	float3 _11140 = theta_x2_11138 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11142 = _11140 * shadow_pq_x.y.xxx;
	float3 _11143 = exp(_11142);
	float3 alpha_x2_11144 = _11143;
	float3 _11146 = alpha_x2_11144 + shadow_pq_x.x.xxx;
	float3 _11147 = rcp(_11146);
	float3 _11148 = alpha_x2_11144 * _11147;
	alpha_x2_11144 = _11148;
	float _11151 = texcoord.y * viewport_frequency_factor.y;
	float3 _11153 = _11151.xxx - center_offsets_y_11092;
	float3 _11155 = _11153 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11156 = frac(_11155);
	float3 _11158 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11156;
	float3 _11160 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11158;
	float3 _11161 = abs(_11160);
	float3 theta_y1_11162 = _11161;
	float3 _11164 = theta_y1_11162 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11166 = _11164 * shadow_pq_y.y.xxx;
	float3 _11167 = exp(_11166);
	float3 alpha_y1_11168 = _11167;
	float3 _11170 = alpha_y1_11168 + shadow_pq_y.x.xxx;
	float3 _11171 = rcp(_11170);
	float3 _11172 = alpha_y1_11168 * _11171;
	alpha_y1_11168 = _11172;
	float _11175 = texcoord.y * viewport_frequency_factor.y;
	float3 _11177 = _11175.xxx - center_offsets_y_11092;
	float3 _11179 = _11177 + float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float3 _11181 = _11179 * float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11182 = frac(_11181);
	float3 _11184 = float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00) * _11182;
	float3 _11186 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - _11184;
	float3 _11187 = abs(_11186);
	float3 theta_y2_11188 = _11187;
	float3 _11190 = theta_y2_11188 - float3(5.00000000e-01, 5.00000000e-01, 5.00000000e-01);
	float3 _11192 = _11190 * shadow_pq_y.y.xxx;
	float3 _11193 = exp(_11192);
	float3 alpha_y2_11194 = _11193;
	float3 _11196 = alpha_y2_11194 + shadow_pq_y.x.xxx;
	float3 _11197 = rcp(_11196);
	float3 _11198 = alpha_y2_11194 * _11197;
	alpha_y2_11194 = _11198;
	float3 _11199 = alpha_x1_11118 * alpha_y1_11168;
	float3 _11200 = alpha_x2_11144 * alpha_y2_11194;
	float3 _11201 = _11199 + _11200;
	float3 _11202 = sqrt(_11201);
	return _11202;
}
void F__generatePhosphorMaskVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float2 viewport_frequency_factor : TEXCOORD1,
	out float2 mask_pq_x : TEXCOORD2,
	out float2 mask_pq_y : TEXCOORD3)
{
	float _11213 = ((float)V__frame_count) % 6.40000000e+01;
	float screen_segment_idx = _11213;
	float _11216 = 1.56250000e-02 * screen_segment_idx;
	bool _11218 = V__overlay_active > 0;
	float _11221 = lerp(_11216, 0.00000000e+00, ((float)_11218));
	float left_coord = _11221;
	float _11224 = left_coord + 2.34375000e-02;
	bool _11226 = V__overlay_active > 0;
	float _11229 = lerp(_11224, 1.00000000e+00, ((float)_11226));
	float right_coord = _11229;
	float _11232 = left_coord + 1.17187500e-02;
	float _11234 = _11232 - 5.00000000e-01;
	float _11236 = 2.00000000e+00 * _11234;
	float pos_center = _11236;
	float _11239 = pos_center - 2.34375000e-02;
	bool _11241 = V__overlay_active > 0;
	float _11244 = lerp(_11239, -1.00000000e+00, ((float)_11241));
	float pos_left = _11244;
	float _11247 = pos_center + 2.34375000e-02;
	bool _11249 = V__overlay_active > 0;
	float _11252 = lerp(_11247, 1.00000000e+00, ((float)_11249));
	float pos_right = _11252;
	uint _11255 = id & 1u;
	float _11257 = ((bool)_11255) ? right_coord : left_coord;
	texcoord[0] = _11257;
	uint _11259 = id & 2u;
	int _11263 = ((bool)_11259) ? 1 : 0;
	texcoord[1] = ((float)_11263);
	uint _11266 = id & 1u;
	float _11268 = ((bool)_11266) ? pos_right : pos_left;
	position[0] = _11268;
	uint _11270 = id & 2u;
	int _11274 = ((bool)_11270) ? -1 : 1;
	position[1] = ((float)_11274);
	position.zw = float2(1.00000000e+00, 1.00000000e+00);
	float2 _11277 = F__calc_phosphor_viewport_frequency_factor();
	viewport_frequency_factor = _11277;
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
	float2 _11299 = -V__phosphor_thickness;
	float2 _11300 = exp(_11299);
	float2 _11302 = float2(1.00000000e+00, 1.00000000e+00) - _11300;
	float2 thickness_scaled_11303 = _11302;
	float _11306 = 1.00000000e+00 - thickness_scaled_11303.x;
	float _11307 = rcp(_11306);
	float _11309 = thickness_scaled_11303.x * _11307;
	float _11310 = log(_11309);
	float _11312 = 2.00000000e+00 * edge_norm_tx;
	float _11314 = 5.00000000e-01 - _11312;
	float _11316 = V__phosphor_sharpness.x * _11314;
	float _11317 = _11310 - _11316;
	float _11318 = -_11317;
	float _11319 = exp(_11318);
	float mask_p_x = _11319;
	float _11323 = 1.00000000e+00 - thickness_scaled_11303.y;
	float _11324 = rcp(_11323);
	float _11326 = thickness_scaled_11303.y * _11324;
	float _11327 = log(_11326);
	float _11329 = 2.00000000e+00 * edge_norm_ty;
	float _11331 = 5.00000000e-01 - _11329;
	float _11333 = V__phosphor_sharpness.y * _11331;
	float _11334 = _11327 - _11333;
	float _11335 = -_11334;
	float _11336 = exp(_11335);
	float mask_p_y = _11336;
	float2 _11339 = float2(mask_p_x, V__phosphor_sharpness.x);
	mask_pq_x = _11339;
	float2 _11341 = float2(mask_p_y, V__phosphor_sharpness.y);
	mask_pq_y = _11341;
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
	bool _11354 = V__geom_rotation_mode == 1u;
	bool _11356 = V__geom_rotation_mode == 3u;
	bool _11357 = _11354 || _11356;
	[branch] if (_11357)
	{
		texcoord = texcoord.yx;
		viewport_frequency_factor = viewport_frequency_factor.yx;
	}
	float3 phosphor_color = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _11366 = V__mask_type == 0;
	[branch] if (_11366)
	{
		float2 _11367;
		float2 _11368;
		float2 _11369;
		_11367 = texcoord;
		_11368 = viewport_frequency_factor;
		_11369 = mask_pq_x;
		float3 _11370 = F__get_phosphor_intensity_grille(_11367, _11368, _11369);
		phosphor_color = _11370;
	}
	else
	{
		bool _11375 = V__mask_type == 1;
		if (_11375)
		{
			float2 _11376;
			float2 _11377;
			float2 _11378;
			float2 _11379;
			_11376 = texcoord;
			_11377 = viewport_frequency_factor;
			_11378 = mask_pq_x;
			_11379 = mask_pq_y;
			float3 _11380 = F__get_phosphor_intensity_slot(_11376, _11377, _11378, _11379);
			phosphor_color = _11380;
		}
		else
		{
			bool _11385 = V__mask_type == 2;
			if (_11385)
			{
				float2 _11388 = float2(mask_pq_x.y, mask_pq_y.y);
				float2 _11389;
				float2 _11390;
				float2 _11391;
				_11389 = texcoord;
				_11390 = viewport_frequency_factor;
				_11391 = _11388;
				float3 _11392 = F__get_phosphor_intensity_shadow(_11389, _11390, _11391);
				phosphor_color = _11392;
			}
			else
			{
				bool _11397 = V__mask_type == 3;
				if (_11397)
				{
					float2 _11398;
					float2 _11399;
					float2 _11400;
					_11398 = texcoord;
					_11399 = viewport_frequency_factor;
					_11400 = mask_pq_x;
					float3 _11401 = F__get_phosphor_intensity_grille_small(_11398, _11399, _11400);
					phosphor_color = _11401;
				}
				else
				{
					bool _11406 = V__mask_type == 4;
					if (_11406)
					{
						float2 _11407;
						float2 _11408;
						float2 _11409;
						float2 _11410;
						_11407 = texcoord;
						_11408 = viewport_frequency_factor;
						_11409 = mask_pq_x;
						_11410 = mask_pq_y;
						float3 _11411 = F__get_phosphor_intensity_slot_small(_11407, _11408, _11409, _11410);
						phosphor_color = _11411;
					}
					else
					{
						float2 _11412;
						float2 _11413;
						float2 _11414;
						float2 _11415;
						_11412 = texcoord;
						_11413 = viewport_frequency_factor;
						_11414 = mask_pq_x;
						_11415 = mask_pq_y;
						float3 _11416 = F__get_phosphor_intensity_shadow_small(_11412, _11413, _11414, _11415);
						phosphor_color = _11416;
					}
				}
			}
		}
	}
	float4 _11421 = float4(phosphor_color.x, phosphor_color.y, phosphor_color.z, 1.00000000e+00);
	color = _11421;
	return;
}
void F__applyComputedPhosphorMaskPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	bool _11428 = V__scanline_deinterlacing_mode == 2u;
	bool _11430 = V__scanline_deinterlacing_mode == 3u;
	bool _11431 = _11428 || _11430;
	bool _11432 = V__enable_interlacing && _11431;
	bool use_deinterlacing_tex_11433 = _11432;
	float3 scanline_color_dim = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	[branch] if (use_deinterlacing_tex_11433)
	{
		float4 _11439 = V__samplerDeinterlace.t.Sample(V__samplerDeinterlace.s, texcoord);
		scanline_color_dim = _11439.xyz;
	}
	else
	{
		float4 _11441 = V__samplerBeamConvergence.t.Sample(V__samplerBeamConvergence.s, texcoord);
		scanline_color_dim = _11441.xyz;
	}
	float4 _11443 = V__samplerPhosphorMask.t.Sample(V__samplerPhosphorMask.s, texcoord);
	float3 phosphor_color_11445 = _11443.xyz;
	float _11446 = F__get_intermediate_gamma();
	float2 _11447;
	float _11448;
	_11447 = texcoord;
	_11448 = _11446;
	float4 _11449 = F__tex2D_linearize(V__samplerBlurHorizontal, _11447, _11448);
	float3 halation_color = _11449.xyz;
	float _11453 = dot(halation_color, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _11455 = _11453 / 3.00000000e+00;
	float halation_intensity_dim_scalar = _11455;
	float3 halation_intensity_dim = halation_intensity_dim_scalar.xxx;
	float3 _11460 = lerp(scanline_color_dim, halation_intensity_dim, V__halation_weight.xxx);
	float3 electron_intensity_dim = _11460;
	float3 _11462 = electron_intensity_dim * phosphor_color_11445;
	float3 phosphor_emission_dim = _11462;
	float4 _11468 = float4(phosphor_emission_dim.x, phosphor_emission_dim.y, phosphor_emission_dim.z, 1.00000000e+00);
	color = _11468;
	return;
}
float F__get_min_sigma_to_blur_triad(
	in float triad_size,
	in float thresh)
{
	float _11474 = 6.11299992e-01 * triad_size;
	float _11476 = -5.16799986e-02 + _11474;
	float _11478 = 1.12199998e+00 * triad_size;
	float _11480 = 4.15999995e-04 + thresh;
	float _11481 = sqrt(_11480);
	float _11482 = _11478 * _11481;
	float _11483 = _11476 - _11482;
	return _11483;
}
float F__get_absolute_scale_blur_sigma(
	in float thresh)
{
	float _11487;
	float _11488;
	_11487 = 1.02400000e+04;
	_11488 = thresh;
	float _11490 = F__get_min_sigma_to_blur_triad(_11487, _11488);
	float _11492 = 9.04224578e-07 * _11490;
	return _11492;
}
float F__get_center_weight(
	in float sigma)
{
	float _11496;
	_11496 = sigma;
	float _11497 = F__get_fast_gaussian_weight_sum_inv(_11496);
	return _11497;
}
float3 F__tex2DblurNfast(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2 dxdy,
	in float sigma,
	in float input_gamma)
{
	float2 _11505;
	float2 _11506;
	float _11507;
	float _11508;
	_11505 = tex_uv;
	_11506 = dxdy;
	_11507 = sigma;
	_11508 = input_gamma;
	float3 _11509 = F__tex2Dblur9fast(tex, _11505, _11506, _11507, _11508);
	return _11509;
}
float F__get_bloom_approx_sigma(
	in float output_size_x_runtime,
	in float estimated_viewport_size_x)
{
	float _11516 = max(1.44000000e+02, 4.80000000e+02);
	float mask_num_triads_static = _11516;
	float _11518 = estimated_viewport_size_x / V__mask_triad_width;
	float mask_num_triads_from_size = _11518;
	float _11521 = lerp(mask_num_triads_from_size, V__mask_num_triads_across, ((float)V__mask_size_param));
	float _11523 = max(1.44000000e+02, _11521);
	float mask_num_triads_runtime = _11523;
	if (true)
	{
		float _11530 = 1.47456000e+06 / mask_num_triads_runtime;
		float asymptotic_triad_size = _11530;
		float _11532;
		float _11533;
		_11532 = asymptotic_triad_size;
		_11533 = 3.90625000e-03;
		float _11535 = F__get_min_sigma_to_blur_triad(_11532, _11533);
		float asymptotic_sigma = _11535;
		float _11537 = asymptotic_sigma * output_size_x_runtime;
		float _11539 = _11537 / 1.47456000e+06;
		float bloom_approx_sigma = _11539;
		float2 _11541 = float2(bloom_approx_sigma, V__gaussian_beam_max_sigma);
		float _11542 = length(_11541);
		return _11542;
	}
	else
	{
		float _11544 = 1.47456000e+06 / mask_num_triads_static;
		float asymptotic_triad_size_11545 = _11544;
		float _11546;
		float _11547;
		_11546 = asymptotic_triad_size_11545;
		_11547 = 3.90625000e-03;
		float _11549 = F__get_min_sigma_to_blur_triad(_11546, _11547);
		float asymptotic_sigma_11550 = _11549;
		float _11552 = asymptotic_sigma_11550 * 3.20000000e+02;
		float _11554 = _11552 / 1.47456000e+06;
		float bloom_approx_sigma_11555 = _11554;
		float2 _11557 = float2(bloom_approx_sigma_11555, 3.00000012e-01);
		float _11558 = length(_11557);
		return _11558;
	}
}
float F__get_final_bloom_sigma(
	in float bloom_sigma_runtime)
{
	float _11562;
	float _11563;
	_11562 = 3.00000000e+00;
	_11563 = 3.90625000e-03;
	float _11566 = F__get_min_sigma_to_blur_triad(_11562, _11563);
	float bloom_sigma_optimistic = _11566;
	return bloom_sigma_runtime;
}
void F__brightpassVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float bloom_sigma_runtime : TEXCOORD1)
{
	uint _11574;
	float4 _11575;
	float2 _11576;
	_11574 = id;
	F__PostProcessVS(_11574, _11575, _11576);
	position = _11575;
	texcoord = _11576;
	float2 _11578 = F__calc_triad_size();
	float _11579;
	float _11580;
	_11579 = _11578.x;
	_11580 = 3.90625000e-03;
	float _11583 = F__get_min_sigma_to_blur_triad(_11579, _11580);
	bloom_sigma_runtime = _11583;
	return;
}
void F__brightpassPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float bloom_sigma_runtime : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _11590 = F__get_intermediate_gamma();
	float2 _11591;
	float _11592;
	_11591 = texcoord;
	_11592 = _11590;
	float4 _11593 = F__tex2D_linearize(V__samplerMaskedScanlines, _11591, _11592);
	float3 intensity_dim = _11593.xyz;
	float _11596 = F__get_mask_amplify();
	float mask_amplify_11597 = _11596;
	float _11599 = rcp(5.00000000e-01);
	float3 _11601 = intensity_dim * _11599.xxx;
	float3 _11603 = _11601 * mask_amplify_11597.xxx;
	float3 _11605 = _11603 * V__levels_contrast.xxx;
	float3 intensity = _11605;
	float _11607 = F__get_intermediate_gamma();
	float2 _11608;
	float _11609;
	_11608 = texcoord;
	_11609 = _11607;
	float4 _11610 = F__tex2D_linearize(V__samplerBloomApproxHoriz, _11608, _11609);
	float3 _11613 = V__levels_contrast.xxx * _11610.xyz;
	float3 phosphor_blur_approx = _11613;
	float _11615;
	_11615 = bloom_sigma_runtime;
	float _11616 = F__get_final_bloom_sigma(_11615);
	float bloom_sigma = _11616;
	float _11618;
	_11618 = bloom_sigma;
	float _11619 = F__get_center_weight(_11618);
	float center_weight = _11619;
	float3 _11622 = center_weight.xxx * intensity;
	float3 _11623 = phosphor_blur_approx - _11622;
	float3 _11625 = max(float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), _11623);
	float3 max_area_contribution_approx = _11625;
	float3 _11628 = V__bloom_underestimate_levels.xxx * max_area_contribution_approx;
	float3 area_contrib_underestimate = _11628;
	float3 _11631 = V__bloom_underestimate_levels.xxx * intensity;
	float3 intensity_underestimate = _11631;
	float3 _11634 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - area_contrib_underestimate;
	float3 _11635 = _11634 / intensity_underestimate;
	float3 _11637 = _11635 - float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float _11639 = center_weight - 1.00000000e+00;
	float3 _11641 = _11637 / _11639.xxx;
	float3 blur_ratio_temp = _11641;
	float3 _11643 = saturate(blur_ratio_temp);
	float3 blur_ratio = _11643;
	float3 _11647 = lerp(blur_ratio, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00), V__bloom_excess.xxx);
	float3 _11648 = intensity_dim * _11647;
	float3 brightpass = _11648;
	float4 _11654 = float4(brightpass.x, brightpass.y, brightpass.z, 1.00000000e+00);
	float _11655 = F__get_intermediate_gamma();
	float4 _11656;
	float _11657;
	_11656 = _11654;
	_11657 = _11655;
	float4 _11658 = F__encode_output(_11656, _11657);
	color = _11658;
	return;
}
void F__approximateBloomVertPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _11665 = rcp(1.08000000e+03);
	float2 _11667 = float2(0.00000000e+00, _11665);
	float2 _11669 = V__blur_radius.xx * _11667;
	float2 delta_uv_11670 = _11669;
	float2 _11671;
	uint _11672;
	float2 _11673;
	_11671 = texcoord;
	_11672 = 1u;
	_11673 = delta_uv_11670;
	float3 _11675 = F__opaque_linear_downsample(V__samplerBeamConvergence, _11671, _11672, _11673);
	float4 _11680 = float4(_11675.x, _11675.y, _11675.z, 1.00000000e+00);
	color = _11680;
	return;
}
void F__approximateBloomHorizPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _11687 = rcp(1.44000000e+03);
	float2 _11689 = float2(_11687, 0.00000000e+00);
	float2 _11691 = V__blur_radius.xx * _11689;
	float2 delta_uv_11692 = _11691;
	float2 _11693;
	uint _11694;
	float2 _11695;
	_11693 = texcoord;
	_11694 = 1u;
	_11695 = delta_uv_11692;
	float3 _11697 = F__opaque_linear_downsample(V__samplerBloomApproxVert, _11693, _11694, _11695);
	float4 _11702 = float4(_11697.x, _11697.y, _11697.z, 1.00000000e+00);
	color = _11702;
	return;
}
void F__bloomHorizontalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float bloom_sigma_runtime : TEXCOORD1)
{
	uint _11709;
	float4 _11710;
	float2 _11711;
	_11709 = id;
	F__PostProcessVS(_11709, _11710, _11711);
	position = _11710;
	texcoord = _11711;
	float2 _11713 = F__calc_triad_size();
	float _11714;
	float _11715;
	_11714 = _11713.x;
	_11715 = 3.90625000e-03;
	float _11718 = F__get_min_sigma_to_blur_triad(_11714, _11715);
	bloom_sigma_runtime = _11718;
	return;
}
void F__bloomHorizontalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float bloom_sigma_runtime : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _11726 = rcp(1.44000000e+03);
	float2 _11728 = float2(_11726, 0.00000000e+00);
	float2 bloom_dxdy = _11728;
	float _11730;
	_11730 = bloom_sigma_runtime;
	float _11731 = F__get_final_bloom_sigma(_11730);
	float bloom_sigma_11732 = _11731;
	float _11733 = F__get_intermediate_gamma();
	float2 _11734;
	float2 _11735;
	float _11736;
	float _11737;
	_11734 = texcoord;
	_11735 = bloom_dxdy;
	_11736 = bloom_sigma_11732;
	_11737 = _11733;
	float3 _11738 = F__tex2DblurNfast(V__samplerBloomVertical, _11734, _11735, _11736, _11737);
	float3 blurred_brightpass = _11738;
	float _11740 = F__get_intermediate_gamma();
	float2 _11741;
	float _11742;
	_11741 = texcoord;
	_11742 = _11740;
	float4 _11743 = F__tex2D_linearize(V__samplerMaskedScanlines, _11741, _11742);
	float3 intensity_dim_11745 = _11743.xyz;
	float _11746 = F__get_mask_amplify();
	float mask_amplify_11747 = _11746;
	float _11748 = F__get_intermediate_gamma();
	float2 _11749;
	float _11750;
	_11749 = texcoord;
	_11750 = _11748;
	float4 _11751 = F__tex2D_linearize(V__samplerBrightpass, _11749, _11750);
	float3 brightpass_11753 = _11751.xyz;
	float3 _11754 = intensity_dim_11745 - brightpass_11753;
	float3 dimpass = _11754;
	float3 _11756 = dimpass + blurred_brightpass;
	float3 _11758 = _11756 * mask_amplify_11747.xxx;
	float3 _11760 = _11758 * float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
	float3 _11762 = _11760 * V__levels_contrast.xxx;
	float3 phosphor_bloom = _11762;
	float _11764 = F__get_intermediate_gamma();
	float2 _11765;
	float _11766;
	_11765 = texcoord;
	_11766 = _11764;
	float4 _11767 = F__tex2D_linearize(V__samplerBlurHorizontal, _11765, _11766);
	float3 raw_diffusion_color = _11767.xyz;
	float _11771 = dot(raw_diffusion_color, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _11773 = _11771 / 3.00000000e+00;
	float3 raw_halation_color = _11773.xxx;
	float3 _11777 = lerp(raw_diffusion_color, raw_halation_color, V__halation_weight.xxx);
	float3 _11779 = V__levels_contrast.xxx * _11777;
	float3 diffusion_color = _11779;
	float3 _11782 = lerp(phosphor_bloom, diffusion_color, V__diffusion_weight.xxx);
	float3 final_bloom = _11782;
	float4 _11788 = float4(final_bloom.x, final_bloom.y, final_bloom.z, 1.00000000e+00);
	float _11789 = F__get_intermediate_gamma();
	float4 _11790;
	float _11791;
	_11790 = _11788;
	_11791 = _11789;
	float4 _11792 = F__encode_output(_11790, _11791);
	color = _11792;
	return;
}
void F__bloomVerticalVS(
	in uint id : SV_VERTEXID,
	out float4 position : SV_POSITION,
	out float2 texcoord : TEXCOORD0,
	out float bloom_sigma_runtime : TEXCOORD1)
{
	uint _11799;
	float4 _11800;
	float2 _11801;
	_11799 = id;
	F__PostProcessVS(_11799, _11800, _11801);
	position = _11800;
	texcoord = _11801;
	float2 _11803 = F__calc_triad_size();
	float _11804;
	float _11805;
	_11804 = _11803.x;
	_11805 = 3.90625000e-03;
	float _11808 = F__get_min_sigma_to_blur_triad(_11804, _11805);
	bloom_sigma_runtime = _11808;
	return;
}
void F__bloomVerticalPS(
	in float4 pos : SV_POSITION,
	in float2 texcoord : TEXCOORD0,
	in float bloom_sigma_runtime : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float _11816 = rcp(1.08000000e+03);
	float2 _11818 = float2(0.00000000e+00, _11816);
	float2 bloom_dxdy_11819 = _11818;
	float _11820;
	_11820 = bloom_sigma_runtime;
	float _11821 = F__get_final_bloom_sigma(_11820);
	float bloom_sigma_11822 = _11821;
	float _11823 = F__get_intermediate_gamma();
	float2 _11824;
	float2 _11825;
	float _11826;
	float _11827;
	_11824 = texcoord;
	_11825 = bloom_dxdy_11819;
	_11826 = bloom_sigma_11822;
	_11827 = _11823;
	float3 _11828 = F__tex2DblurNfast(V__samplerBrightpass, _11824, _11825, _11826, _11827);
	float3 color3_11829 = _11828;
	float4 _11834 = float4(color3_11829.x, color3_11829.y, color3_11829.z, 1.00000000e+00);
	float _11835 = F__get_intermediate_gamma();
	float4 _11836;
	float _11837;
	_11836 = _11834;
	_11837 = _11835;
	float4 _11838 = F__encode_output(_11836, _11837);
	color = _11838;
	return;
}
void F__assign_aa_cubic_constants()
{
	return;
}
float4 F__get_subpixel_support_diam_and_final_axis_importance()
{
	float _11846 = true ? 3.00000000e+00 : 5.00000000e-01;
	float _11849 = true ? 2.00000000e+00 : _11846;
	float _11852 = false ? 1.00000000e+00 : _11849;
	float _11855 = false ? 1.00000000e+00 : _11852;
	float _11858 = false ? 5.00000000e-01 : _11855;
	float base_support_radius = _11858;
	float2 _11860 = float2(base_support_radius, base_support_radius);
	float2 _11861 = F__get_aa_subpixel_r_offset();
	float2 _11862 = abs(_11861);
	float2 _11863 = _11860 + _11862;
	float2 subpixel_support_radius_raw = _11863;
	if (false)
	{
		float2 _11870 = float2(2.00000000e+00, 2.00000000e+00) * subpixel_support_radius_raw;
		float2 subpixel_support_diam = _11870;
		float4 _11876 = float4(subpixel_support_diam.x, subpixel_support_diam.y, 1.00000000e+00, 1.00000000e+00);
		return _11876;
	}
	else
	{
		float2 _11878 = subpixel_support_radius_raw * float2(1.00000000e+00, 0.00000000e+00);
		float2 _11880 = max(float2(5.00000000e-01, 5.00000000e-01), _11878);
		float2 subpixel_support_radius = _11880;
		float2 _11883 = float2(1.00000000e+00, 0.00000000e+00) * subpixel_support_radius_raw;
		float2 _11884 = _11883 / subpixel_support_radius;
		float2 final_axis_importance = _11884;
		float2 _11887 = float2(2.00000000e+00, 2.00000000e+00) * subpixel_support_radius;
		float2 subpixel_support_diam_11888 = _11887;
		float4 _11893 = float4(subpixel_support_diam_11888.x, subpixel_support_diam_11888.y, final_axis_importance.x, final_axis_importance.y);
		return _11893;
	}
}
float F__eval_box_filter(
	in float dist)
{
	float _11897 = abs(dist);
	bool _11899 = _11897 <= 5.00000000e-01;
	return ((float)_11899);
}
float F__eval_separable_box_filter(
	in float2 offset)
{
	float _11905 = abs(offset.x);
	bool _11907 = _11905 <= 5.00000000e-01;
	float _11909 = abs(offset.y);
	bool _11911 = _11909 <= 5.00000000e-01;
	bool2 _11912 = bool2(_11907, _11911);
	bool _11913 = all(_11912);
	return ((float)_11913);
}
float F__eval_tent_filter(
	in float dist)
{
	float _11919 = 1.00000000e+00 - dist;
	float _11921 = _11919 / 1.00000000e+00;
	float _11922 = saturate(_11921);
	return _11922;
}
float F__eval_gaussian_filter(
	in float dist)
{
	float _11926 = dist * dist;
	float _11927 = -_11926;
	float _11929 = _11927 / 5.00000000e-01;
	float _11930 = exp(_11929);
	return _11930;
}
float F__eval_cubic_filter(
	in float dist)
{
	float _11934 = abs(dist);
	float abs_dist = _11934;
	bool _11937 = abs_dist < 1.00000000e+00;
	float _11939 = 9.00000000e+00 * abs_dist;
	float _11941 = _11939 + -1.50000000e+01;
	float _11942 = _11941 * abs_dist;
	float _11943 = _11942 * abs_dist;
	float _11945 = _11943 + 6.00000000e+00;
	bool _11947 = abs_dist < 2.00000000e+00;
	float _11949 = -3.00000000e+00 * abs_dist;
	float _11951 = _11949 + 1.50000000e+01;
	float _11952 = _11951 * abs_dist;
	float _11954 = _11952 + -2.40000000e+01;
	float _11955 = _11954 * abs_dist;
	float _11957 = _11955 + 1.20000000e+01;
	float _11959 = _11947 ? _11957 : 0.00000000e+00;
	float _11960 = _11937 ? _11945 : _11959;
	float _11962 = _11960 / 6.00000000e+00;
	return _11962;
}
float F__eval_separable_cubic_filter(
	in float2 offset)
{
	float _11966;
	_11966 = offset.x;
	float _11968 = F__eval_cubic_filter(_11966);
	float _11969;
	_11969 = offset.y;
	float _11971 = F__eval_cubic_filter(_11969);
	float _11972 = _11968 * _11971;
	return _11972;
}
float2 F__eval_sinc_filter(
	in float2 offset)
{
	float2 _11977 = float2(3.14159274e+00, 3.14159274e+00) * offset;
	float2 pi_offset = _11977;
	float2 _11979 = sin(pi_offset);
	float2 _11980 = _11979 / pi_offset;
	return _11980;
}
float F__eval_separable_lanczos_sinc_filter(
	in float2 offset_unsafe)
{
	bool2 _11985 = offset_unsafe != float2(0.00000000e+00, 0.00000000e+00);
	int _11987 = -((int)_11985.x);
	float2 _11989 = offset_unsafe * ((float2)_11987.xx);
	bool2 _11991 = offset_unsafe > float2(0.00000000e+00, 0.00000000e+00);
	int _11993 = -((int)_11991.x);
	float2 _11995 = _11989 * ((float2)_11993.xx);
	bool2 _11997 = offset_unsafe != float2(0.00000000e+00, 0.00000000e+00);
	int _11999 = -((int)_11997.x);
	float2 _12001 = offset_unsafe * ((float2)_11999.xx);
	bool2 _12003 = offset_unsafe > float2(0.00000000e+00, 0.00000000e+00);
	int _12005 = -((int)_12003.x);
	float2 _12007 = _12001 * ((float2)_12005.xx);
	bool2 _12009 = _12007 >= float2(1.52587891e-05, 1.52587891e-05);
	float2 _12011 = _11995 * ((float2)((int)_12009.x).xx);
	bool2 _12013 = offset_unsafe != float2(0.00000000e+00, 0.00000000e+00);
	int _12015 = -((int)_12013.x);
	float2 _12017 = offset_unsafe * ((float2)_12015.xx);
	bool2 _12019 = offset_unsafe > float2(0.00000000e+00, 0.00000000e+00);
	int _12021 = -((int)_12019.x);
	float2 _12023 = _12017 * ((float2)_12021.xx);
	bool2 _12025 = _12023 < float2(1.52587891e-05, 1.52587891e-05);
	float _12028 = 1.52587891e-05 * ((float)((int)_12025.x));
	float2 _12030 = _12011 + _12028.xx;
	float2 offset_12031 = _12030;
	float2 _12032;
	_12032 = offset_12031;
	float2 _12033 = F__eval_sinc_filter(_12032);
	float2 _12035 = offset_12031 / float2(3.00000000e+00, 3.00000000e+00);
	float2 _12036;
	_12036 = _12035;
	float2 _12037 = F__eval_sinc_filter(_12036);
	float2 _12038 = _12033 * _12037;
	float2 xy_weights = _12038;
	float _12042 = xy_weights.x * xy_weights.y;
	return _12042;
}
float F__eval_jinc_filter_unorm(
	in float x)
{
	float _12047 = 3.84485662e-01 * x;
	float point3845_x = _12047;
	float _12049 = point3845_x * point3845_x;
	float _12050 = -_12049;
	float _12051 = exp(_12050);
	float exp_term = _12051;
	float _12054 = 8.15362334e-01 + x;
	float point8154_plus_x = _12054;
	float _12056 = cos(point8154_plus_x);
	float cos_term = _12056;
	float _12059 = min(x, 6.83134985e+00);
	float _12061 = 2.64727324e-02 * _12059;
	float _12063 = 6.80823565e-01 * exp_term;
	float _12064 = _12061 + _12063;
	float _12066 = min(7.41043186e+00, x);
	float _12068 = -5.97255975e-02 * _12066;
	float _12069 = _12068 * cos_term;
	float _12070 = x * x;
	float _12072 = 6.46074563e-02 * _12070;
	float _12073 = point8154_plus_x + _12072;
	float _12074 = cos(x);
	float _12075 = cos(x);
	float _12076 = _12075 + cos_term;
	float _12077 = max(exp_term, _12076);
	float _12078 = _12074 * _12077;
	float _12079 = _12073 + _12078;
	float _12080 = _12069 / _12079;
	float _12081 = _12064 + _12080;
	float _12083 = _12081 - 1.80837497e-01;
	return _12083;
}
float F__eval_jinc_filter(
	in float dist)
{
	float _12088 = 3.14159274e+00 * dist;
	float _12089;
	_12089 = _12088;
	float _12090 = F__eval_jinc_filter_unorm(_12089);
	return _12090;
}
float F__eval_lanczos_jinc_filter(
	in float dist)
{
	float _12094;
	_12094 = dist;
	float _12095 = F__eval_jinc_filter(_12094);
	float _12097 = dist / 3.00000000e+00;
	float _12098;
	_12098 = _12097;
	float _12099 = F__eval_jinc_filter(_12098);
	float _12100 = _12095 * _12099;
	return _12100;
}
float3 F__eval_unorm_rgb_weights(
	in float2 offset,
	in float2 final_axis_importance)
{
	float2 _12105 = offset * final_axis_importance;
	float2 offset_g = _12105;
	float2 _12107 = F__get_aa_subpixel_r_offset();
	float2 aa_r_offset = _12107;
	float2 _12109 = aa_r_offset * final_axis_importance;
	float2 _12110 = offset_g - _12109;
	float2 offset_r = _12110;
	float2 _12112 = aa_r_offset * final_axis_importance;
	float2 _12113 = offset_g + _12112;
	float2 offset_b = _12113;
	if (false)
	{
		float2 _12119;
		_12119 = offset_r;
		float _12120 = F__eval_separable_box_filter(_12119);
		float2 _12121;
		_12121 = offset_g;
		float _12122 = F__eval_separable_box_filter(_12121);
		float2 _12123;
		_12123 = offset_b;
		float _12124 = F__eval_separable_box_filter(_12123);
		float3 _12125 = float3(_12120, _12122, _12124);
		return _12125;
	}
	else
	{
		if (false)
		{
			float _12130 = length(offset_r);
			float _12131;
			_12131 = _12130;
			float _12132 = F__eval_box_filter(_12131);
			float _12133 = length(offset_g);
			float _12134;
			_12134 = _12133;
			float _12135 = F__eval_box_filter(_12134);
			float _12136 = length(offset_b);
			float _12137;
			_12137 = _12136;
			float _12138 = F__eval_box_filter(_12137);
			float3 _12139 = float3(_12132, _12135, _12138);
			return _12139;
		}
		else
		{
			if (false)
			{
				float _12144;
				_12144 = offset_r.x;
				float _12146 = F__eval_tent_filter(_12144);
				float _12147;
				_12147 = offset_r.y;
				float _12149 = F__eval_tent_filter(_12147);
				float _12150 = _12146 * _12149;
				float _12151;
				_12151 = offset_g.x;
				float _12153 = F__eval_tent_filter(_12151);
				float _12154;
				_12154 = offset_g.y;
				float _12156 = F__eval_tent_filter(_12154);
				float _12157 = _12153 * _12156;
				float _12158;
				_12158 = offset_b.x;
				float _12160 = F__eval_tent_filter(_12158);
				float _12161;
				_12161 = offset_b.y;
				float _12163 = F__eval_tent_filter(_12161);
				float _12164 = _12160 * _12163;
				float3 _12165 = float3(_12150, _12157, _12164);
				return _12165;
			}
			else
			{
				if (false)
				{
					float _12170 = length(offset_r);
					float _12171;
					_12171 = _12170;
					float _12172 = F__eval_tent_filter(_12171);
					float _12173 = length(offset_g);
					float _12174;
					_12174 = _12173;
					float _12175 = F__eval_tent_filter(_12174);
					float _12176 = length(offset_b);
					float _12177;
					_12177 = _12176;
					float _12178 = F__eval_tent_filter(_12177);
					float3 _12179 = float3(_12172, _12175, _12178);
					return _12179;
				}
				else
				{
					if (false)
					{
						float _12184;
						_12184 = offset_r.x;
						float _12186 = F__eval_gaussian_filter(_12184);
						float _12187;
						_12187 = offset_r.y;
						float _12189 = F__eval_gaussian_filter(_12187);
						float _12190 = _12186 * _12189;
						float _12191;
						_12191 = offset_g.x;
						float _12193 = F__eval_gaussian_filter(_12191);
						float _12194;
						_12194 = offset_g.y;
						float _12196 = F__eval_gaussian_filter(_12194);
						float _12197 = _12193 * _12196;
						float _12198;
						_12198 = offset_b.x;
						float _12200 = F__eval_gaussian_filter(_12198);
						float _12201;
						_12201 = offset_b.y;
						float _12203 = F__eval_gaussian_filter(_12201);
						float _12204 = _12200 * _12203;
						float3 _12205 = float3(_12190, _12197, _12204);
						return _12205;
					}
					else
					{
						if (false)
						{
							float _12210 = length(offset_r);
							float _12211;
							_12211 = _12210;
							float _12212 = F__eval_gaussian_filter(_12211);
							float _12213 = length(offset_g);
							float _12214;
							_12214 = _12213;
							float _12215 = F__eval_gaussian_filter(_12214);
							float _12216 = length(offset_b);
							float _12217;
							_12217 = _12216;
							float _12218 = F__eval_gaussian_filter(_12217);
							float3 _12219 = float3(_12212, _12215, _12218);
							return _12219;
						}
						else
						{
							if (true)
							{
								float _12224;
								_12224 = offset_r.x;
								float _12226 = F__eval_cubic_filter(_12224);
								float _12227;
								_12227 = offset_r.y;
								float _12229 = F__eval_cubic_filter(_12227);
								float _12230 = _12226 * _12229;
								float _12231;
								_12231 = offset_g.x;
								float _12233 = F__eval_cubic_filter(_12231);
								float _12234;
								_12234 = offset_g.y;
								float _12236 = F__eval_cubic_filter(_12234);
								float _12237 = _12233 * _12236;
								float _12238;
								_12238 = offset_b.x;
								float _12240 = F__eval_cubic_filter(_12238);
								float _12241;
								_12241 = offset_b.y;
								float _12243 = F__eval_cubic_filter(_12241);
								float _12244 = _12240 * _12243;
								float3 _12245 = float3(_12230, _12237, _12244);
								return _12245;
							}
							else
							{
								if (true)
								{
									float _12250 = length(offset_r);
									float _12251;
									_12251 = _12250;
									float _12252 = F__eval_cubic_filter(_12251);
									float _12253 = length(offset_g);
									float _12254;
									_12254 = _12253;
									float _12255 = F__eval_cubic_filter(_12254);
									float _12256 = length(offset_b);
									float _12257;
									_12257 = _12256;
									float _12258 = F__eval_cubic_filter(_12257);
									float3 _12259 = float3(_12252, _12255, _12258);
									return _12259;
								}
								else
								{
									if (true)
									{
										float2 _12264;
										_12264 = offset_r;
										float _12265 = F__eval_separable_lanczos_sinc_filter(_12264);
										float2 _12266;
										_12266 = offset_g;
										float _12267 = F__eval_separable_lanczos_sinc_filter(_12266);
										float2 _12268;
										_12268 = offset_b;
										float _12269 = F__eval_separable_lanczos_sinc_filter(_12268);
										float3 _12270 = float3(_12265, _12267, _12269);
										return _12270;
									}
									else
									{
										if (true)
										{
											float _12275 = length(offset_r);
											float _12276;
											_12276 = _12275;
											float _12277 = F__eval_lanczos_jinc_filter(_12276);
											float _12278 = length(offset_g);
											float _12279;
											_12279 = _12278;
											float _12280 = F__eval_lanczos_jinc_filter(_12279);
											float _12281 = length(offset_b);
											float _12282;
											_12282 = _12281;
											float _12283 = F__eval_lanczos_jinc_filter(_12282);
											float3 _12284 = float3(_12277, _12280, _12283);
											return _12284;
										}
										else
										{
											float2 _12285;
											_12285 = offset_r;
											float _12286 = F__eval_separable_box_filter(_12285);
											float2 _12287;
											_12287 = offset_g;
											float _12288 = F__eval_separable_box_filter(_12287);
											float2 _12289;
											_12289 = offset_b;
											float _12290 = F__eval_separable_box_filter(_12289);
											float3 _12291 = float3(_12286, _12288, _12290);
											return _12291;
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
	float2 _12297;
	float _12298;
	_12297 = s;
	_12298 = input_gamma;
	float4 _12299 = F__tex2D_linearize(samp, _12297, _12298);
	return _12299;
}
float2 F__get_frame_sign(
	in float frame)
{
	if (false)
	{
		float _12308 = frame / 2.00000000e+00;
		float _12309 = frac(_12308);
		float _12311 = _12309 * 2.00000000e+00;
		bool _12313 = _12311 > 5.00000000e-01;
		float frame_odd = ((float)_12313);
		float2 _12316 = F__get_aa_subpixel_r_offset();
		float2 aa_r_offset_12317 = _12316;
		float _12319 = abs(aa_r_offset_12317.x);
		bool _12321 = _12319 < 1.52587891e-05;
		float _12323 = abs(aa_r_offset_12317.y);
		bool _12325 = _12323 < 1.52587891e-05;
		float2 _12328 = float2(((float)_12321), ((float)_12325));
		float2 _12329 = -_12328;
		float2 mirror = _12329;
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
	float2 _12338 = F__get_aa_subpixel_r_offset();
	float2 aa_r_offset_12339 = _12338;
	float2 _12340 = mul(pixel_to_tex_uv, aa_r_offset_12339);
	float2 aa_r_offset_uv_offset = _12340;
	float2 _12342;
	float _12343;
	_12342 = tex_uv;
	_12343 = input_gamma;
	float4 _12344 = F__tex2D_linearize(tex, _12342, _12343);
	float color_g = _12344.y;
	float2 _12347 = tex_uv + aa_r_offset_uv_offset;
	float2 _12348;
	float _12349;
	_12348 = _12347;
	_12349 = input_gamma;
	float4 _12350 = F__tex2D_linearize(tex, _12348, _12349);
	float color_r = _12350.x;
	float2 _12353 = tex_uv - aa_r_offset_uv_offset;
	float2 _12354;
	float _12355;
	_12354 = _12353;
	_12355 = input_gamma;
	float4 _12356 = F__tex2D_linearize(tex, _12354, _12355);
	float color_b = _12356.z;
	float3 _12359 = float3(color_r, color_g, color_b);
	return _12359;
}
float3 F__tex2Daa4x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12368 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai = _12368;
	float2 subpixel_support_diameter = ssd_fai.xy;
	float2 final_axis_importance_12373 = ssd_fai.zw;
	float2 _12375 = float2(2.50000000e-01, 2.50000000e-01) * subpixel_support_diameter;
	float2 xy_step = _12375;
	float2 _12378 = float2(-1.50000000e+00, -1.50000000e+00) * xy_step;
	float2 xy_start_offset = _12378;
	float2 _12381 = float2(2.00000000e+00, 0.00000000e+00) * xy_step;
	float2 _12382 = xy_start_offset + _12381;
	float2 xy_offset0 = _12382;
	float2 _12385 = float2(0.00000000e+00, 1.00000000e+00) * xy_step;
	float2 _12386 = xy_start_offset + _12385;
	float2 xy_offset1 = _12386;
	float2 _12388;
	float2 _12389;
	_12388 = xy_offset0;
	_12389 = final_axis_importance_12373;
	float3 _12390 = F__eval_unorm_rgb_weights(_12388, _12389);
	float3 w0_12391 = _12390;
	float2 _12392;
	float2 _12393;
	_12392 = xy_offset1;
	_12393 = final_axis_importance_12373;
	float3 _12394 = F__eval_unorm_rgb_weights(_12392, _12393);
	float3 w1_12395 = _12394;
	float3 w2_12397 = w1_12395.zyx;
	float3 w3_12399 = w0_12391.zyx;
	float3 _12400 = w0_12391 + w1_12395;
	float3 half_sum = _12400;
	float3 _12403 = half_sum + half_sum.zyx;
	float3 w_sum_12404 = _12403;
	float3 _12406 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12404;
	float3 w_sum_inv = _12406;
	float2x2 _12409 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv = _12409;
	float _12411;
	_12411 = frame;
	float2 _12412 = F__get_frame_sign(_12411);
	float2 frame_sign = _12412;
	float2 _12414 = xy_offset0 * frame_sign;
	float2 _12415 = mul(true_pixel_to_tex_uv, _12414);
	float2 uv_offset0 = _12415;
	float2 _12417 = xy_offset1 * frame_sign;
	float2 _12418 = mul(true_pixel_to_tex_uv, _12417);
	float2 uv_offset1 = _12418;
	float2 _12420 = tex_uv + uv_offset0;
	float2 _12421;
	float _12422;
	_12421 = _12420;
	_12422 = input_gamma;
	float4 _12423 = F__tex2Daa_tiled_linearize(tex, _12421, _12422);
	float3 sample0_12425 = _12423.xyz;
	float2 _12426 = tex_uv + uv_offset1;
	float2 _12427;
	float _12428;
	_12427 = _12426;
	_12428 = input_gamma;
	float4 _12429 = F__tex2Daa_tiled_linearize(tex, _12427, _12428);
	float3 sample1_12431 = _12429.xyz;
	float2 _12432 = tex_uv - uv_offset1;
	float2 _12433;
	float _12434;
	_12433 = _12432;
	_12434 = input_gamma;
	float4 _12435 = F__tex2Daa_tiled_linearize(tex, _12433, _12434);
	float3 sample2_12437 = _12435.xyz;
	float2 _12438 = tex_uv - uv_offset0;
	float2 _12439;
	float _12440;
	_12439 = _12438;
	_12440 = input_gamma;
	float4 _12441 = F__tex2Daa_tiled_linearize(tex, _12439, _12440);
	float3 sample3_12443 = _12441.xyz;
	float3 _12444 = w0_12391 * sample0_12425;
	float3 _12445 = w1_12395 * sample1_12431;
	float3 _12446 = _12444 + _12445;
	float3 _12447 = w2_12397 * sample2_12437;
	float3 _12448 = _12446 + _12447;
	float3 _12449 = w3_12399 * sample3_12443;
	float3 _12450 = _12448 + _12449;
	float3 _12451 = w_sum_inv * _12450;
	return _12451;
}
float3 F__tex2Daa5x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12460 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12461 = _12460;
	float2 subpixel_support_diameter_12463 = ssd_fai_12461.xy;
	float2 final_axis_importance_12465 = ssd_fai_12461.zw;
	float2 _12467 = float2(2.00000003e-01, 2.00000003e-01) * subpixel_support_diameter_12463;
	float2 xy_step_12468 = _12467;
	float2 _12470 = float2(-2.00000000e+00, -2.00000000e+00) * xy_step_12468;
	float2 xy_start_offset_12471 = _12470;
	float2 _12473 = float2(1.00000000e+00, 0.00000000e+00) * xy_step_12468;
	float2 _12474 = xy_start_offset_12471 + _12473;
	float2 xy_offset0_12475 = _12474;
	float2 _12477 = float2(4.00000000e+00, 1.00000000e+00) * xy_step_12468;
	float2 _12478 = xy_start_offset_12471 + _12477;
	float2 xy_offset1_12479 = _12478;
	float2 _12481 = float2(2.00000000e+00, 2.00000000e+00) * xy_step_12468;
	float2 _12482 = xy_start_offset_12471 + _12481;
	float2 xy_offset2 = _12482;
	float2 _12484;
	float2 _12485;
	_12484 = xy_offset0_12475;
	_12485 = final_axis_importance_12465;
	float3 _12486 = F__eval_unorm_rgb_weights(_12484, _12485);
	float3 w0_12487 = _12486;
	float2 _12488;
	float2 _12489;
	_12488 = xy_offset1_12479;
	_12489 = final_axis_importance_12465;
	float3 _12490 = F__eval_unorm_rgb_weights(_12488, _12489);
	float3 w1_12491 = _12490;
	float2 _12492;
	float2 _12493;
	_12492 = xy_offset2;
	_12493 = final_axis_importance_12465;
	float3 _12494 = F__eval_unorm_rgb_weights(_12492, _12493);
	float3 w2_12495 = _12494;
	float3 w3_12497 = w1_12491.zyx;
	float3 w4_12499 = w0_12487.zyx;
	float3 _12500 = w0_12487 + w1_12491;
	float3 _12501 = _12500 + w2_12495;
	float3 _12502 = _12501 + w3_12497;
	float3 _12503 = _12502 + w4_12499;
	float3 _12505 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / _12503;
	float3 w_sum_inv_12506 = _12505;
	float2x2 _12508 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12509 = _12508;
	float _12510;
	_12510 = frame;
	float2 _12511 = F__get_frame_sign(_12510);
	float2 frame_sign_12512 = _12511;
	float2 _12513 = xy_offset0_12475 * frame_sign_12512;
	float2 _12514 = mul(true_pixel_to_tex_uv_12509, _12513);
	float2 uv_offset0_12515 = _12514;
	float2 _12516 = xy_offset1_12479 * frame_sign_12512;
	float2 _12517 = mul(true_pixel_to_tex_uv_12509, _12516);
	float2 uv_offset1_12518 = _12517;
	float2 _12519 = tex_uv + uv_offset0_12515;
	float2 _12520;
	float _12521;
	_12520 = _12519;
	_12521 = input_gamma;
	float4 _12522 = F__tex2Daa_tiled_linearize(tex, _12520, _12521);
	float3 sample0_12524 = _12522.xyz;
	float2 _12525 = tex_uv + uv_offset1_12518;
	float2 _12526;
	float _12527;
	_12526 = _12525;
	_12527 = input_gamma;
	float4 _12528 = F__tex2Daa_tiled_linearize(tex, _12526, _12527);
	float3 sample1_12530 = _12528.xyz;
	float2 _12531;
	float _12532;
	_12531 = tex_uv;
	_12532 = input_gamma;
	float4 _12533 = F__tex2Daa_tiled_linearize(tex, _12531, _12532);
	float3 sample2_12535 = _12533.xyz;
	float2 _12536 = tex_uv - uv_offset1_12518;
	float2 _12537;
	float _12538;
	_12537 = _12536;
	_12538 = input_gamma;
	float4 _12539 = F__tex2Daa_tiled_linearize(tex, _12537, _12538);
	float3 sample3_12541 = _12539.xyz;
	float2 _12542 = tex_uv - uv_offset0_12515;
	float2 _12543;
	float _12544;
	_12543 = _12542;
	_12544 = input_gamma;
	float4 _12545 = F__tex2Daa_tiled_linearize(tex, _12543, _12544);
	float3 sample4_12547 = _12545.xyz;
	float3 _12548 = w0_12487 * sample0_12524;
	float3 _12549 = w1_12491 * sample1_12530;
	float3 _12550 = _12548 + _12549;
	float3 _12551 = w2_12495 * sample2_12535;
	float3 _12552 = _12550 + _12551;
	float3 _12553 = w3_12497 * sample3_12541;
	float3 _12554 = _12552 + _12553;
	float3 _12555 = w4_12499 * sample4_12547;
	float3 _12556 = _12554 + _12555;
	float3 _12557 = w_sum_inv_12506 * _12556;
	return _12557;
}
float3 F__tex2Daa6x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12566 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12567 = _12566;
	float2 subpixel_support_diameter_12569 = ssd_fai_12567.xy;
	float2 final_axis_importance_12571 = ssd_fai_12567.zw;
	float2 _12573 = float2(1.66666672e-01, 1.66666672e-01) * subpixel_support_diameter_12569;
	float2 xy_step_12574 = _12573;
	float2 _12576 = float2(-2.50000000e+00, -2.50000000e+00) * xy_step_12574;
	float2 xy_start_offset_12577 = _12576;
	float2 _12579 = float2(4.00000000e+00, 0.00000000e+00) * xy_step_12574;
	float2 _12580 = xy_start_offset_12577 + _12579;
	float2 xy_offset0_12581 = _12580;
	float2 _12583 = float2(2.00000000e+00, 1.00000000e+00) * xy_step_12574;
	float2 _12584 = xy_start_offset_12577 + _12583;
	float2 xy_offset1_12585 = _12584;
	float2 _12587 = float2(0.00000000e+00, 2.00000000e+00) * xy_step_12574;
	float2 _12588 = xy_start_offset_12577 + _12587;
	float2 xy_offset2_12589 = _12588;
	float2 _12590;
	float2 _12591;
	_12590 = xy_offset0_12581;
	_12591 = final_axis_importance_12571;
	float3 _12592 = F__eval_unorm_rgb_weights(_12590, _12591);
	float3 w0_12593 = _12592;
	float2 _12594;
	float2 _12595;
	_12594 = xy_offset1_12585;
	_12595 = final_axis_importance_12571;
	float3 _12596 = F__eval_unorm_rgb_weights(_12594, _12595);
	float3 w1_12597 = _12596;
	float2 _12598;
	float2 _12599;
	_12598 = xy_offset2_12589;
	_12599 = final_axis_importance_12571;
	float3 _12600 = F__eval_unorm_rgb_weights(_12598, _12599);
	float3 w2_12601 = _12600;
	float3 w3_12603 = w2_12601.zyx;
	float3 w4_12605 = w1_12597.zyx;
	float3 w5_12607 = w0_12593.zyx;
	float3 _12608 = w0_12593 + w1_12597;
	float3 _12609 = _12608 + w2_12601;
	float3 half_sum_12610 = _12609;
	float3 _12612 = half_sum_12610 + half_sum_12610.zyx;
	float3 w_sum_12613 = _12612;
	float3 _12615 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12613;
	float3 w_sum_inv_12616 = _12615;
	float2x2 _12618 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12619 = _12618;
	float _12620;
	_12620 = frame;
	float2 _12621 = F__get_frame_sign(_12620);
	float2 frame_sign_12622 = _12621;
	float2 _12623 = xy_offset0_12581 * frame_sign_12622;
	float2 _12624 = mul(true_pixel_to_tex_uv_12619, _12623);
	float2 uv_offset0_12625 = _12624;
	float2 _12626 = xy_offset1_12585 * frame_sign_12622;
	float2 _12627 = mul(true_pixel_to_tex_uv_12619, _12626);
	float2 uv_offset1_12628 = _12627;
	float2 _12629 = xy_offset2_12589 * frame_sign_12622;
	float2 _12630 = mul(true_pixel_to_tex_uv_12619, _12629);
	float2 uv_offset2 = _12630;
	float2 _12632 = tex_uv + uv_offset0_12625;
	float2 _12633;
	float _12634;
	_12633 = _12632;
	_12634 = input_gamma;
	float4 _12635 = F__tex2Daa_tiled_linearize(tex, _12633, _12634);
	float3 sample0_12637 = _12635.xyz;
	float2 _12638 = tex_uv + uv_offset1_12628;
	float2 _12639;
	float _12640;
	_12639 = _12638;
	_12640 = input_gamma;
	float4 _12641 = F__tex2Daa_tiled_linearize(tex, _12639, _12640);
	float3 sample1_12643 = _12641.xyz;
	float2 _12644 = tex_uv + uv_offset2;
	float2 _12645;
	float _12646;
	_12645 = _12644;
	_12646 = input_gamma;
	float4 _12647 = F__tex2Daa_tiled_linearize(tex, _12645, _12646);
	float3 sample2_12649 = _12647.xyz;
	float2 _12650 = tex_uv - uv_offset2;
	float2 _12651;
	float _12652;
	_12651 = _12650;
	_12652 = input_gamma;
	float4 _12653 = F__tex2Daa_tiled_linearize(tex, _12651, _12652);
	float3 sample3_12655 = _12653.xyz;
	float2 _12656 = tex_uv - uv_offset1_12628;
	float2 _12657;
	float _12658;
	_12657 = _12656;
	_12658 = input_gamma;
	float4 _12659 = F__tex2Daa_tiled_linearize(tex, _12657, _12658);
	float3 sample4_12661 = _12659.xyz;
	float2 _12662 = tex_uv - uv_offset0_12625;
	float2 _12663;
	float _12664;
	_12663 = _12662;
	_12664 = input_gamma;
	float4 _12665 = F__tex2Daa_tiled_linearize(tex, _12663, _12664);
	float3 sample5_12667 = _12665.xyz;
	float3 _12668 = w0_12593 * sample0_12637;
	float3 _12669 = w1_12597 * sample1_12643;
	float3 _12670 = _12668 + _12669;
	float3 _12671 = w2_12601 * sample2_12649;
	float3 _12672 = _12670 + _12671;
	float3 _12673 = w3_12603 * sample3_12655;
	float3 _12674 = _12672 + _12673;
	float3 _12675 = w4_12605 * sample4_12661;
	float3 _12676 = _12674 + _12675;
	float3 _12677 = w5_12607 * sample5_12667;
	float3 _12678 = _12676 + _12677;
	float3 _12679 = w_sum_inv_12616 * _12678;
	return _12679;
}
float3 F__tex2Daa7x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12688 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12689 = _12688;
	float2 subpixel_support_diameter_12691 = ssd_fai_12689.xy;
	float2 final_axis_importance_12693 = ssd_fai_12689.zw;
	float2 _12695 = float2(1.42857149e-01, 1.42857149e-01) * subpixel_support_diameter_12691;
	float2 xy_step_12696 = _12695;
	float2 _12698 = float2(-3.00000000e+00, -3.00000000e+00) * xy_step_12696;
	float2 xy_start_offset_12699 = _12698;
	float2 _12701 = float2(1.00000000e+00, 0.00000000e+00) * xy_step_12696;
	float2 _12702 = xy_start_offset_12699 + _12701;
	float2 xy_offset0_12703 = _12702;
	float2 _12705 = float2(4.00000000e+00, 1.00000000e+00) * xy_step_12696;
	float2 _12706 = xy_start_offset_12699 + _12705;
	float2 xy_offset1_12707 = _12706;
	float2 _12709 = float2(0.00000000e+00, 2.00000000e+00) * xy_step_12696;
	float2 _12710 = xy_start_offset_12699 + _12709;
	float2 xy_offset2_12711 = _12710;
	float2 _12713 = float2(3.00000000e+00, 3.00000000e+00) * xy_step_12696;
	float2 _12714 = xy_start_offset_12699 + _12713;
	float2 xy_offset3 = _12714;
	float2 _12716;
	float2 _12717;
	_12716 = xy_offset0_12703;
	_12717 = final_axis_importance_12693;
	float3 _12718 = F__eval_unorm_rgb_weights(_12716, _12717);
	float3 w0_12719 = _12718;
	float2 _12720;
	float2 _12721;
	_12720 = xy_offset1_12707;
	_12721 = final_axis_importance_12693;
	float3 _12722 = F__eval_unorm_rgb_weights(_12720, _12721);
	float3 w1_12723 = _12722;
	float2 _12724;
	float2 _12725;
	_12724 = xy_offset2_12711;
	_12725 = final_axis_importance_12693;
	float3 _12726 = F__eval_unorm_rgb_weights(_12724, _12725);
	float3 w2_12727 = _12726;
	float2 _12728;
	float2 _12729;
	_12728 = xy_offset3;
	_12729 = final_axis_importance_12693;
	float3 _12730 = F__eval_unorm_rgb_weights(_12728, _12729);
	float3 w3_12731 = _12730;
	float3 w4_12733 = w2_12727.zyx;
	float3 w5_12735 = w1_12723.zyx;
	float3 w6_12737 = w0_12719.zyx;
	float3 _12738 = w0_12719 + w1_12723;
	float3 _12739 = _12738 + w2_12727;
	float3 half_sum_12740 = _12739;
	float3 _12742 = half_sum_12740 + half_sum_12740.zyx;
	float3 _12743 = _12742 + w3_12731;
	float3 w_sum_12744 = _12743;
	float3 _12746 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12744;
	float3 w_sum_inv_12747 = _12746;
	float2x2 _12749 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12750 = _12749;
	float _12751;
	_12751 = frame;
	float2 _12752 = F__get_frame_sign(_12751);
	float2 frame_sign_12753 = _12752;
	float2 _12754 = xy_offset0_12703 * frame_sign_12753;
	float2 _12755 = mul(true_pixel_to_tex_uv_12750, _12754);
	float2 uv_offset0_12756 = _12755;
	float2 _12757 = xy_offset1_12707 * frame_sign_12753;
	float2 _12758 = mul(true_pixel_to_tex_uv_12750, _12757);
	float2 uv_offset1_12759 = _12758;
	float2 _12760 = xy_offset2_12711 * frame_sign_12753;
	float2 _12761 = mul(true_pixel_to_tex_uv_12750, _12760);
	float2 uv_offset2_12762 = _12761;
	float2 _12763 = tex_uv + uv_offset0_12756;
	float2 _12764;
	float _12765;
	_12764 = _12763;
	_12765 = input_gamma;
	float4 _12766 = F__tex2Daa_tiled_linearize(tex, _12764, _12765);
	float3 sample0_12768 = _12766.xyz;
	float2 _12769 = tex_uv + uv_offset1_12759;
	float2 _12770;
	float _12771;
	_12770 = _12769;
	_12771 = input_gamma;
	float4 _12772 = F__tex2Daa_tiled_linearize(tex, _12770, _12771);
	float3 sample1_12774 = _12772.xyz;
	float2 _12775 = tex_uv + uv_offset2_12762;
	float2 _12776;
	float _12777;
	_12776 = _12775;
	_12777 = input_gamma;
	float4 _12778 = F__tex2Daa_tiled_linearize(tex, _12776, _12777);
	float3 sample2_12780 = _12778.xyz;
	float2 _12781;
	float _12782;
	_12781 = tex_uv;
	_12782 = input_gamma;
	float4 _12783 = F__tex2Daa_tiled_linearize(tex, _12781, _12782);
	float3 sample3_12785 = _12783.xyz;
	float2 _12786 = tex_uv - uv_offset2_12762;
	float2 _12787;
	float _12788;
	_12787 = _12786;
	_12788 = input_gamma;
	float4 _12789 = F__tex2Daa_tiled_linearize(tex, _12787, _12788);
	float3 sample4_12791 = _12789.xyz;
	float2 _12792 = tex_uv - uv_offset1_12759;
	float2 _12793;
	float _12794;
	_12793 = _12792;
	_12794 = input_gamma;
	float4 _12795 = F__tex2Daa_tiled_linearize(tex, _12793, _12794);
	float3 sample5_12797 = _12795.xyz;
	float2 _12798 = tex_uv - uv_offset0_12756;
	float2 _12799;
	float _12800;
	_12799 = _12798;
	_12800 = input_gamma;
	float4 _12801 = F__tex2Daa_tiled_linearize(tex, _12799, _12800);
	float3 sample6_12803 = _12801.xyz;
	float3 _12804 = w0_12719 * sample0_12768;
	float3 _12805 = w1_12723 * sample1_12774;
	float3 _12806 = _12804 + _12805;
	float3 _12807 = w2_12727 * sample2_12780;
	float3 _12808 = _12806 + _12807;
	float3 _12809 = w3_12731 * sample3_12785;
	float3 _12810 = _12808 + _12809;
	float3 _12811 = w4_12733 * sample4_12791;
	float3 _12812 = _12810 + _12811;
	float3 _12813 = w5_12735 * sample5_12797;
	float3 _12814 = _12812 + _12813;
	float3 _12815 = w6_12737 * sample6_12803;
	float3 _12816 = _12814 + _12815;
	float3 _12817 = w_sum_inv_12747 * _12816;
	return _12817;
}
float3 F__tex2Daa8x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12826 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12827 = _12826;
	float2 subpixel_support_diameter_12829 = ssd_fai_12827.xy;
	float2 final_axis_importance_12831 = ssd_fai_12827.zw;
	float2 _12833 = float2(1.25000000e-01, 1.25000000e-01) * subpixel_support_diameter_12829;
	float2 xy_step_12834 = _12833;
	float2 _12836 = float2(-3.50000000e+00, -3.50000000e+00) * xy_step_12834;
	float2 xy_start_offset_12837 = _12836;
	float2 _12839 = float2(2.00000000e+00, 0.00000000e+00) * xy_step_12834;
	float2 _12840 = xy_start_offset_12837 + _12839;
	float2 xy_offset0_12841 = _12840;
	float2 _12843 = float2(4.00000000e+00, 1.00000000e+00) * xy_step_12834;
	float2 _12844 = xy_start_offset_12837 + _12843;
	float2 xy_offset1_12845 = _12844;
	float2 _12847 = float2(1.00000000e+00, 2.00000000e+00) * xy_step_12834;
	float2 _12848 = xy_start_offset_12837 + _12847;
	float2 xy_offset2_12849 = _12848;
	float2 _12851 = float2(7.00000000e+00, 3.00000000e+00) * xy_step_12834;
	float2 _12852 = xy_start_offset_12837 + _12851;
	float2 xy_offset3_12853 = _12852;
	float2 _12854;
	float2 _12855;
	_12854 = xy_offset0_12841;
	_12855 = final_axis_importance_12831;
	float3 _12856 = F__eval_unorm_rgb_weights(_12854, _12855);
	float3 w0_12857 = _12856;
	float2 _12858;
	float2 _12859;
	_12858 = xy_offset1_12845;
	_12859 = final_axis_importance_12831;
	float3 _12860 = F__eval_unorm_rgb_weights(_12858, _12859);
	float3 w1_12861 = _12860;
	float2 _12862;
	float2 _12863;
	_12862 = xy_offset2_12849;
	_12863 = final_axis_importance_12831;
	float3 _12864 = F__eval_unorm_rgb_weights(_12862, _12863);
	float3 w2_12865 = _12864;
	float2 _12866;
	float2 _12867;
	_12866 = xy_offset3_12853;
	_12867 = final_axis_importance_12831;
	float3 _12868 = F__eval_unorm_rgb_weights(_12866, _12867);
	float3 w3_12869 = _12868;
	float3 w4_12871 = w3_12869.zyx;
	float3 w5_12873 = w2_12865.zyx;
	float3 w6_12875 = w1_12861.zyx;
	float3 w7_12877 = w0_12857.zyx;
	float3 _12878 = w0_12857 + w1_12861;
	float3 _12879 = _12878 + w2_12865;
	float3 _12880 = _12879 + w3_12869;
	float3 half_sum_12881 = _12880;
	float3 _12883 = half_sum_12881 + half_sum_12881.zyx;
	float3 w_sum_12884 = _12883;
	float3 _12886 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_12884;
	float3 w_sum_inv_12887 = _12886;
	float2x2 _12889 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_12890 = _12889;
	float _12891;
	_12891 = frame;
	float2 _12892 = F__get_frame_sign(_12891);
	float2 frame_sign_12893 = _12892;
	float2 _12894 = xy_offset0_12841 * frame_sign_12893;
	float2 _12895 = mul(true_pixel_to_tex_uv_12890, _12894);
	float2 uv_offset0_12896 = _12895;
	float2 _12897 = xy_offset1_12845 * frame_sign_12893;
	float2 _12898 = mul(true_pixel_to_tex_uv_12890, _12897);
	float2 uv_offset1_12899 = _12898;
	float2 _12900 = xy_offset2_12849 * frame_sign_12893;
	float2 _12901 = mul(true_pixel_to_tex_uv_12890, _12900);
	float2 uv_offset2_12902 = _12901;
	float2 _12903 = xy_offset3_12853 * frame_sign_12893;
	float2 _12904 = mul(true_pixel_to_tex_uv_12890, _12903);
	float2 uv_offset3 = _12904;
	float2 _12906 = tex_uv + uv_offset0_12896;
	float2 _12907;
	float _12908;
	_12907 = _12906;
	_12908 = input_gamma;
	float4 _12909 = F__tex2Daa_tiled_linearize(tex, _12907, _12908);
	float3 sample0_12911 = _12909.xyz;
	float2 _12912 = tex_uv + uv_offset1_12899;
	float2 _12913;
	float _12914;
	_12913 = _12912;
	_12914 = input_gamma;
	float4 _12915 = F__tex2Daa_tiled_linearize(tex, _12913, _12914);
	float3 sample1_12917 = _12915.xyz;
	float2 _12918 = tex_uv + uv_offset2_12902;
	float2 _12919;
	float _12920;
	_12919 = _12918;
	_12920 = input_gamma;
	float4 _12921 = F__tex2Daa_tiled_linearize(tex, _12919, _12920);
	float3 sample2_12923 = _12921.xyz;
	float2 _12924 = tex_uv + uv_offset3;
	float2 _12925;
	float _12926;
	_12925 = _12924;
	_12926 = input_gamma;
	float4 _12927 = F__tex2Daa_tiled_linearize(tex, _12925, _12926);
	float3 sample3_12929 = _12927.xyz;
	float2 _12930 = tex_uv - uv_offset3;
	float2 _12931;
	float _12932;
	_12931 = _12930;
	_12932 = input_gamma;
	float4 _12933 = F__tex2Daa_tiled_linearize(tex, _12931, _12932);
	float3 sample4_12935 = _12933.xyz;
	float2 _12936 = tex_uv - uv_offset2_12902;
	float2 _12937;
	float _12938;
	_12937 = _12936;
	_12938 = input_gamma;
	float4 _12939 = F__tex2Daa_tiled_linearize(tex, _12937, _12938);
	float3 sample5_12941 = _12939.xyz;
	float2 _12942 = tex_uv - uv_offset1_12899;
	float2 _12943;
	float _12944;
	_12943 = _12942;
	_12944 = input_gamma;
	float4 _12945 = F__tex2Daa_tiled_linearize(tex, _12943, _12944);
	float3 sample6_12947 = _12945.xyz;
	float2 _12948 = tex_uv - uv_offset0_12896;
	float2 _12949;
	float _12950;
	_12949 = _12948;
	_12950 = input_gamma;
	float4 _12951 = F__tex2Daa_tiled_linearize(tex, _12949, _12950);
	float3 sample7_12953 = _12951.xyz;
	float3 _12954 = w0_12857 * sample0_12911;
	float3 _12955 = w1_12861 * sample1_12917;
	float3 _12956 = _12954 + _12955;
	float3 _12957 = w2_12865 * sample2_12923;
	float3 _12958 = _12956 + _12957;
	float3 _12959 = w3_12869 * sample3_12929;
	float3 _12960 = _12958 + _12959;
	float3 _12961 = w4_12871 * sample4_12935;
	float3 _12962 = _12960 + _12961;
	float3 _12963 = w5_12873 * sample5_12941;
	float3 _12964 = _12962 + _12963;
	float3 _12965 = w6_12875 * sample6_12947;
	float3 _12966 = _12964 + _12965;
	float3 _12967 = w7_12877 * sample7_12953;
	float3 _12968 = _12966 + _12967;
	float3 _12969 = w_sum_inv_12887 * _12968;
	return _12969;
}
float3 F__tex2Daa12x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _12978 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_12979 = _12978;
	float2 subpixel_support_diameter_12981 = ssd_fai_12979.xy;
	float2 final_axis_importance_12983 = ssd_fai_12979.zw;
	float2 _12985 = float2(8.33333358e-02, 8.33333358e-02) * subpixel_support_diameter_12981;
	float2 xy_step_12986 = _12985;
	float2 _12988 = float2(-5.50000000e+00, -5.50000000e+00) * xy_step_12986;
	float2 xy_start_offset_12989 = _12988;
	float2 _12991 = float2(3.00000000e+00, 0.00000000e+00) * xy_step_12986;
	float2 _12992 = xy_start_offset_12989 + _12991;
	float2 xy_offset0_12993 = _12992;
	float2 _12995 = float2(9.00000000e+00, 1.00000000e+00) * xy_step_12986;
	float2 _12996 = xy_start_offset_12989 + _12995;
	float2 xy_offset1_12997 = _12996;
	float2 _12999 = float2(6.00000000e+00, 2.00000000e+00) * xy_step_12986;
	float2 _13000 = xy_start_offset_12989 + _12999;
	float2 xy_offset2_13001 = _13000;
	float2 _13003 = float2(1.00000000e+00, 3.00000000e+00) * xy_step_12986;
	float2 _13004 = xy_start_offset_12989 + _13003;
	float2 xy_offset3_13005 = _13004;
	float2 _13007 = float2(1.10000000e+01, 4.00000000e+00) * xy_step_12986;
	float2 _13008 = xy_start_offset_12989 + _13007;
	float2 xy_offset4 = _13008;
	float2 _13011 = float2(4.00000000e+00, 5.00000000e+00) * xy_step_12986;
	float2 _13012 = xy_start_offset_12989 + _13011;
	float2 xy_offset5 = _13012;
	float2 _13014;
	float2 _13015;
	_13014 = xy_offset0_12993;
	_13015 = final_axis_importance_12983;
	float3 _13016 = F__eval_unorm_rgb_weights(_13014, _13015);
	float3 w0_13017 = _13016;
	float2 _13018;
	float2 _13019;
	_13018 = xy_offset1_12997;
	_13019 = final_axis_importance_12983;
	float3 _13020 = F__eval_unorm_rgb_weights(_13018, _13019);
	float3 w1_13021 = _13020;
	float2 _13022;
	float2 _13023;
	_13022 = xy_offset2_13001;
	_13023 = final_axis_importance_12983;
	float3 _13024 = F__eval_unorm_rgb_weights(_13022, _13023);
	float3 w2_13025 = _13024;
	float2 _13026;
	float2 _13027;
	_13026 = xy_offset3_13005;
	_13027 = final_axis_importance_12983;
	float3 _13028 = F__eval_unorm_rgb_weights(_13026, _13027);
	float3 w3_13029 = _13028;
	float2 _13030;
	float2 _13031;
	_13030 = xy_offset4;
	_13031 = final_axis_importance_12983;
	float3 _13032 = F__eval_unorm_rgb_weights(_13030, _13031);
	float3 w4_13033 = _13032;
	float2 _13034;
	float2 _13035;
	_13034 = xy_offset5;
	_13035 = final_axis_importance_12983;
	float3 _13036 = F__eval_unorm_rgb_weights(_13034, _13035);
	float3 w5_13037 = _13036;
	float3 w6_13039 = w5_13037.zyx;
	float3 w7_13041 = w4_13033.zyx;
	float3 w8_13043 = w3_13029.zyx;
	float3 w9_13045 = w2_13025.zyx;
	float3 w10_13047 = w1_13021.zyx;
	float3 w11_13049 = w0_13017.zyx;
	float3 _13050 = w0_13017 + w1_13021;
	float3 _13051 = _13050 + w2_13025;
	float3 _13052 = _13051 + w3_13029;
	float3 _13053 = _13052 + w4_13033;
	float3 _13054 = _13053 + w5_13037;
	float3 half_sum_13055 = _13054;
	float3 _13057 = half_sum_13055 + half_sum_13055.zyx;
	float3 w_sum_13058 = _13057;
	float3 _13060 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13058;
	float3 w_sum_inv_13061 = _13060;
	float2x2 _13063 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13064 = _13063;
	float _13065;
	_13065 = frame;
	float2 _13066 = F__get_frame_sign(_13065);
	float2 frame_sign_13067 = _13066;
	float2 _13068 = xy_offset0_12993 * frame_sign_13067;
	float2 _13069 = mul(true_pixel_to_tex_uv_13064, _13068);
	float2 uv_offset0_13070 = _13069;
	float2 _13071 = xy_offset1_12997 * frame_sign_13067;
	float2 _13072 = mul(true_pixel_to_tex_uv_13064, _13071);
	float2 uv_offset1_13073 = _13072;
	float2 _13074 = xy_offset2_13001 * frame_sign_13067;
	float2 _13075 = mul(true_pixel_to_tex_uv_13064, _13074);
	float2 uv_offset2_13076 = _13075;
	float2 _13077 = xy_offset3_13005 * frame_sign_13067;
	float2 _13078 = mul(true_pixel_to_tex_uv_13064, _13077);
	float2 uv_offset3_13079 = _13078;
	float2 _13080 = xy_offset4 * frame_sign_13067;
	float2 _13081 = mul(true_pixel_to_tex_uv_13064, _13080);
	float2 uv_offset4 = _13081;
	float2 _13083 = xy_offset5 * frame_sign_13067;
	float2 _13084 = mul(true_pixel_to_tex_uv_13064, _13083);
	float2 uv_offset5 = _13084;
	float2 _13086 = tex_uv + uv_offset0_13070;
	float2 _13087;
	float _13088;
	_13087 = _13086;
	_13088 = input_gamma;
	float4 _13089 = F__tex2Daa_tiled_linearize(tex, _13087, _13088);
	float3 sample0_13091 = _13089.xyz;
	float2 _13092 = tex_uv + uv_offset1_13073;
	float2 _13093;
	float _13094;
	_13093 = _13092;
	_13094 = input_gamma;
	float4 _13095 = F__tex2Daa_tiled_linearize(tex, _13093, _13094);
	float3 sample1_13097 = _13095.xyz;
	float2 _13098 = tex_uv + uv_offset2_13076;
	float2 _13099;
	float _13100;
	_13099 = _13098;
	_13100 = input_gamma;
	float4 _13101 = F__tex2Daa_tiled_linearize(tex, _13099, _13100);
	float3 sample2_13103 = _13101.xyz;
	float2 _13104 = tex_uv + uv_offset3_13079;
	float2 _13105;
	float _13106;
	_13105 = _13104;
	_13106 = input_gamma;
	float4 _13107 = F__tex2Daa_tiled_linearize(tex, _13105, _13106);
	float3 sample3_13109 = _13107.xyz;
	float2 _13110 = tex_uv + uv_offset4;
	float2 _13111;
	float _13112;
	_13111 = _13110;
	_13112 = input_gamma;
	float4 _13113 = F__tex2Daa_tiled_linearize(tex, _13111, _13112);
	float3 sample4_13115 = _13113.xyz;
	float2 _13116 = tex_uv + uv_offset5;
	float2 _13117;
	float _13118;
	_13117 = _13116;
	_13118 = input_gamma;
	float4 _13119 = F__tex2Daa_tiled_linearize(tex, _13117, _13118);
	float3 sample5_13121 = _13119.xyz;
	float2 _13122 = tex_uv - uv_offset5;
	float2 _13123;
	float _13124;
	_13123 = _13122;
	_13124 = input_gamma;
	float4 _13125 = F__tex2Daa_tiled_linearize(tex, _13123, _13124);
	float3 sample6_13127 = _13125.xyz;
	float2 _13128 = tex_uv - uv_offset4;
	float2 _13129;
	float _13130;
	_13129 = _13128;
	_13130 = input_gamma;
	float4 _13131 = F__tex2Daa_tiled_linearize(tex, _13129, _13130);
	float3 sample7_13133 = _13131.xyz;
	float2 _13134 = tex_uv - uv_offset3_13079;
	float2 _13135;
	float _13136;
	_13135 = _13134;
	_13136 = input_gamma;
	float4 _13137 = F__tex2Daa_tiled_linearize(tex, _13135, _13136);
	float3 sample8_13139 = _13137.xyz;
	float2 _13140 = tex_uv - uv_offset2_13076;
	float2 _13141;
	float _13142;
	_13141 = _13140;
	_13142 = input_gamma;
	float4 _13143 = F__tex2Daa_tiled_linearize(tex, _13141, _13142);
	float3 sample9 = _13143.xyz;
	float2 _13146 = tex_uv - uv_offset1_13073;
	float2 _13147;
	float _13148;
	_13147 = _13146;
	_13148 = input_gamma;
	float4 _13149 = F__tex2Daa_tiled_linearize(tex, _13147, _13148);
	float3 sample10 = _13149.xyz;
	float2 _13152 = tex_uv - uv_offset0_13070;
	float2 _13153;
	float _13154;
	_13153 = _13152;
	_13154 = input_gamma;
	float4 _13155 = F__tex2Daa_tiled_linearize(tex, _13153, _13154);
	float3 sample11 = _13155.xyz;
	float3 _13158 = w0_13017 * sample0_13091;
	float3 _13159 = w1_13021 * sample1_13097;
	float3 _13160 = _13158 + _13159;
	float3 _13161 = w2_13025 * sample2_13103;
	float3 _13162 = _13160 + _13161;
	float3 _13163 = w3_13029 * sample3_13109;
	float3 _13164 = _13162 + _13163;
	float3 _13165 = w4_13033 * sample4_13115;
	float3 _13166 = _13164 + _13165;
	float3 _13167 = w5_13037 * sample5_13121;
	float3 _13168 = _13166 + _13167;
	float3 _13169 = w6_13039 * sample6_13127;
	float3 _13170 = _13168 + _13169;
	float3 _13171 = w7_13041 * sample7_13133;
	float3 _13172 = _13170 + _13171;
	float3 _13173 = w8_13043 * sample8_13139;
	float3 _13174 = _13172 + _13173;
	float3 _13175 = w9_13045 * sample9;
	float3 _13176 = _13174 + _13175;
	float3 _13177 = w10_13047 * sample10;
	float3 _13178 = _13176 + _13177;
	float3 _13179 = w11_13049 * sample11;
	float3 _13180 = _13178 + _13179;
	float3 _13181 = w_sum_inv_13061 * _13180;
	return _13181;
}
float3 F__tex2Daa16x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _13190 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_13191 = _13190;
	float2 subpixel_support_diameter_13193 = ssd_fai_13191.xy;
	float2 final_axis_importance_13195 = ssd_fai_13191.zw;
	float2 _13197 = float2(6.25000000e-02, 6.25000000e-02) * subpixel_support_diameter_13193;
	float2 xy_step_13198 = _13197;
	float2 _13200 = float2(-7.50000000e+00, -7.50000000e+00) * xy_step_13198;
	float2 xy_start_offset_13201 = _13200;
	float2 _13203 = float2(2.00000000e+00, 0.00000000e+00) * xy_step_13198;
	float2 _13204 = xy_start_offset_13201 + _13203;
	float2 xy_offset0_13205 = _13204;
	float2 _13207 = float2(9.00000000e+00, 1.00000000e+00) * xy_step_13198;
	float2 _13208 = xy_start_offset_13201 + _13207;
	float2 xy_offset1_13209 = _13208;
	float2 _13211 = float2(1.20000000e+01, 2.00000000e+00) * xy_step_13198;
	float2 _13212 = xy_start_offset_13201 + _13211;
	float2 xy_offset2_13213 = _13212;
	float2 _13215 = float2(4.00000000e+00, 3.00000000e+00) * xy_step_13198;
	float2 _13216 = xy_start_offset_13201 + _13215;
	float2 xy_offset3_13217 = _13216;
	float2 _13219 = float2(8.00000000e+00, 4.00000000e+00) * xy_step_13198;
	float2 _13220 = xy_start_offset_13201 + _13219;
	float2 xy_offset4_13221 = _13220;
	float2 _13223 = float2(1.40000000e+01, 5.00000000e+00) * xy_step_13198;
	float2 _13224 = xy_start_offset_13201 + _13223;
	float2 xy_offset5_13225 = _13224;
	float2 _13227 = float2(0.00000000e+00, 6.00000000e+00) * xy_step_13198;
	float2 _13228 = xy_start_offset_13201 + _13227;
	float2 xy_offset6 = _13228;
	float2 _13231 = float2(1.00000000e+01, 7.00000000e+00) * xy_step_13198;
	float2 _13232 = xy_start_offset_13201 + _13231;
	float2 xy_offset7 = _13232;
	float2 _13234;
	float2 _13235;
	_13234 = xy_offset0_13205;
	_13235 = final_axis_importance_13195;
	float3 _13236 = F__eval_unorm_rgb_weights(_13234, _13235);
	float3 w0_13237 = _13236;
	float2 _13238;
	float2 _13239;
	_13238 = xy_offset1_13209;
	_13239 = final_axis_importance_13195;
	float3 _13240 = F__eval_unorm_rgb_weights(_13238, _13239);
	float3 w1_13241 = _13240;
	float2 _13242;
	float2 _13243;
	_13242 = xy_offset2_13213;
	_13243 = final_axis_importance_13195;
	float3 _13244 = F__eval_unorm_rgb_weights(_13242, _13243);
	float3 w2_13245 = _13244;
	float2 _13246;
	float2 _13247;
	_13246 = xy_offset3_13217;
	_13247 = final_axis_importance_13195;
	float3 _13248 = F__eval_unorm_rgb_weights(_13246, _13247);
	float3 w3_13249 = _13248;
	float2 _13250;
	float2 _13251;
	_13250 = xy_offset4_13221;
	_13251 = final_axis_importance_13195;
	float3 _13252 = F__eval_unorm_rgb_weights(_13250, _13251);
	float3 w4_13253 = _13252;
	float2 _13254;
	float2 _13255;
	_13254 = xy_offset5_13225;
	_13255 = final_axis_importance_13195;
	float3 _13256 = F__eval_unorm_rgb_weights(_13254, _13255);
	float3 w5_13257 = _13256;
	float2 _13258;
	float2 _13259;
	_13258 = xy_offset6;
	_13259 = final_axis_importance_13195;
	float3 _13260 = F__eval_unorm_rgb_weights(_13258, _13259);
	float3 w6_13261 = _13260;
	float2 _13262;
	float2 _13263;
	_13262 = xy_offset7;
	_13263 = final_axis_importance_13195;
	float3 _13264 = F__eval_unorm_rgb_weights(_13262, _13263);
	float3 w7_13265 = _13264;
	float3 w8_13267 = w7_13265.zyx;
	float3 w9_13269 = w6_13261.zyx;
	float3 w10_13271 = w5_13257.zyx;
	float3 w11_13273 = w4_13253.zyx;
	float3 w12_13275 = w3_13249.zyx;
	float3 w13_13277 = w2_13245.zyx;
	float3 w14_13279 = w1_13241.zyx;
	float3 w15_13281 = w0_13237.zyx;
	float3 _13282 = w0_13237 + w1_13241;
	float3 _13283 = _13282 + w2_13245;
	float3 _13284 = _13283 + w3_13249;
	float3 _13285 = _13284 + w4_13253;
	float3 _13286 = _13285 + w5_13257;
	float3 _13287 = _13286 + w6_13261;
	float3 _13288 = _13287 + w7_13265;
	float3 half_sum_13289 = _13288;
	float3 _13291 = half_sum_13289 + half_sum_13289.zyx;
	float3 w_sum_13292 = _13291;
	float3 _13294 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13292;
	float3 w_sum_inv_13295 = _13294;
	float2x2 _13297 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13298 = _13297;
	float _13299;
	_13299 = frame;
	float2 _13300 = F__get_frame_sign(_13299);
	float2 frame_sign_13301 = _13300;
	float2 _13302 = xy_offset0_13205 * frame_sign_13301;
	float2 _13303 = mul(true_pixel_to_tex_uv_13298, _13302);
	float2 uv_offset0_13304 = _13303;
	float2 _13305 = xy_offset1_13209 * frame_sign_13301;
	float2 _13306 = mul(true_pixel_to_tex_uv_13298, _13305);
	float2 uv_offset1_13307 = _13306;
	float2 _13308 = xy_offset2_13213 * frame_sign_13301;
	float2 _13309 = mul(true_pixel_to_tex_uv_13298, _13308);
	float2 uv_offset2_13310 = _13309;
	float2 _13311 = xy_offset3_13217 * frame_sign_13301;
	float2 _13312 = mul(true_pixel_to_tex_uv_13298, _13311);
	float2 uv_offset3_13313 = _13312;
	float2 _13314 = xy_offset4_13221 * frame_sign_13301;
	float2 _13315 = mul(true_pixel_to_tex_uv_13298, _13314);
	float2 uv_offset4_13316 = _13315;
	float2 _13317 = xy_offset5_13225 * frame_sign_13301;
	float2 _13318 = mul(true_pixel_to_tex_uv_13298, _13317);
	float2 uv_offset5_13319 = _13318;
	float2 _13320 = xy_offset6 * frame_sign_13301;
	float2 _13321 = mul(true_pixel_to_tex_uv_13298, _13320);
	float2 uv_offset6 = _13321;
	float2 _13323 = xy_offset7 * frame_sign_13301;
	float2 _13324 = mul(true_pixel_to_tex_uv_13298, _13323);
	float2 uv_offset7 = _13324;
	float2 _13326 = tex_uv + uv_offset0_13304;
	float2 _13327;
	float _13328;
	_13327 = _13326;
	_13328 = input_gamma;
	float4 _13329 = F__tex2Daa_tiled_linearize(tex, _13327, _13328);
	float3 sample0_13331 = _13329.xyz;
	float2 _13332 = tex_uv + uv_offset1_13307;
	float2 _13333;
	float _13334;
	_13333 = _13332;
	_13334 = input_gamma;
	float4 _13335 = F__tex2Daa_tiled_linearize(tex, _13333, _13334);
	float3 sample1_13337 = _13335.xyz;
	float2 _13338 = tex_uv + uv_offset2_13310;
	float2 _13339;
	float _13340;
	_13339 = _13338;
	_13340 = input_gamma;
	float4 _13341 = F__tex2Daa_tiled_linearize(tex, _13339, _13340);
	float3 sample2_13343 = _13341.xyz;
	float2 _13344 = tex_uv + uv_offset3_13313;
	float2 _13345;
	float _13346;
	_13345 = _13344;
	_13346 = input_gamma;
	float4 _13347 = F__tex2Daa_tiled_linearize(tex, _13345, _13346);
	float3 sample3_13349 = _13347.xyz;
	float2 _13350 = tex_uv + uv_offset4_13316;
	float2 _13351;
	float _13352;
	_13351 = _13350;
	_13352 = input_gamma;
	float4 _13353 = F__tex2Daa_tiled_linearize(tex, _13351, _13352);
	float3 sample4_13355 = _13353.xyz;
	float2 _13356 = tex_uv + uv_offset5_13319;
	float2 _13357;
	float _13358;
	_13357 = _13356;
	_13358 = input_gamma;
	float4 _13359 = F__tex2Daa_tiled_linearize(tex, _13357, _13358);
	float3 sample5_13361 = _13359.xyz;
	float2 _13362 = tex_uv + uv_offset6;
	float2 _13363;
	float _13364;
	_13363 = _13362;
	_13364 = input_gamma;
	float4 _13365 = F__tex2Daa_tiled_linearize(tex, _13363, _13364);
	float3 sample6_13367 = _13365.xyz;
	float2 _13368 = tex_uv + uv_offset7;
	float2 _13369;
	float _13370;
	_13369 = _13368;
	_13370 = input_gamma;
	float4 _13371 = F__tex2Daa_tiled_linearize(tex, _13369, _13370);
	float3 sample7_13373 = _13371.xyz;
	float2 _13374 = tex_uv - uv_offset7;
	float2 _13375;
	float _13376;
	_13375 = _13374;
	_13376 = input_gamma;
	float4 _13377 = F__tex2Daa_tiled_linearize(tex, _13375, _13376);
	float3 sample8_13379 = _13377.xyz;
	float2 _13380 = tex_uv - uv_offset6;
	float2 _13381;
	float _13382;
	_13381 = _13380;
	_13382 = input_gamma;
	float4 _13383 = F__tex2Daa_tiled_linearize(tex, _13381, _13382);
	float3 sample9_13385 = _13383.xyz;
	float2 _13386 = tex_uv - uv_offset5_13319;
	float2 _13387;
	float _13388;
	_13387 = _13386;
	_13388 = input_gamma;
	float4 _13389 = F__tex2Daa_tiled_linearize(tex, _13387, _13388);
	float3 sample10_13391 = _13389.xyz;
	float2 _13392 = tex_uv - uv_offset4_13316;
	float2 _13393;
	float _13394;
	_13393 = _13392;
	_13394 = input_gamma;
	float4 _13395 = F__tex2Daa_tiled_linearize(tex, _13393, _13394);
	float3 sample11_13397 = _13395.xyz;
	float2 _13398 = tex_uv - uv_offset3_13313;
	float2 _13399;
	float _13400;
	_13399 = _13398;
	_13400 = input_gamma;
	float4 _13401 = F__tex2Daa_tiled_linearize(tex, _13399, _13400);
	float3 sample12 = _13401.xyz;
	float2 _13404 = tex_uv - uv_offset2_13310;
	float2 _13405;
	float _13406;
	_13405 = _13404;
	_13406 = input_gamma;
	float4 _13407 = F__tex2Daa_tiled_linearize(tex, _13405, _13406);
	float3 sample13 = _13407.xyz;
	float2 _13410 = tex_uv - uv_offset1_13307;
	float2 _13411;
	float _13412;
	_13411 = _13410;
	_13412 = input_gamma;
	float4 _13413 = F__tex2Daa_tiled_linearize(tex, _13411, _13412);
	float3 sample14 = _13413.xyz;
	float2 _13416 = tex_uv - uv_offset0_13304;
	float2 _13417;
	float _13418;
	_13417 = _13416;
	_13418 = input_gamma;
	float4 _13419 = F__tex2Daa_tiled_linearize(tex, _13417, _13418);
	float3 sample15 = _13419.xyz;
	float3 _13422 = w0_13237 * sample0_13331;
	float3 _13423 = w1_13241 * sample1_13337;
	float3 _13424 = _13422 + _13423;
	float3 _13425 = w2_13245 * sample2_13343;
	float3 _13426 = _13424 + _13425;
	float3 _13427 = w3_13249 * sample3_13349;
	float3 _13428 = _13426 + _13427;
	float3 _13429 = w4_13253 * sample4_13355;
	float3 _13430 = _13428 + _13429;
	float3 _13431 = w5_13257 * sample5_13361;
	float3 _13432 = _13430 + _13431;
	float3 _13433 = w6_13261 * sample6_13367;
	float3 _13434 = _13432 + _13433;
	float3 _13435 = w7_13265 * sample7_13373;
	float3 _13436 = _13434 + _13435;
	float3 _13437 = w8_13267 * sample8_13379;
	float3 _13438 = _13436 + _13437;
	float3 _13439 = w9_13269 * sample9_13385;
	float3 _13440 = _13438 + _13439;
	float3 _13441 = w10_13271 * sample10_13391;
	float3 _13442 = _13440 + _13441;
	float3 _13443 = w11_13273 * sample11_13397;
	float3 _13444 = _13442 + _13443;
	float3 _13445 = w12_13275 * sample12;
	float3 _13446 = _13444 + _13445;
	float3 _13447 = w13_13277 * sample13;
	float3 _13448 = _13446 + _13447;
	float3 _13449 = w14_13279 * sample14;
	float3 _13450 = _13448 + _13449;
	float3 _13451 = w15_13281 * sample15;
	float3 _13452 = _13450 + _13451;
	float3 _13453 = w_sum_inv_13295 * _13452;
	return _13453;
}
float3 F__tex2Daa20x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _13462 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_13463 = _13462;
	float2 subpixel_support_diameter_13465 = ssd_fai_13463.xy;
	float2 final_axis_importance_13467 = ssd_fai_13463.zw;
	float2 _13469 = float2(5.00000007e-02, 5.00000007e-02) * subpixel_support_diameter_13465;
	float2 xy_step_13470 = _13469;
	float2 _13472 = float2(-9.50000000e+00, -9.50000000e+00) * xy_step_13470;
	float2 xy_start_offset_13473 = _13472;
	float2 _13475 = float2(7.00000000e+00, 0.00000000e+00) * xy_step_13470;
	float2 _13476 = xy_start_offset_13473 + _13475;
	float2 xy_offset0_13477 = _13476;
	float2 _13479 = float2(1.60000000e+01, 1.00000000e+00) * xy_step_13470;
	float2 _13480 = xy_start_offset_13473 + _13479;
	float2 xy_offset1_13481 = _13480;
	float2 _13483 = float2(1.10000000e+01, 2.00000000e+00) * xy_step_13470;
	float2 _13484 = xy_start_offset_13473 + _13483;
	float2 xy_offset2_13485 = _13484;
	float2 _13487 = float2(1.00000000e+00, 3.00000000e+00) * xy_step_13470;
	float2 _13488 = xy_start_offset_13473 + _13487;
	float2 xy_offset3_13489 = _13488;
	float2 _13491 = float2(5.00000000e+00, 4.00000000e+00) * xy_step_13470;
	float2 _13492 = xy_start_offset_13473 + _13491;
	float2 xy_offset4_13493 = _13492;
	float2 _13495 = float2(1.50000000e+01, 5.00000000e+00) * xy_step_13470;
	float2 _13496 = xy_start_offset_13473 + _13495;
	float2 xy_offset5_13497 = _13496;
	float2 _13499 = float2(1.00000000e+01, 6.00000000e+00) * xy_step_13470;
	float2 _13500 = xy_start_offset_13473 + _13499;
	float2 xy_offset6_13501 = _13500;
	float2 _13503 = float2(1.90000000e+01, 7.00000000e+00) * xy_step_13470;
	float2 _13504 = xy_start_offset_13473 + _13503;
	float2 xy_offset7_13505 = _13504;
	float2 _13507 = float2(2.00000000e+00, 8.00000000e+00) * xy_step_13470;
	float2 _13508 = xy_start_offset_13473 + _13507;
	float2 xy_offset8 = _13508;
	float2 _13511 = float2(6.00000000e+00, 9.00000000e+00) * xy_step_13470;
	float2 _13512 = xy_start_offset_13473 + _13511;
	float2 xy_offset9 = _13512;
	float2 _13514;
	float2 _13515;
	_13514 = xy_offset0_13477;
	_13515 = final_axis_importance_13467;
	float3 _13516 = F__eval_unorm_rgb_weights(_13514, _13515);
	float3 w0_13517 = _13516;
	float2 _13518;
	float2 _13519;
	_13518 = xy_offset1_13481;
	_13519 = final_axis_importance_13467;
	float3 _13520 = F__eval_unorm_rgb_weights(_13518, _13519);
	float3 w1_13521 = _13520;
	float2 _13522;
	float2 _13523;
	_13522 = xy_offset2_13485;
	_13523 = final_axis_importance_13467;
	float3 _13524 = F__eval_unorm_rgb_weights(_13522, _13523);
	float3 w2_13525 = _13524;
	float2 _13526;
	float2 _13527;
	_13526 = xy_offset3_13489;
	_13527 = final_axis_importance_13467;
	float3 _13528 = F__eval_unorm_rgb_weights(_13526, _13527);
	float3 w3_13529 = _13528;
	float2 _13530;
	float2 _13531;
	_13530 = xy_offset4_13493;
	_13531 = final_axis_importance_13467;
	float3 _13532 = F__eval_unorm_rgb_weights(_13530, _13531);
	float3 w4_13533 = _13532;
	float2 _13534;
	float2 _13535;
	_13534 = xy_offset5_13497;
	_13535 = final_axis_importance_13467;
	float3 _13536 = F__eval_unorm_rgb_weights(_13534, _13535);
	float3 w5_13537 = _13536;
	float2 _13538;
	float2 _13539;
	_13538 = xy_offset6_13501;
	_13539 = final_axis_importance_13467;
	float3 _13540 = F__eval_unorm_rgb_weights(_13538, _13539);
	float3 w6_13541 = _13540;
	float2 _13542;
	float2 _13543;
	_13542 = xy_offset7_13505;
	_13543 = final_axis_importance_13467;
	float3 _13544 = F__eval_unorm_rgb_weights(_13542, _13543);
	float3 w7_13545 = _13544;
	float2 _13546;
	float2 _13547;
	_13546 = xy_offset8;
	_13547 = final_axis_importance_13467;
	float3 _13548 = F__eval_unorm_rgb_weights(_13546, _13547);
	float3 w8_13549 = _13548;
	float2 _13550;
	float2 _13551;
	_13550 = xy_offset9;
	_13551 = final_axis_importance_13467;
	float3 _13552 = F__eval_unorm_rgb_weights(_13550, _13551);
	float3 w9_13553 = _13552;
	float3 w10_13555 = w9_13553.zyx;
	float3 w11_13557 = w8_13549.zyx;
	float3 w12_13559 = w7_13545.zyx;
	float3 w13_13561 = w6_13541.zyx;
	float3 w14_13563 = w5_13537.zyx;
	float3 w15_13565 = w4_13533.zyx;
	float3 w16_13567 = w3_13529.zyx;
	float3 w17_13569 = w2_13525.zyx;
	float3 w18_13571 = w1_13521.zyx;
	float3 w19_13573 = w0_13517.zyx;
	float3 _13574 = w0_13517 + w1_13521;
	float3 _13575 = _13574 + w2_13525;
	float3 _13576 = _13575 + w3_13529;
	float3 _13577 = _13576 + w4_13533;
	float3 _13578 = _13577 + w5_13537;
	float3 _13579 = _13578 + w6_13541;
	float3 _13580 = _13579 + w7_13545;
	float3 _13581 = _13580 + w8_13549;
	float3 _13582 = _13581 + w9_13553;
	float3 half_sum_13583 = _13582;
	float3 _13585 = half_sum_13583 + half_sum_13583.zyx;
	float3 w_sum_13586 = _13585;
	float3 _13588 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13586;
	float3 w_sum_inv_13589 = _13588;
	float2x2 _13591 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13592 = _13591;
	float _13593;
	_13593 = frame;
	float2 _13594 = F__get_frame_sign(_13593);
	float2 frame_sign_13595 = _13594;
	float2 _13596 = xy_offset0_13477 * frame_sign_13595;
	float2 _13597 = mul(true_pixel_to_tex_uv_13592, _13596);
	float2 uv_offset0_13598 = _13597;
	float2 _13599 = xy_offset1_13481 * frame_sign_13595;
	float2 _13600 = mul(true_pixel_to_tex_uv_13592, _13599);
	float2 uv_offset1_13601 = _13600;
	float2 _13602 = xy_offset2_13485 * frame_sign_13595;
	float2 _13603 = mul(true_pixel_to_tex_uv_13592, _13602);
	float2 uv_offset2_13604 = _13603;
	float2 _13605 = xy_offset3_13489 * frame_sign_13595;
	float2 _13606 = mul(true_pixel_to_tex_uv_13592, _13605);
	float2 uv_offset3_13607 = _13606;
	float2 _13608 = xy_offset4_13493 * frame_sign_13595;
	float2 _13609 = mul(true_pixel_to_tex_uv_13592, _13608);
	float2 uv_offset4_13610 = _13609;
	float2 _13611 = xy_offset5_13497 * frame_sign_13595;
	float2 _13612 = mul(true_pixel_to_tex_uv_13592, _13611);
	float2 uv_offset5_13613 = _13612;
	float2 _13614 = xy_offset6_13501 * frame_sign_13595;
	float2 _13615 = mul(true_pixel_to_tex_uv_13592, _13614);
	float2 uv_offset6_13616 = _13615;
	float2 _13617 = xy_offset7_13505 * frame_sign_13595;
	float2 _13618 = mul(true_pixel_to_tex_uv_13592, _13617);
	float2 uv_offset7_13619 = _13618;
	float2 _13620 = xy_offset8 * frame_sign_13595;
	float2 _13621 = mul(true_pixel_to_tex_uv_13592, _13620);
	float2 uv_offset8 = _13621;
	float2 _13623 = xy_offset9 * frame_sign_13595;
	float2 _13624 = mul(true_pixel_to_tex_uv_13592, _13623);
	float2 uv_offset9 = _13624;
	float2 _13626 = tex_uv + uv_offset0_13598;
	float2 _13627;
	float _13628;
	_13627 = _13626;
	_13628 = input_gamma;
	float4 _13629 = F__tex2Daa_tiled_linearize(tex, _13627, _13628);
	float3 sample0_13631 = _13629.xyz;
	float2 _13632 = tex_uv + uv_offset1_13601;
	float2 _13633;
	float _13634;
	_13633 = _13632;
	_13634 = input_gamma;
	float4 _13635 = F__tex2Daa_tiled_linearize(tex, _13633, _13634);
	float3 sample1_13637 = _13635.xyz;
	float2 _13638 = tex_uv + uv_offset2_13604;
	float2 _13639;
	float _13640;
	_13639 = _13638;
	_13640 = input_gamma;
	float4 _13641 = F__tex2Daa_tiled_linearize(tex, _13639, _13640);
	float3 sample2_13643 = _13641.xyz;
	float2 _13644 = tex_uv + uv_offset3_13607;
	float2 _13645;
	float _13646;
	_13645 = _13644;
	_13646 = input_gamma;
	float4 _13647 = F__tex2Daa_tiled_linearize(tex, _13645, _13646);
	float3 sample3_13649 = _13647.xyz;
	float2 _13650 = tex_uv + uv_offset4_13610;
	float2 _13651;
	float _13652;
	_13651 = _13650;
	_13652 = input_gamma;
	float4 _13653 = F__tex2Daa_tiled_linearize(tex, _13651, _13652);
	float3 sample4_13655 = _13653.xyz;
	float2 _13656 = tex_uv + uv_offset5_13613;
	float2 _13657;
	float _13658;
	_13657 = _13656;
	_13658 = input_gamma;
	float4 _13659 = F__tex2Daa_tiled_linearize(tex, _13657, _13658);
	float3 sample5_13661 = _13659.xyz;
	float2 _13662 = tex_uv + uv_offset6_13616;
	float2 _13663;
	float _13664;
	_13663 = _13662;
	_13664 = input_gamma;
	float4 _13665 = F__tex2Daa_tiled_linearize(tex, _13663, _13664);
	float3 sample6_13667 = _13665.xyz;
	float2 _13668 = tex_uv + uv_offset7_13619;
	float2 _13669;
	float _13670;
	_13669 = _13668;
	_13670 = input_gamma;
	float4 _13671 = F__tex2Daa_tiled_linearize(tex, _13669, _13670);
	float3 sample7_13673 = _13671.xyz;
	float2 _13674 = tex_uv + uv_offset8;
	float2 _13675;
	float _13676;
	_13675 = _13674;
	_13676 = input_gamma;
	float4 _13677 = F__tex2Daa_tiled_linearize(tex, _13675, _13676);
	float3 sample8_13679 = _13677.xyz;
	float2 _13680 = tex_uv + uv_offset9;
	float2 _13681;
	float _13682;
	_13681 = _13680;
	_13682 = input_gamma;
	float4 _13683 = F__tex2Daa_tiled_linearize(tex, _13681, _13682);
	float3 sample9_13685 = _13683.xyz;
	float2 _13686 = tex_uv - uv_offset9;
	float2 _13687;
	float _13688;
	_13687 = _13686;
	_13688 = input_gamma;
	float4 _13689 = F__tex2Daa_tiled_linearize(tex, _13687, _13688);
	float3 sample10_13691 = _13689.xyz;
	float2 _13692 = tex_uv - uv_offset8;
	float2 _13693;
	float _13694;
	_13693 = _13692;
	_13694 = input_gamma;
	float4 _13695 = F__tex2Daa_tiled_linearize(tex, _13693, _13694);
	float3 sample11_13697 = _13695.xyz;
	float2 _13698 = tex_uv - uv_offset7_13619;
	float2 _13699;
	float _13700;
	_13699 = _13698;
	_13700 = input_gamma;
	float4 _13701 = F__tex2Daa_tiled_linearize(tex, _13699, _13700);
	float3 sample12_13703 = _13701.xyz;
	float2 _13704 = tex_uv - uv_offset6_13616;
	float2 _13705;
	float _13706;
	_13705 = _13704;
	_13706 = input_gamma;
	float4 _13707 = F__tex2Daa_tiled_linearize(tex, _13705, _13706);
	float3 sample13_13709 = _13707.xyz;
	float2 _13710 = tex_uv - uv_offset5_13613;
	float2 _13711;
	float _13712;
	_13711 = _13710;
	_13712 = input_gamma;
	float4 _13713 = F__tex2Daa_tiled_linearize(tex, _13711, _13712);
	float3 sample14_13715 = _13713.xyz;
	float2 _13716 = tex_uv - uv_offset4_13610;
	float2 _13717;
	float _13718;
	_13717 = _13716;
	_13718 = input_gamma;
	float4 _13719 = F__tex2Daa_tiled_linearize(tex, _13717, _13718);
	float3 sample15_13721 = _13719.xyz;
	float2 _13722 = tex_uv - uv_offset3_13607;
	float2 _13723;
	float _13724;
	_13723 = _13722;
	_13724 = input_gamma;
	float4 _13725 = F__tex2Daa_tiled_linearize(tex, _13723, _13724);
	float3 sample16 = _13725.xyz;
	float2 _13728 = tex_uv - uv_offset2_13604;
	float2 _13729;
	float _13730;
	_13729 = _13728;
	_13730 = input_gamma;
	float4 _13731 = F__tex2Daa_tiled_linearize(tex, _13729, _13730);
	float3 sample17 = _13731.xyz;
	float2 _13734 = tex_uv - uv_offset1_13601;
	float2 _13735;
	float _13736;
	_13735 = _13734;
	_13736 = input_gamma;
	float4 _13737 = F__tex2Daa_tiled_linearize(tex, _13735, _13736);
	float3 sample18 = _13737.xyz;
	float2 _13740 = tex_uv - uv_offset0_13598;
	float2 _13741;
	float _13742;
	_13741 = _13740;
	_13742 = input_gamma;
	float4 _13743 = F__tex2Daa_tiled_linearize(tex, _13741, _13742);
	float3 sample19 = _13743.xyz;
	float3 _13746 = w0_13517 * sample0_13631;
	float3 _13747 = w1_13521 * sample1_13637;
	float3 _13748 = _13746 + _13747;
	float3 _13749 = w2_13525 * sample2_13643;
	float3 _13750 = _13748 + _13749;
	float3 _13751 = w3_13529 * sample3_13649;
	float3 _13752 = _13750 + _13751;
	float3 _13753 = w4_13533 * sample4_13655;
	float3 _13754 = _13752 + _13753;
	float3 _13755 = w5_13537 * sample5_13661;
	float3 _13756 = _13754 + _13755;
	float3 _13757 = w6_13541 * sample6_13667;
	float3 _13758 = _13756 + _13757;
	float3 _13759 = w7_13545 * sample7_13673;
	float3 _13760 = _13758 + _13759;
	float3 _13761 = w8_13549 * sample8_13679;
	float3 _13762 = _13760 + _13761;
	float3 _13763 = w9_13553 * sample9_13685;
	float3 _13764 = _13762 + _13763;
	float3 _13765 = w10_13555 * sample10_13691;
	float3 _13766 = _13764 + _13765;
	float3 _13767 = w11_13557 * sample11_13697;
	float3 _13768 = _13766 + _13767;
	float3 _13769 = w12_13559 * sample12_13703;
	float3 _13770 = _13768 + _13769;
	float3 _13771 = w13_13561 * sample13_13709;
	float3 _13772 = _13770 + _13771;
	float3 _13773 = w14_13563 * sample14_13715;
	float3 _13774 = _13772 + _13773;
	float3 _13775 = w15_13565 * sample15_13721;
	float3 _13776 = _13774 + _13775;
	float3 _13777 = w16_13567 * sample16;
	float3 _13778 = _13776 + _13777;
	float3 _13779 = w17_13569 * sample17;
	float3 _13780 = _13778 + _13779;
	float3 _13781 = w18_13571 * sample18;
	float3 _13782 = _13780 + _13781;
	float3 _13783 = w19_13573 * sample19;
	float3 _13784 = _13782 + _13783;
	float3 _13785 = w_sum_inv_13589 * _13784;
	return _13785;
}
float3 F__tex2Daa24x(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _13794 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_13795 = _13794;
	float2 subpixel_support_diameter_13797 = ssd_fai_13795.xy;
	float2 final_axis_importance_13799 = ssd_fai_13795.zw;
	float2 _13801 = float2(4.16666679e-02, 4.16666679e-02) * subpixel_support_diameter_13797;
	float2 xy_step_13802 = _13801;
	float2 _13804 = float2(-1.15000000e+01, -1.15000000e+01) * xy_step_13802;
	float2 xy_start_offset_13805 = _13804;
	float2 _13807 = float2(6.00000000e+00, 0.00000000e+00) * xy_step_13802;
	float2 _13808 = xy_start_offset_13805 + _13807;
	float2 xy_offset0_13809 = _13808;
	float2 _13811 = float2(1.60000000e+01, 1.00000000e+00) * xy_step_13802;
	float2 _13812 = xy_start_offset_13805 + _13811;
	float2 xy_offset1_13813 = _13812;
	float2 _13815 = float2(1.00000000e+01, 2.00000000e+00) * xy_step_13802;
	float2 _13816 = xy_start_offset_13805 + _13815;
	float2 xy_offset2_13817 = _13816;
	float2 _13819 = float2(2.10000000e+01, 3.00000000e+00) * xy_step_13802;
	float2 _13820 = xy_start_offset_13805 + _13819;
	float2 xy_offset3_13821 = _13820;
	float2 _13823 = float2(5.00000000e+00, 4.00000000e+00) * xy_step_13802;
	float2 _13824 = xy_start_offset_13805 + _13823;
	float2 xy_offset4_13825 = _13824;
	float2 _13827 = float2(1.50000000e+01, 5.00000000e+00) * xy_step_13802;
	float2 _13828 = xy_start_offset_13805 + _13827;
	float2 xy_offset5_13829 = _13828;
	float2 _13831 = float2(1.00000000e+00, 6.00000000e+00) * xy_step_13802;
	float2 _13832 = xy_start_offset_13805 + _13831;
	float2 xy_offset6_13833 = _13832;
	float2 _13835 = float2(1.10000000e+01, 7.00000000e+00) * xy_step_13802;
	float2 _13836 = xy_start_offset_13805 + _13835;
	float2 xy_offset7_13837 = _13836;
	float2 _13839 = float2(1.90000000e+01, 8.00000000e+00) * xy_step_13802;
	float2 _13840 = xy_start_offset_13805 + _13839;
	float2 xy_offset8_13841 = _13840;
	float2 _13843 = float2(2.30000000e+01, 9.00000000e+00) * xy_step_13802;
	float2 _13844 = xy_start_offset_13805 + _13843;
	float2 xy_offset9_13845 = _13844;
	float2 _13847 = float2(3.00000000e+00, 1.00000000e+01) * xy_step_13802;
	float2 _13848 = xy_start_offset_13805 + _13847;
	float2 xy_offset10 = _13848;
	float2 _13851 = float2(1.40000000e+01, 1.10000000e+01) * xy_step_13802;
	float2 _13852 = xy_start_offset_13805 + _13851;
	float2 xy_offset11 = _13852;
	float2 _13854;
	float2 _13855;
	_13854 = xy_offset0_13809;
	_13855 = final_axis_importance_13799;
	float3 _13856 = F__eval_unorm_rgb_weights(_13854, _13855);
	float3 w0_13857 = _13856;
	float2 _13858;
	float2 _13859;
	_13858 = xy_offset1_13813;
	_13859 = final_axis_importance_13799;
	float3 _13860 = F__eval_unorm_rgb_weights(_13858, _13859);
	float3 w1_13861 = _13860;
	float2 _13862;
	float2 _13863;
	_13862 = xy_offset2_13817;
	_13863 = final_axis_importance_13799;
	float3 _13864 = F__eval_unorm_rgb_weights(_13862, _13863);
	float3 w2_13865 = _13864;
	float2 _13866;
	float2 _13867;
	_13866 = xy_offset3_13821;
	_13867 = final_axis_importance_13799;
	float3 _13868 = F__eval_unorm_rgb_weights(_13866, _13867);
	float3 w3_13869 = _13868;
	float2 _13870;
	float2 _13871;
	_13870 = xy_offset4_13825;
	_13871 = final_axis_importance_13799;
	float3 _13872 = F__eval_unorm_rgb_weights(_13870, _13871);
	float3 w4_13873 = _13872;
	float2 _13874;
	float2 _13875;
	_13874 = xy_offset5_13829;
	_13875 = final_axis_importance_13799;
	float3 _13876 = F__eval_unorm_rgb_weights(_13874, _13875);
	float3 w5_13877 = _13876;
	float2 _13878;
	float2 _13879;
	_13878 = xy_offset6_13833;
	_13879 = final_axis_importance_13799;
	float3 _13880 = F__eval_unorm_rgb_weights(_13878, _13879);
	float3 w6_13881 = _13880;
	float2 _13882;
	float2 _13883;
	_13882 = xy_offset7_13837;
	_13883 = final_axis_importance_13799;
	float3 _13884 = F__eval_unorm_rgb_weights(_13882, _13883);
	float3 w7_13885 = _13884;
	float2 _13886;
	float2 _13887;
	_13886 = xy_offset8_13841;
	_13887 = final_axis_importance_13799;
	float3 _13888 = F__eval_unorm_rgb_weights(_13886, _13887);
	float3 w8_13889 = _13888;
	float2 _13890;
	float2 _13891;
	_13890 = xy_offset9_13845;
	_13891 = final_axis_importance_13799;
	float3 _13892 = F__eval_unorm_rgb_weights(_13890, _13891);
	float3 w9_13893 = _13892;
	float2 _13894;
	float2 _13895;
	_13894 = xy_offset10;
	_13895 = final_axis_importance_13799;
	float3 _13896 = F__eval_unorm_rgb_weights(_13894, _13895);
	float3 w10_13897 = _13896;
	float2 _13898;
	float2 _13899;
	_13898 = xy_offset11;
	_13899 = final_axis_importance_13799;
	float3 _13900 = F__eval_unorm_rgb_weights(_13898, _13899);
	float3 w11_13901 = _13900;
	float3 w12_13903 = w11_13901.zyx;
	float3 w13_13905 = w10_13897.zyx;
	float3 w14_13907 = w9_13893.zyx;
	float3 w15_13909 = w8_13889.zyx;
	float3 w16_13911 = w7_13885.zyx;
	float3 w17_13913 = w6_13881.zyx;
	float3 w18_13915 = w5_13877.zyx;
	float3 w19_13917 = w4_13873.zyx;
	float3 w20_13919 = w3_13869.zyx;
	float3 w21_13921 = w2_13865.zyx;
	float3 w22 = w1_13861.zyx;
	float3 w23_13925 = w0_13857.zyx;
	float3 _13926 = w0_13857 + w1_13861;
	float3 _13927 = _13926 + w2_13865;
	float3 _13928 = _13927 + w3_13869;
	float3 _13929 = _13928 + w4_13873;
	float3 _13930 = _13929 + w5_13877;
	float3 _13931 = _13930 + w6_13881;
	float3 _13932 = _13931 + w7_13885;
	float3 _13933 = _13932 + w8_13889;
	float3 _13934 = _13933 + w9_13893;
	float3 _13935 = _13934 + w10_13897;
	float3 _13936 = _13935 + w11_13901;
	float3 half_sum_13937 = _13936;
	float3 _13939 = half_sum_13937 + half_sum_13937.zyx;
	float3 w_sum_13940 = _13939;
	float3 _13942 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_13940;
	float3 w_sum_inv_13943 = _13942;
	float2x2 _13945 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_13946 = _13945;
	float _13947;
	_13947 = frame;
	float2 _13948 = F__get_frame_sign(_13947);
	float2 frame_sign_13949 = _13948;
	float2 _13950 = xy_offset0_13809 * frame_sign_13949;
	float2 _13951 = mul(true_pixel_to_tex_uv_13946, _13950);
	float2 uv_offset0_13952 = _13951;
	float2 _13953 = xy_offset1_13813 * frame_sign_13949;
	float2 _13954 = mul(true_pixel_to_tex_uv_13946, _13953);
	float2 uv_offset1_13955 = _13954;
	float2 _13956 = xy_offset2_13817 * frame_sign_13949;
	float2 _13957 = mul(true_pixel_to_tex_uv_13946, _13956);
	float2 uv_offset2_13958 = _13957;
	float2 _13959 = xy_offset3_13821 * frame_sign_13949;
	float2 _13960 = mul(true_pixel_to_tex_uv_13946, _13959);
	float2 uv_offset3_13961 = _13960;
	float2 _13962 = xy_offset4_13825 * frame_sign_13949;
	float2 _13963 = mul(true_pixel_to_tex_uv_13946, _13962);
	float2 uv_offset4_13964 = _13963;
	float2 _13965 = xy_offset5_13829 * frame_sign_13949;
	float2 _13966 = mul(true_pixel_to_tex_uv_13946, _13965);
	float2 uv_offset5_13967 = _13966;
	float2 _13968 = xy_offset6_13833 * frame_sign_13949;
	float2 _13969 = mul(true_pixel_to_tex_uv_13946, _13968);
	float2 uv_offset6_13970 = _13969;
	float2 _13971 = xy_offset7_13837 * frame_sign_13949;
	float2 _13972 = mul(true_pixel_to_tex_uv_13946, _13971);
	float2 uv_offset7_13973 = _13972;
	float2 _13974 = xy_offset8_13841 * frame_sign_13949;
	float2 _13975 = mul(true_pixel_to_tex_uv_13946, _13974);
	float2 uv_offset8_13976 = _13975;
	float2 _13977 = xy_offset9_13845 * frame_sign_13949;
	float2 _13978 = mul(true_pixel_to_tex_uv_13946, _13977);
	float2 uv_offset9_13979 = _13978;
	float2 _13980 = xy_offset10 * frame_sign_13949;
	float2 _13981 = mul(true_pixel_to_tex_uv_13946, _13980);
	float2 uv_offset10 = _13981;
	float2 _13983 = xy_offset11 * frame_sign_13949;
	float2 _13984 = mul(true_pixel_to_tex_uv_13946, _13983);
	float2 uv_offset11 = _13984;
	float2 _13986 = tex_uv + uv_offset0_13952;
	float2 _13987;
	float _13988;
	_13987 = _13986;
	_13988 = input_gamma;
	float4 _13989 = F__tex2Daa_tiled_linearize(tex, _13987, _13988);
	float3 sample0_13991 = _13989.xyz;
	float2 _13992 = tex_uv + uv_offset1_13955;
	float2 _13993;
	float _13994;
	_13993 = _13992;
	_13994 = input_gamma;
	float4 _13995 = F__tex2Daa_tiled_linearize(tex, _13993, _13994);
	float3 sample1_13997 = _13995.xyz;
	float2 _13998 = tex_uv + uv_offset2_13958;
	float2 _13999;
	float _14000;
	_13999 = _13998;
	_14000 = input_gamma;
	float4 _14001 = F__tex2Daa_tiled_linearize(tex, _13999, _14000);
	float3 sample2_14003 = _14001.xyz;
	float2 _14004 = tex_uv + uv_offset3_13961;
	float2 _14005;
	float _14006;
	_14005 = _14004;
	_14006 = input_gamma;
	float4 _14007 = F__tex2Daa_tiled_linearize(tex, _14005, _14006);
	float3 sample3_14009 = _14007.xyz;
	float2 _14010 = tex_uv + uv_offset4_13964;
	float2 _14011;
	float _14012;
	_14011 = _14010;
	_14012 = input_gamma;
	float4 _14013 = F__tex2Daa_tiled_linearize(tex, _14011, _14012);
	float3 sample4_14015 = _14013.xyz;
	float2 _14016 = tex_uv + uv_offset5_13967;
	float2 _14017;
	float _14018;
	_14017 = _14016;
	_14018 = input_gamma;
	float4 _14019 = F__tex2Daa_tiled_linearize(tex, _14017, _14018);
	float3 sample5_14021 = _14019.xyz;
	float2 _14022 = tex_uv + uv_offset6_13970;
	float2 _14023;
	float _14024;
	_14023 = _14022;
	_14024 = input_gamma;
	float4 _14025 = F__tex2Daa_tiled_linearize(tex, _14023, _14024);
	float3 sample6_14027 = _14025.xyz;
	float2 _14028 = tex_uv + uv_offset7_13973;
	float2 _14029;
	float _14030;
	_14029 = _14028;
	_14030 = input_gamma;
	float4 _14031 = F__tex2Daa_tiled_linearize(tex, _14029, _14030);
	float3 sample7_14033 = _14031.xyz;
	float2 _14034 = tex_uv + uv_offset8_13976;
	float2 _14035;
	float _14036;
	_14035 = _14034;
	_14036 = input_gamma;
	float4 _14037 = F__tex2Daa_tiled_linearize(tex, _14035, _14036);
	float3 sample8_14039 = _14037.xyz;
	float2 _14040 = tex_uv + uv_offset9_13979;
	float2 _14041;
	float _14042;
	_14041 = _14040;
	_14042 = input_gamma;
	float4 _14043 = F__tex2Daa_tiled_linearize(tex, _14041, _14042);
	float3 sample9_14045 = _14043.xyz;
	float2 _14046 = tex_uv + uv_offset10;
	float2 _14047;
	float _14048;
	_14047 = _14046;
	_14048 = input_gamma;
	float4 _14049 = F__tex2Daa_tiled_linearize(tex, _14047, _14048);
	float3 sample10_14051 = _14049.xyz;
	float2 _14052 = tex_uv + uv_offset11;
	float2 _14053;
	float _14054;
	_14053 = _14052;
	_14054 = input_gamma;
	float4 _14055 = F__tex2Daa_tiled_linearize(tex, _14053, _14054);
	float3 sample11_14057 = _14055.xyz;
	float2 _14058 = tex_uv - uv_offset11;
	float2 _14059;
	float _14060;
	_14059 = _14058;
	_14060 = input_gamma;
	float4 _14061 = F__tex2Daa_tiled_linearize(tex, _14059, _14060);
	float3 sample12_14063 = _14061.xyz;
	float2 _14064 = tex_uv - uv_offset10;
	float2 _14065;
	float _14066;
	_14065 = _14064;
	_14066 = input_gamma;
	float4 _14067 = F__tex2Daa_tiled_linearize(tex, _14065, _14066);
	float3 sample13_14069 = _14067.xyz;
	float2 _14070 = tex_uv - uv_offset9_13979;
	float2 _14071;
	float _14072;
	_14071 = _14070;
	_14072 = input_gamma;
	float4 _14073 = F__tex2Daa_tiled_linearize(tex, _14071, _14072);
	float3 sample14_14075 = _14073.xyz;
	float2 _14076 = tex_uv - uv_offset8_13976;
	float2 _14077;
	float _14078;
	_14077 = _14076;
	_14078 = input_gamma;
	float4 _14079 = F__tex2Daa_tiled_linearize(tex, _14077, _14078);
	float3 sample15_14081 = _14079.xyz;
	float2 _14082 = tex_uv - uv_offset7_13973;
	float2 _14083;
	float _14084;
	_14083 = _14082;
	_14084 = input_gamma;
	float4 _14085 = F__tex2Daa_tiled_linearize(tex, _14083, _14084);
	float3 sample16_14087 = _14085.xyz;
	float2 _14088 = tex_uv - uv_offset6_13970;
	float2 _14089;
	float _14090;
	_14089 = _14088;
	_14090 = input_gamma;
	float4 _14091 = F__tex2Daa_tiled_linearize(tex, _14089, _14090);
	float3 sample17_14093 = _14091.xyz;
	float2 _14094 = tex_uv - uv_offset5_13967;
	float2 _14095;
	float _14096;
	_14095 = _14094;
	_14096 = input_gamma;
	float4 _14097 = F__tex2Daa_tiled_linearize(tex, _14095, _14096);
	float3 sample18_14099 = _14097.xyz;
	float2 _14100 = tex_uv - uv_offset4_13964;
	float2 _14101;
	float _14102;
	_14101 = _14100;
	_14102 = input_gamma;
	float4 _14103 = F__tex2Daa_tiled_linearize(tex, _14101, _14102);
	float3 sample19_14105 = _14103.xyz;
	float2 _14106 = tex_uv - uv_offset3_13961;
	float2 _14107;
	float _14108;
	_14107 = _14106;
	_14108 = input_gamma;
	float4 _14109 = F__tex2Daa_tiled_linearize(tex, _14107, _14108);
	float3 sample20 = _14109.xyz;
	float2 _14112 = tex_uv - uv_offset2_13958;
	float2 _14113;
	float _14114;
	_14113 = _14112;
	_14114 = input_gamma;
	float4 _14115 = F__tex2Daa_tiled_linearize(tex, _14113, _14114);
	float3 sample21 = _14115.xyz;
	float2 _14118 = tex_uv - uv_offset1_13955;
	float2 _14119;
	float _14120;
	_14119 = _14118;
	_14120 = input_gamma;
	float4 _14121 = F__tex2Daa_tiled_linearize(tex, _14119, _14120);
	float3 sample22 = _14121.xyz;
	float2 _14124 = tex_uv - uv_offset0_13952;
	float2 _14125;
	float _14126;
	_14125 = _14124;
	_14126 = input_gamma;
	float4 _14127 = F__tex2Daa_tiled_linearize(tex, _14125, _14126);
	float3 sample23 = _14127.xyz;
	float3 _14130 = w0_13857 * sample0_13991;
	float3 _14131 = w1_13861 * sample1_13997;
	float3 _14132 = _14130 + _14131;
	float3 _14133 = w2_13865 * sample2_14003;
	float3 _14134 = _14132 + _14133;
	float3 _14135 = w3_13869 * sample3_14009;
	float3 _14136 = _14134 + _14135;
	float3 _14137 = w4_13873 * sample4_14015;
	float3 _14138 = _14136 + _14137;
	float3 _14139 = w5_13877 * sample5_14021;
	float3 _14140 = _14138 + _14139;
	float3 _14141 = w6_13881 * sample6_14027;
	float3 _14142 = _14140 + _14141;
	float3 _14143 = w7_13885 * sample7_14033;
	float3 _14144 = _14142 + _14143;
	float3 _14145 = w8_13889 * sample8_14039;
	float3 _14146 = _14144 + _14145;
	float3 _14147 = w9_13893 * sample9_14045;
	float3 _14148 = _14146 + _14147;
	float3 _14149 = w10_13897 * sample10_14051;
	float3 _14150 = _14148 + _14149;
	float3 _14151 = w11_13901 * sample11_14057;
	float3 _14152 = _14150 + _14151;
	float3 _14153 = w12_13903 * sample12_14063;
	float3 _14154 = _14152 + _14153;
	float3 _14155 = w13_13905 * sample13_14069;
	float3 _14156 = _14154 + _14155;
	float3 _14157 = w14_13907 * sample14_14075;
	float3 _14158 = _14156 + _14157;
	float3 _14159 = w15_13909 * sample15_14081;
	float3 _14160 = _14158 + _14159;
	float3 _14161 = w16_13911 * sample16_14087;
	float3 _14162 = _14160 + _14161;
	float3 _14163 = w17_13913 * sample17_14093;
	float3 _14164 = _14162 + _14163;
	float3 _14165 = w18_13915 * sample18_14099;
	float3 _14166 = _14164 + _14165;
	float3 _14167 = w19_13917 * sample19_14105;
	float3 _14168 = _14166 + _14167;
	float3 _14169 = w20_13919 * sample20;
	float3 _14170 = _14168 + _14169;
	float3 _14171 = w21_13921 * sample21;
	float3 _14172 = _14170 + _14171;
	float3 _14173 = w22 * sample22;
	float3 _14174 = _14172 + _14173;
	float3 _14175 = w23_13925 * sample23;
	float3 _14176 = _14174 + _14175;
	float3 _14177 = w_sum_inv_13943 * _14176;
	return _14177;
}
float3 F__tex2Daa_debug_16x_regular(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _14186 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_14187 = _14186;
	float2 subpixel_support_diameter_14189 = ssd_fai_14187.xy;
	float2 final_axis_importance_14191 = ssd_fai_14187.zw;
	float2 _14193 = float2(2.50000000e-01, 2.50000000e-01) * subpixel_support_diameter_14189;
	float2 xy_step_14194 = _14193;
	float2 _14196 = float2(-1.50000000e+00, -1.50000000e+00) * xy_step_14194;
	float2 xy_start_offset_14197 = _14196;
	float2 _14199 = float2(0.00000000e+00, 0.00000000e+00) * xy_step_14194;
	float2 _14200 = xy_start_offset_14197 + _14199;
	float2 xy_offset0_14201 = _14200;
	float2 _14203 = float2(1.00000000e+00, 0.00000000e+00) * xy_step_14194;
	float2 _14204 = xy_start_offset_14197 + _14203;
	float2 xy_offset1_14205 = _14204;
	float2 _14207 = float2(2.00000000e+00, 0.00000000e+00) * xy_step_14194;
	float2 _14208 = xy_start_offset_14197 + _14207;
	float2 xy_offset2_14209 = _14208;
	float2 _14211 = float2(3.00000000e+00, 0.00000000e+00) * xy_step_14194;
	float2 _14212 = xy_start_offset_14197 + _14211;
	float2 xy_offset3_14213 = _14212;
	float2 _14215 = float2(0.00000000e+00, 1.00000000e+00) * xy_step_14194;
	float2 _14216 = xy_start_offset_14197 + _14215;
	float2 xy_offset4_14217 = _14216;
	float2 _14219 = float2(1.00000000e+00, 1.00000000e+00) * xy_step_14194;
	float2 _14220 = xy_start_offset_14197 + _14219;
	float2 xy_offset5_14221 = _14220;
	float2 _14223 = float2(2.00000000e+00, 1.00000000e+00) * xy_step_14194;
	float2 _14224 = xy_start_offset_14197 + _14223;
	float2 xy_offset6_14225 = _14224;
	float2 _14227 = float2(3.00000000e+00, 1.00000000e+00) * xy_step_14194;
	float2 _14228 = xy_start_offset_14197 + _14227;
	float2 xy_offset7_14229 = _14228;
	float2 _14230;
	float2 _14231;
	_14230 = xy_offset0_14201;
	_14231 = final_axis_importance_14191;
	float3 _14232 = F__eval_unorm_rgb_weights(_14230, _14231);
	float3 w0_14233 = _14232;
	float2 _14234;
	float2 _14235;
	_14234 = xy_offset1_14205;
	_14235 = final_axis_importance_14191;
	float3 _14236 = F__eval_unorm_rgb_weights(_14234, _14235);
	float3 w1_14237 = _14236;
	float2 _14238;
	float2 _14239;
	_14238 = xy_offset2_14209;
	_14239 = final_axis_importance_14191;
	float3 _14240 = F__eval_unorm_rgb_weights(_14238, _14239);
	float3 w2_14241 = _14240;
	float2 _14242;
	float2 _14243;
	_14242 = xy_offset3_14213;
	_14243 = final_axis_importance_14191;
	float3 _14244 = F__eval_unorm_rgb_weights(_14242, _14243);
	float3 w3_14245 = _14244;
	float2 _14246;
	float2 _14247;
	_14246 = xy_offset4_14217;
	_14247 = final_axis_importance_14191;
	float3 _14248 = F__eval_unorm_rgb_weights(_14246, _14247);
	float3 w4_14249 = _14248;
	float2 _14250;
	float2 _14251;
	_14250 = xy_offset5_14221;
	_14251 = final_axis_importance_14191;
	float3 _14252 = F__eval_unorm_rgb_weights(_14250, _14251);
	float3 w5_14253 = _14252;
	float2 _14254;
	float2 _14255;
	_14254 = xy_offset6_14225;
	_14255 = final_axis_importance_14191;
	float3 _14256 = F__eval_unorm_rgb_weights(_14254, _14255);
	float3 w6_14257 = _14256;
	float2 _14258;
	float2 _14259;
	_14258 = xy_offset7_14229;
	_14259 = final_axis_importance_14191;
	float3 _14260 = F__eval_unorm_rgb_weights(_14258, _14259);
	float3 w7_14261 = _14260;
	float3 w8_14263 = w7_14261.zyx;
	float3 w9_14265 = w6_14257.zyx;
	float3 w10_14267 = w5_14253.zyx;
	float3 w11_14269 = w4_14249.zyx;
	float3 w12_14271 = w3_14245.zyx;
	float3 w13_14273 = w2_14241.zyx;
	float3 w14_14275 = w1_14237.zyx;
	float3 w15_14277 = w0_14233.zyx;
	float3 _14278 = w0_14233 + w1_14237;
	float3 _14279 = _14278 + w2_14241;
	float3 _14280 = _14279 + w3_14245;
	float3 _14281 = _14280 + w4_14249;
	float3 _14282 = _14281 + w5_14253;
	float3 _14283 = _14282 + w6_14257;
	float3 _14284 = _14283 + w7_14261;
	float3 half_sum_14285 = _14284;
	float3 _14287 = half_sum_14285 + half_sum_14285.zyx;
	float3 w_sum_14288 = _14287;
	float3 _14290 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / w_sum_14288;
	float3 w_sum_inv_14291 = _14290;
	float2x2 _14293 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_14294 = _14293;
	float2 _14297 = float2(xy_step_14194.x, 0.00000000e+00);
	float2 _14298 = mul(true_pixel_to_tex_uv_14294, _14297);
	float2 uv_step_x_14299 = _14298;
	float2 _14302 = float2(0.00000000e+00, xy_step_14194.y);
	float2 _14303 = mul(true_pixel_to_tex_uv_14294, _14302);
	float2 uv_step_y = _14303;
	float2 _14305 = uv_step_x_14299 + uv_step_y;
	float2 _14307 = float2(-1.50000000e+00, -1.50000000e+00) * _14305;
	float2 uv_offset0_14308 = _14307;
	float2 _14309 = tex_uv + uv_offset0_14308;
	float2 sample0_uv = _14309;
	float2 _14311 = sample0_uv + uv_step_y;
	float2 sample4_uv_14312 = _14311;
	float2 _14314 = uv_step_y * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14315 = sample0_uv + _14314;
	float2 sample8_uv = _14315;
	float2 _14318 = uv_step_y * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14319 = sample0_uv + _14318;
	float2 sample12_uv = _14319;
	float2 _14321;
	float _14322;
	_14321 = sample0_uv;
	_14322 = input_gamma;
	float4 _14323 = F__tex2Daa_tiled_linearize(tex, _14321, _14322);
	float3 sample0_14325 = _14323.xyz;
	float2 _14326 = sample0_uv + uv_step_x_14299;
	float2 _14327;
	float _14328;
	_14327 = _14326;
	_14328 = input_gamma;
	float4 _14329 = F__tex2Daa_tiled_linearize(tex, _14327, _14328);
	float3 sample1_14331 = _14329.xyz;
	float2 _14333 = uv_step_x_14299 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14334 = sample0_uv + _14333;
	float2 _14335;
	float _14336;
	_14335 = _14334;
	_14336 = input_gamma;
	float4 _14337 = F__tex2Daa_tiled_linearize(tex, _14335, _14336);
	float3 sample2_14339 = _14337.xyz;
	float2 _14341 = uv_step_x_14299 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14342 = sample0_uv + _14341;
	float2 _14343;
	float _14344;
	_14343 = _14342;
	_14344 = input_gamma;
	float4 _14345 = F__tex2Daa_tiled_linearize(tex, _14343, _14344);
	float3 sample3_14347 = _14345.xyz;
	float2 _14348;
	float _14349;
	_14348 = sample4_uv_14312;
	_14349 = input_gamma;
	float4 _14350 = F__tex2Daa_tiled_linearize(tex, _14348, _14349);
	float3 sample4_14352 = _14350.xyz;
	float2 _14353 = sample4_uv_14312 + uv_step_x_14299;
	float2 _14354;
	float _14355;
	_14354 = _14353;
	_14355 = input_gamma;
	float4 _14356 = F__tex2Daa_tiled_linearize(tex, _14354, _14355);
	float3 sample5_14358 = _14356.xyz;
	float2 _14360 = uv_step_x_14299 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14361 = sample4_uv_14312 + _14360;
	float2 _14362;
	float _14363;
	_14362 = _14361;
	_14363 = input_gamma;
	float4 _14364 = F__tex2Daa_tiled_linearize(tex, _14362, _14363);
	float3 sample6_14366 = _14364.xyz;
	float2 _14368 = uv_step_x_14299 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14369 = sample4_uv_14312 + _14368;
	float2 _14370;
	float _14371;
	_14370 = _14369;
	_14371 = input_gamma;
	float4 _14372 = F__tex2Daa_tiled_linearize(tex, _14370, _14371);
	float3 sample7_14374 = _14372.xyz;
	float2 _14375;
	float _14376;
	_14375 = sample8_uv;
	_14376 = input_gamma;
	float4 _14377 = F__tex2Daa_tiled_linearize(tex, _14375, _14376);
	float3 sample8_14379 = _14377.xyz;
	float2 _14380 = sample8_uv + uv_step_x_14299;
	float2 _14381;
	float _14382;
	_14381 = _14380;
	_14382 = input_gamma;
	float4 _14383 = F__tex2Daa_tiled_linearize(tex, _14381, _14382);
	float3 sample9_14385 = _14383.xyz;
	float2 _14387 = uv_step_x_14299 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14388 = sample8_uv + _14387;
	float2 _14389;
	float _14390;
	_14389 = _14388;
	_14390 = input_gamma;
	float4 _14391 = F__tex2Daa_tiled_linearize(tex, _14389, _14390);
	float3 sample10_14393 = _14391.xyz;
	float2 _14395 = uv_step_x_14299 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14396 = sample8_uv + _14395;
	float2 _14397;
	float _14398;
	_14397 = _14396;
	_14398 = input_gamma;
	float4 _14399 = F__tex2Daa_tiled_linearize(tex, _14397, _14398);
	float3 sample11_14401 = _14399.xyz;
	float2 _14402;
	float _14403;
	_14402 = sample12_uv;
	_14403 = input_gamma;
	float4 _14404 = F__tex2Daa_tiled_linearize(tex, _14402, _14403);
	float3 sample12_14406 = _14404.xyz;
	float2 _14407 = sample12_uv + uv_step_x_14299;
	float2 _14408;
	float _14409;
	_14408 = _14407;
	_14409 = input_gamma;
	float4 _14410 = F__tex2Daa_tiled_linearize(tex, _14408, _14409);
	float3 sample13_14412 = _14410.xyz;
	float2 _14414 = uv_step_x_14299 * float2(2.00000000e+00, 2.00000000e+00);
	float2 _14415 = sample12_uv + _14414;
	float2 _14416;
	float _14417;
	_14416 = _14415;
	_14417 = input_gamma;
	float4 _14418 = F__tex2Daa_tiled_linearize(tex, _14416, _14417);
	float3 sample14_14420 = _14418.xyz;
	float2 _14422 = uv_step_x_14299 * float2(3.00000000e+00, 3.00000000e+00);
	float2 _14423 = sample12_uv + _14422;
	float2 _14424;
	float _14425;
	_14424 = _14423;
	_14425 = input_gamma;
	float4 _14426 = F__tex2Daa_tiled_linearize(tex, _14424, _14425);
	float3 sample15_14428 = _14426.xyz;
	float3 _14429 = w0_14233 * sample0_14325;
	float3 _14430 = w1_14237 * sample1_14331;
	float3 _14431 = _14429 + _14430;
	float3 _14432 = w2_14241 * sample2_14339;
	float3 _14433 = _14431 + _14432;
	float3 _14434 = w3_14245 * sample3_14347;
	float3 _14435 = _14433 + _14434;
	float3 _14436 = w4_14249 * sample4_14352;
	float3 _14437 = _14435 + _14436;
	float3 _14438 = w5_14253 * sample5_14358;
	float3 _14439 = _14437 + _14438;
	float3 _14440 = w6_14257 * sample6_14366;
	float3 _14441 = _14439 + _14440;
	float3 _14442 = w7_14261 * sample7_14374;
	float3 _14443 = _14441 + _14442;
	float3 _14444 = w8_14263 * sample8_14379;
	float3 _14445 = _14443 + _14444;
	float3 _14446 = w9_14265 * sample9_14385;
	float3 _14447 = _14445 + _14446;
	float3 _14448 = w10_14267 * sample10_14393;
	float3 _14449 = _14447 + _14448;
	float3 _14450 = w11_14269 * sample11_14401;
	float3 _14451 = _14449 + _14450;
	float3 _14452 = w12_14271 * sample12_14406;
	float3 _14453 = _14451 + _14452;
	float3 _14454 = w13_14273 * sample13_14412;
	float3 _14455 = _14453 + _14454;
	float3 _14456 = w14_14275 * sample14_14420;
	float3 _14457 = _14455 + _14456;
	float3 _14458 = w15_14277 * sample15_14428;
	float3 _14459 = _14457 + _14458;
	float3 _14460 = w_sum_inv_14291 * _14459;
	return _14460;
}
float3 F__tex2Daa_debug_dynamic(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	F__assign_aa_cubic_constants();
	float4 _14469 = F__get_subpixel_support_diam_and_final_axis_importance();
	float4 ssd_fai_14470 = _14469;
	float2 subpixel_support_diameter_14472 = ssd_fai_14470.xy;
	float2 final_axis_importance_14474 = ssd_fai_14470.zw;
	float2 _14476 = subpixel_support_diameter_14472 / float2(8.00000000e+00, 8.00000000e+00);
	float2 filter_space_offset_step = _14476;
	float2 _14479 = float2(-3.50000000e+00, -3.50000000e+00) * filter_space_offset_step;
	float2 sample0_filter_space_offset = _14479;
	float3 weights_14482[64] = _14481;
	float3 weight_sum_14484 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	int i_14486 = 0;
	while (i_14486 < 8)
	{
		{
			int j = 0;
			while (j < 8)
			{
				{
					float2 _14509 = float2(((float)j), ((float)i_14486));
					float2 _14510 = _14509 * filter_space_offset_step;
					float2 _14511 = sample0_filter_space_offset + _14510;
					float2 offset_14512 = _14511;
					float2 _14513;
					float2 _14514;
					_14513 = offset_14512;
					_14514 = final_axis_importance_14474;
					float3 _14515 = F__eval_unorm_rgb_weights(_14513, _14514);
					float3 weight_14516 = _14515;
					int _14518 = i_14486 * 8;
					int _14519 = _14518 + j;
					weights_14482[_14519] = weight_14516;
					float3 _14520 = weight_sum_14484 + weight_14516;
					weight_sum_14484 = _14520;
				}
				int _14506 = j + 1;
				j = _14506;
			}
		}
		int _14495 = i_14486 + 1;
		i_14486 = _14495;
	}
	float2x2 _14522 = pixel_to_tex_uv * float2x2(1.00000000e+00, 1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float2x2 true_pixel_to_tex_uv_14523 = _14522;
	float2 _14526 = float2(filter_space_offset_step.x, 0.00000000e+00);
	float2 _14527 = mul(true_pixel_to_tex_uv_14523, _14526);
	float2 uv_offset_step_x = _14527;
	float2 _14531 = float2(0.00000000e+00, filter_space_offset_step.y);
	float2 _14532 = mul(true_pixel_to_tex_uv_14523, _14531);
	float2 uv_offset_step_y = _14532;
	float2 _14534 = uv_offset_step_x + uv_offset_step_y;
	float2 _14536 = float2(-3.50000000e+00, -3.50000000e+00) * _14534;
	float2 sample0_uv_offset = _14536;
	float2 _14538 = tex_uv + sample0_uv_offset;
	float2 sample0_uv_14539 = _14538;
	float3 sum_14541 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 _14543 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) / weight_sum_14484;
	float3 weight_sum_inv_14544 = _14543;
	int i_14546 = 0;
	while (i_14546 < 8)
	{
		{
			float2 _14557 = ((float2)i_14546.xx) * uv_offset_step_y;
			float2 _14558 = sample0_uv_14539 + _14557;
			float2 row_i_first_sample_uv = _14558;
			int j_14561 = 0;
			while (j_14561 < 8)
			{
				{
					float2 _14572 = ((float2)j_14561.xx) * uv_offset_step_x;
					float2 _14573 = row_i_first_sample_uv + _14572;
					float2 sample_uv = _14573;
					int _14576 = i_14546 * 8;
					int _14577 = _14576 + j_14561;
					float2 _14578;
					float _14579;
					_14578 = sample_uv;
					_14579 = input_gamma;
					float4 _14580 = F__tex2Daa_tiled_linearize(tex, _14578, _14579);
					float3 _14583 = weights_14482[_14577] * _14580.xyz;
					float3 _14584 = sum_14541 + _14583;
					sum_14541 = _14584;
				}
				int _14570 = j_14561 + 1;
				j_14561 = _14570;
			}
		}
		int _14555 = i_14546 + 1;
		i_14546 = _14555;
	}
	float3 _14585 = sum_14541 * weight_sum_inv_14544;
	return _14585;
}
float3 F__tex2Daa(
	in __sampler2D_float4 tex,
	in float2 tex_uv,
	in float2x2 pixel_to_tex_uv,
	in float frame,
	in float input_gamma)
{
	float2 _14593;
	float _14594;
	_14593 = tex_uv;
	_14594 = input_gamma;
	float4 _14595 = F__tex2D_linearize(tex, _14593, _14594);
	float2 _14596;
	float2x2 _14597;
	float _14598;
	_14596 = tex_uv;
	_14597 = pixel_to_tex_uv;
	_14598 = input_gamma;
	float3 _14599 = F__tex2Daa_subpixel_weights_only(tex, _14596, _14597, _14598);
	float2 _14600;
	float2x2 _14601;
	float _14602;
	float _14603;
	_14600 = tex_uv;
	_14601 = pixel_to_tex_uv;
	_14602 = frame;
	_14603 = input_gamma;
	float3 _14604 = F__tex2Daa4x(tex, _14600, _14601, _14602, _14603);
	float2 _14605;
	float2x2 _14606;
	float _14607;
	float _14608;
	_14605 = tex_uv;
	_14606 = pixel_to_tex_uv;
	_14607 = frame;
	_14608 = input_gamma;
	float3 _14609 = F__tex2Daa5x(tex, _14605, _14606, _14607, _14608);
	float2 _14610;
	float2x2 _14611;
	float _14612;
	float _14613;
	_14610 = tex_uv;
	_14611 = pixel_to_tex_uv;
	_14612 = frame;
	_14613 = input_gamma;
	float3 _14614 = F__tex2Daa6x(tex, _14610, _14611, _14612, _14613);
	float2 _14615;
	float2x2 _14616;
	float _14617;
	float _14618;
	_14615 = tex_uv;
	_14616 = pixel_to_tex_uv;
	_14617 = frame;
	_14618 = input_gamma;
	float3 _14619 = F__tex2Daa7x(tex, _14615, _14616, _14617, _14618);
	float2 _14620;
	float2x2 _14621;
	float _14622;
	float _14623;
	_14620 = tex_uv;
	_14621 = pixel_to_tex_uv;
	_14622 = frame;
	_14623 = input_gamma;
	float3 _14624 = F__tex2Daa8x(tex, _14620, _14621, _14622, _14623);
	float2 _14625;
	float2x2 _14626;
	float _14627;
	float _14628;
	_14625 = tex_uv;
	_14626 = pixel_to_tex_uv;
	_14627 = frame;
	_14628 = input_gamma;
	float3 _14629 = F__tex2Daa12x(tex, _14625, _14626, _14627, _14628);
	float2 _14630;
	float2x2 _14631;
	float _14632;
	float _14633;
	_14630 = tex_uv;
	_14631 = pixel_to_tex_uv;
	_14632 = frame;
	_14633 = input_gamma;
	float3 _14634 = F__tex2Daa16x(tex, _14630, _14631, _14632, _14633);
	float2 _14635;
	float2x2 _14636;
	float _14637;
	float _14638;
	_14635 = tex_uv;
	_14636 = pixel_to_tex_uv;
	_14637 = frame;
	_14638 = input_gamma;
	float3 _14639 = F__tex2Daa20x(tex, _14635, _14636, _14637, _14638);
	float2 _14640;
	float2x2 _14641;
	float _14642;
	float _14643;
	_14640 = tex_uv;
	_14641 = pixel_to_tex_uv;
	_14642 = frame;
	_14643 = input_gamma;
	float3 _14644 = F__tex2Daa24x(tex, _14640, _14641, _14642, _14643);
	float2 _14645;
	float2x2 _14646;
	float _14647;
	float _14648;
	_14645 = tex_uv;
	_14646 = pixel_to_tex_uv;
	_14647 = frame;
	_14648 = input_gamma;
	float3 _14649 = F__tex2Daa_debug_16x_regular(tex, _14645, _14646, _14647, _14648);
	float2 _14650;
	float2x2 _14651;
	float _14652;
	float _14653;
	_14650 = tex_uv;
	_14651 = pixel_to_tex_uv;
	_14652 = frame;
	_14653 = input_gamma;
	float3 _14654 = F__tex2Daa_debug_dynamic(tex, _14650, _14651, _14652, _14653);
	float3 _14656 = bool3(true, true, true) ? _14649 : _14654;
	float3 _14658 = bool3(true, true, true) ? _14644 : _14656;
	float3 _14660 = bool3(true, true, true) ? _14639 : _14658;
	float3 _14662 = bool3(true, true, true) ? _14634 : _14660;
	float3 _14664 = bool3(true, true, true) ? _14629 : _14662;
	float3 _14666 = bool3(true, true, true) ? _14624 : _14664;
	float3 _14668 = bool3(true, true, true) ? _14619 : _14666;
	float3 _14670 = bool3(true, true, true) ? _14614 : _14668;
	float3 _14672 = bool3(true, true, true) ? _14609 : _14670;
	float3 _14674 = bool3(true, true, true) ? _14604 : _14672;
	float3 _14676 = bool3(true, true, true) ? _14599 : _14674;
	float3 _14679 = bool3(true, true, true) ? _14595.xyz : _14676;
	return _14679;
}
float2 F__quadratic_solve(
	in float a,
	in float b_over_2,
	in float c)
{
	float _14685 = b_over_2 * b_over_2;
	float _14686 = a * c;
	float _14687 = _14685 - _14686;
	float discriminant = _14687;
	float _14689 = -b_over_2;
	float _14690 = sqrt(discriminant);
	float _14691 = _14689 + _14690;
	float _14692 = c / _14691;
	float solution0 = _14692;
	float2 _14694 = float2(solution0, discriminant);
	return _14694;
}
float2 F__intersect_sphere(
	in float3 view_vec,
	in float3 eye_pos_vec)
{
	float _14699 = dot(view_vec, view_vec);
	float a_14700 = _14699;
	float _14701 = dot(view_vec, eye_pos_vec);
	float b_over_2_14702 = _14701;
	float _14703 = dot(eye_pos_vec, eye_pos_vec);
	float _14704 = V__geom_radius * V__geom_radius;
	float _14705 = _14703 - _14704;
	float c_14706 = _14705;
	float _14707;
	float _14708;
	float _14709;
	_14707 = a_14700;
	_14708 = b_over_2_14702;
	_14709 = c_14706;
	float2 _14710 = F__quadratic_solve(_14707, _14708, _14709);
	return _14710;
}
float2 F__intersect_cylinder(
	in float3 view_vec,
	in float3 eye_pos_vec)
{
	float3 _14717 = float3(0.00000000e+00, V__geom_radius, 0.00000000e+00);
	float3 cylinder_top_vec = _14717;
	float3 _14719 = eye_pos_vec - cylinder_top_vec;
	float3 top_to_eye_vec = _14719;
	float3 _14722 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), view_vec);
	float3 axis_x_view = _14722;
	float3 _14725 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), top_to_eye_vec);
	float3 axis_x_top_to_eye = _14725;
	float _14727 = dot(axis_x_view, axis_x_view);
	float a_14728 = _14727;
	float _14729 = dot(axis_x_top_to_eye, axis_x_view);
	float b_over_2_14730 = _14729;
	float _14731 = dot(axis_x_top_to_eye, axis_x_top_to_eye);
	float _14732 = V__geom_radius * V__geom_radius;
	float _14733 = _14731 - _14732;
	float c_14734 = _14733;
	float _14735;
	float _14736;
	float _14737;
	_14735 = a_14728;
	_14736 = b_over_2_14730;
	_14737 = c_14734;
	float2 _14738 = F__quadratic_solve(_14735, _14736, _14737);
	return _14738;
}
float2 F__cylinder_xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect)
{
	float _14745 = atan2(intersection_pos_local.x, intersection_pos_local.z);
	float angle_from_image_center = _14745;
	float _14747 = angle_from_image_center * V__geom_radius;
	float signed_arc_len = _14747;
	float _14750 = -intersection_pos_local.y;
	float2 _14751 = float2(signed_arc_len, _14750);
	float2 square_uv = _14751;
	float2 _14753 = square_uv / geom_aspect;
	float2 video_uv = _14753;
	return video_uv;
}
float3 F__cylinder_uv_to_xyz(
	in float2 video_uv,
	in float2 geom_aspect)
{
	float2 _14759 = video_uv * geom_aspect;
	float2 square_uv_14760 = _14759;
	float arc_len = square_uv_14760.x;
	float _14763 = arc_len / V__geom_radius;
	float angle_from_image_center_14764 = _14763;
	float _14765 = sin(angle_from_image_center_14764);
	float _14766 = _14765 * V__geom_radius;
	float x_pos = _14766;
	float _14768 = cos(angle_from_image_center_14764);
	float _14769 = _14768 * V__geom_radius;
	float z_pos = _14769;
	float _14772 = -square_uv_14760.y;
	float3 _14773 = float3(x_pos, _14772, z_pos);
	float3 intersection_pos_local_14774 = _14773;
	return intersection_pos_local_14774;
}
float2 F__sphere_xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect)
{
	float3 _14781 = float3(0.00000000e+00, 0.00000000e+00, V__geom_radius);
	float3 image_center_pos_local = _14781;
	float3 _14783 = cross(intersection_pos_local, image_center_pos_local);
	float _14784 = length(_14783);
	float cp_len = _14784;
	float _14786 = dot(intersection_pos_local, image_center_pos_local);
	float dp = _14786;
	float _14788 = atan2(cp_len, dp);
	float angle_from_image_center_14789 = _14788;
	float _14790 = angle_from_image_center_14789 * V__geom_radius;
	float arc_len_14791 = _14790;
	float _14793 = -intersection_pos_local.y;
	float2 _14795 = float2(intersection_pos_local.x, _14793);
	float2 _14796 = normalize(_14795);
	float2 square_uv_unit = _14796;
	float2 _14799 = arc_len_14791.xx * square_uv_unit;
	float2 square_uv_14800 = _14799;
	float2 _14801 = square_uv_14800 / geom_aspect;
	float2 video_uv_14802 = _14801;
	return video_uv_14802;
}
float3 F__sphere_uv_to_xyz(
	in float2 video_uv,
	in float2 geom_aspect)
{
	bool _14812 = video_uv.x != 0.00000000e+00;
	bool _14815 = video_uv.y != 0.00000000e+00;
	bool _14816 = _14812 && _14815;
	if (_14816)
	{
		float2 _14817 = video_uv * geom_aspect;
		float2 square_uv_14818 = _14817;
		float2 _14819 = normalize(square_uv_14818);
		float2 square_uv_unit_14820 = _14819;
		float _14823 = square_uv_14818.y / square_uv_unit_14820.y;
		float arc_len_14824 = _14823;
		float _14825 = arc_len_14824 / V__geom_radius;
		float angle_from_image_center_14826 = _14825;
		float _14827 = sin(angle_from_image_center_14826);
		float _14828 = _14827 * V__geom_radius;
		float xy_dist_from_sphere_center = _14828;
		float2 _14831 = xy_dist_from_sphere_center.xx * square_uv_unit_14820;
		float2 xy_pos = _14831;
		float _14833 = cos(angle_from_image_center_14826);
		float _14834 = _14833 * V__geom_radius;
		float z_pos_14835 = _14834;
		float _14837 = -xy_pos.y;
		float3 _14839 = float3(xy_pos.x, _14837, z_pos_14835);
		float3 intersection_pos_local_14840 = _14839;
		return intersection_pos_local_14840;
	}
	else
	{
		bool _14846 = video_uv.x != 0.00000000e+00;
		if (_14846)
		{
			float2 _14847 = video_uv * geom_aspect;
			float2 square_uv_14848 = _14847;
			float2 _14849 = normalize(square_uv_14848);
			float2 square_uv_unit_14850 = _14849;
			float _14852 = sin(0.00000000e+00);
			float _14853 = _14852 * V__geom_radius;
			float xy_dist_from_sphere_center_14854 = _14853;
			float2 _14856 = xy_dist_from_sphere_center_14854.xx * square_uv_unit_14850;
			float2 xy_pos_14857 = _14856;
			float _14859 = cos(0.00000000e+00);
			float _14860 = _14859 * V__geom_radius;
			float z_pos_14861 = _14860;
			float _14863 = -xy_pos_14857.y;
			float3 _14865 = float3(xy_pos_14857.x, _14863, z_pos_14861);
			float3 intersection_pos_local_14866 = _14865;
			return intersection_pos_local_14866;
		}
		else
		{
			float z_pos_14867 = V__geom_radius;
			float3 _14870 = float3(0.00000000e+00, -0.00000000e+00, z_pos_14867);
			float3 intersection_pos_local_14871 = _14870;
			return intersection_pos_local_14871;
		}
	}
}
float2 F__sphere_alt_xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect)
{
	float _14877 = -intersection_pos_local.y;
	float2 _14879 = float2(intersection_pos_local.x, _14877);
	float2 _14881 = atan2(_14879, intersection_pos_local.zz);
	float2 angle_from_image_center_14882 = _14881;
	float2 _14884 = angle_from_image_center_14882 * V__geom_radius.xx;
	float2 signed_arc_len_14885 = _14884;
	float2 _14886 = signed_arc_len_14885 / geom_aspect;
	float2 video_uv_14887 = _14886;
	return video_uv_14887;
}
float3 F__sphere_alt_uv_to_xyz(
	in float2 video_uv,
	in float2 geom_aspect)
{
	float2 _14892 = video_uv * geom_aspect;
	float2 square_uv_14893 = _14892;
	float2 arc_len_14894 = square_uv_14893;
	float2 _14896 = arc_len_14894 / V__geom_radius.xx;
	float2 angle_from_image_center_14897 = _14896;
	float2 _14898 = sin(angle_from_image_center_14897);
	float2 _14900 = _14898 * V__geom_radius.xx;
	float2 xy_pos_14901 = _14900;
	float _14902 = V__geom_radius * V__geom_radius;
	float _14903 = dot(xy_pos_14901, xy_pos_14901);
	float _14904 = _14902 - _14903;
	float _14905 = sqrt(_14904);
	float z_pos_14906 = _14905;
	float _14908 = -xy_pos_14901.y;
	float3 _14910 = float3(xy_pos_14901.x, _14908, z_pos_14906);
	return _14910;
}
float2 F__intersect(
	in float3 view_vec_local,
	in float3 eye_pos_local,
	in float geom_mode)
{
	bool _14917 = geom_mode < 2.50000000e+00;
	float3 _14918;
	float3 _14919;
	_14918 = view_vec_local;
	_14919 = eye_pos_local;
	float2 _14920 = F__intersect_sphere(_14918, _14919);
	float3 _14921;
	float3 _14922;
	_14921 = view_vec_local;
	_14922 = eye_pos_local;
	float2 _14923 = F__intersect_cylinder(_14921, _14922);
	float2 _14925 = _14917.xx ? _14920 : _14923;
	return _14925;
}
float2 F__xyz_to_uv(
	in float3 intersection_pos_local,
	in float2 geom_aspect,
	in float geom_mode)
{
	bool _14932 = geom_mode < 1.50000000e+00;
	float3 _14933;
	float2 _14934;
	_14933 = intersection_pos_local;
	_14934 = geom_aspect;
	float2 _14935 = F__sphere_xyz_to_uv(_14933, _14934);
	bool _14937 = geom_mode < 2.50000000e+00;
	float3 _14938;
	float2 _14939;
	_14938 = intersection_pos_local;
	_14939 = geom_aspect;
	float2 _14940 = F__sphere_alt_xyz_to_uv(_14938, _14939);
	float3 _14941;
	float2 _14942;
	_14941 = intersection_pos_local;
	_14942 = geom_aspect;
	float2 _14943 = F__cylinder_xyz_to_uv(_14941, _14942);
	float2 _14945 = _14937.xx ? _14940 : _14943;
	float2 _14947 = _14932.xx ? _14935 : _14945;
	return _14947;
}
float3 F__uv_to_xyz(
	in float2 uv,
	in float2 geom_aspect,
	in float geom_mode)
{
	bool _14954 = geom_mode < 1.50000000e+00;
	float2 _14955;
	float2 _14956;
	_14955 = uv;
	_14956 = geom_aspect;
	float3 _14957 = F__sphere_uv_to_xyz(_14955, _14956);
	bool _14959 = geom_mode < 2.50000000e+00;
	float2 _14960;
	float2 _14961;
	_14960 = uv;
	_14961 = geom_aspect;
	float3 _14962 = F__sphere_alt_uv_to_xyz(_14960, _14961);
	float2 _14963;
	float2 _14964;
	_14963 = uv;
	_14964 = geom_aspect;
	float3 _14965 = F__cylinder_uv_to_xyz(_14963, _14964);
	float3 _14967 = _14959.xxx ? _14962 : _14965;
	float3 _14969 = _14954.xxx ? _14957 : _14967;
	return _14969;
}
float2 F__view_vec_to_uv(
	in float3 view_vec_local,
	in float3 eye_pos_local,
	in float2 geom_aspect,
	in float geom_mode,
	out float3 intersection_pos)
{
	float3 _14977;
	float3 _14978;
	float _14979;
	_14977 = view_vec_local;
	_14978 = eye_pos_local;
	_14979 = geom_mode;
	float2 _14980 = F__intersect(_14977, _14978, _14979);
	float2 intersect_dist_and_discriminant = _14980;
	float3 _14983 = view_vec_local * intersect_dist_and_discriminant.x.xxx;
	float3 _14984 = eye_pos_local + _14983;
	float3 intersection_pos_local_14985 = _14984;
	intersection_pos = intersection_pos_local_14985;
	bool _14988 = intersect_dist_and_discriminant.y > 4.99999989e-03;
	float3 _14989;
	float2 _14990;
	float _14991;
	_14989 = intersection_pos_local_14985;
	_14990 = geom_aspect;
	_14991 = geom_mode;
	float2 _14992 = F__xyz_to_uv(_14989, _14990, _14991);
	float2 _14995 = _14988.xx ? _14992 : float2(1.00000000e+00, 1.00000000e+00);
	return _14995;
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
			float3 eyespace_coords[9] = _15014;
			int i_15017 = 0;
			while (i_15017 < num_points)
			{
				{
					float3 _15028 = global_coords[i_15017] - eye_pos;
					eyespace_coords[i_15017] = _15028;
				}
				int _15025 = i_15017;
				int _15026 = _15025 + 1;
				i_15017 = _15026;
			}
			float _15029 = abs(V__geom_radius);
			float abs_radius = _15029;
			float _15032 = 1.00000000e+01 * abs_radius;
			float _15034 = 1.00000000e+01 * abs_radius;
			float2 _15035 = float2(_15032, _15034);
			float2 offset_dr_min = _15035;
			float _15038 = -1.00000000e+01 * abs_radius;
			float _15040 = -1.00000000e+01 * abs_radius;
			float2 _15041 = float2(_15038, _15040);
			float2 offset_ul_max = _15041;
			int i_15044 = 0;
			while (i_15044 < num_points)
			{
				{
					float3 eyespace_xyz = eyespace_coords[i_15044];
					float _15057 = -eyespace_xyz.z;
					float2 _15059 = geom_aspect * _15057.xx;
					float2 _15061 = float2(-5.00000000e-01, -5.00000000e-01) * _15059;
					float2 _15064 = V__geom_view_dist.xx * float2(1.00000000e+00, -1.00000000e+00);
					float2 _15065 = _15061 / _15064;
					float2 _15067 = eyespace_xyz.xy - _15065;
					float2 offset_dr = _15067;
					float _15070 = -eyespace_xyz.z;
					float2 _15072 = geom_aspect * _15070.xx;
					float2 _15074 = float2(5.00000000e-01, 5.00000000e-01) * _15072;
					float2 _15077 = V__geom_view_dist.xx * float2(1.00000000e+00, -1.00000000e+00);
					float2 _15078 = _15074 / _15077;
					float2 _15080 = eyespace_xyz.xy - _15078;
					float2 offset_ul = _15080;
					float2 _15082 = min(offset_dr_min, offset_dr);
					offset_dr_min = _15082;
					float2 _15083 = max(offset_ul_max, offset_ul);
					offset_ul_max = _15083;
				}
				int _15052 = i_15044;
				int _15053 = _15052 + 1;
				i_15044 = _15053;
			}
			float2 _15084 = offset_ul_max + offset_dr_min;
			float2 _15086 = float2(5.00000000e-01, 5.00000000e-01) * _15084;
			float2 center_offset = _15086;
			float2 _15089 = eye_pos.xy + center_offset;
			eye_pos.xy = _15089;
			int i_15091 = 0;
			while (i_15091 < num_points)
			{
				{
					float3 _15102 = global_coords[i_15091] - eye_pos;
					eyespace_coords[i_15091] = _15102;
				}
				int _15099 = i_15091;
				int _15100 = _15099 + 1;
				i_15091 = _15100;
			}
			float _15104 = -1.00000000e+01 * V__geom_radius;
			float _15105 = _15104 * V__geom_view_dist;
			float offset_z_max = _15105;
			int i_15108 = 0;
			while (i_15108 < num_points)
			{
				{
					float3 _15120 = eyespace_coords[i_15108] * float3(1.00000000e+00, -1.00000000e+00, 1.00000000e+00);
					float3 eyespace_xyz_flipy = _15120;
					float4 _15124 = eyespace_xyz_flipy.xyxy * V__geom_view_dist.xxxx;
					float4 _15129 = float4(geom_aspect.x, geom_aspect.y, geom_aspect.x, geom_aspect.y);
					float4 _15131 = float4(-5.00000000e-01, -5.00000000e-01, 5.00000000e-01, 5.00000000e-01) * _15129;
					float4 _15132 = _15124 / _15131;
					float4 _15134 = eyespace_xyz_flipy.zzzz + _15132;
					float4 offset_zzzz = _15134;
					bool _15138 = eyespace_xyz_flipy.x < 0.00000000e+00;
					float _15140 = max(offset_z_max, offset_zzzz.x);
					float _15141 = _15138 ? _15140 : offset_z_max;
					offset_z_max = _15141;
					bool _15144 = eyespace_xyz_flipy.y < 0.00000000e+00;
					float _15146 = max(offset_z_max, offset_zzzz.y);
					float _15147 = _15144 ? _15146 : offset_z_max;
					offset_z_max = _15147;
					bool _15150 = eyespace_xyz_flipy.x > 0.00000000e+00;
					float _15152 = max(offset_z_max, offset_zzzz.z);
					float _15153 = _15150 ? _15152 : offset_z_max;
					offset_z_max = _15153;
					bool _15156 = eyespace_xyz_flipy.y > 0.00000000e+00;
					float _15158 = max(offset_z_max, offset_zzzz.w);
					float _15159 = _15156 ? _15158 : offset_z_max;
					offset_z_max = _15159;
					float _15161 = max(offset_z_max, eyespace_xyz_flipy.z);
					offset_z_max = _15161;
				}
				int _15116 = i_15108;
				int _15117 = _15116 + 1;
				i_15108 = _15117;
			}
			float _15163 = eye_pos.z + offset_z_max;
			eye_pos[2] = _15163;
		}
		int _15012 = iter;
		int _15013 = _15012 + 1;
		iter = _15013;
	}
	return eye_pos;
}
float3 F__get_ideal_global_eye_pos(
	in float3x3 local_to_global,
	in float2 geom_aspect,
	in float geom_mode)
{
	float _15169 = -V__geom_view_dist;
	float3 _15172 = float3(0.00000000e+00, geom_aspect.y, _15169);
	float3 high_view = _15172;
	float3 _15175 = high_view * float3(1.00000000e+00, -1.00000000e+00, 1.00000000e+00);
	float3 low_view = _15175;
	float _15177 = dot(high_view, high_view);
	float len_sq = _15177;
	float _15179 = dot(high_view, low_view);
	float _15180 = _15179 / len_sq;
	float _15181 = acos(_15180);
	float _15182 = abs(_15181);
	float fov = _15182;
	float _15185 = fov * 5.00000000e-01;
	float _15186 = sin(_15185);
	float _15187 = V__geom_radius / _15186;
	float eye_z_spherical = _15187;
	bool _15190 = geom_mode < 2.50000000e+00;
	float3 _15193 = float3(0.00000000e+00, 0.00000000e+00, eye_z_spherical);
	float _15194 = max(V__geom_view_dist, eye_z_spherical);
	float3 _15197 = float3(0.00000000e+00, 0.00000000e+00, _15194);
	float3 _15199 = _15190.xxx ? _15193 : _15197;
	float3 eye_pos_15200 = _15199;
	float3 global_coords_15202[9] = _15014;
	float2 _15203;
	float2 _15204;
	float _15205;
	_15203 = float2(0.00000000e+00, 0.00000000e+00);
	_15204 = geom_aspect;
	_15205 = geom_mode;
	float3 _15207 = F__uv_to_xyz(_15203, _15204, _15205);
	float3 _15208 = mul(local_to_global, _15207);
	global_coords_15202[0] = _15208;
	float2 _15209;
	float2 _15210;
	float _15211;
	_15209 = float2(0.00000000e+00, -5.00000000e-01);
	_15210 = geom_aspect;
	_15211 = geom_mode;
	float3 _15213 = F__uv_to_xyz(_15209, _15210, _15211);
	float3 _15214 = mul(local_to_global, _15213);
	global_coords_15202[1] = _15214;
	float2 _15215;
	float2 _15216;
	float _15217;
	_15215 = float2(0.00000000e+00, 5.00000000e-01);
	_15216 = geom_aspect;
	_15217 = geom_mode;
	float3 _15219 = F__uv_to_xyz(_15215, _15216, _15217);
	float3 _15220 = mul(local_to_global, _15219);
	global_coords_15202[2] = _15220;
	float2 _15221;
	float2 _15222;
	float _15223;
	_15221 = float2(-5.00000000e-01, 0.00000000e+00);
	_15222 = geom_aspect;
	_15223 = geom_mode;
	float3 _15225 = F__uv_to_xyz(_15221, _15222, _15223);
	float3 _15226 = mul(local_to_global, _15225);
	global_coords_15202[3] = _15226;
	float2 _15227;
	float2 _15228;
	float _15229;
	_15227 = float2(5.00000000e-01, 0.00000000e+00);
	_15228 = geom_aspect;
	_15229 = geom_mode;
	float3 _15231 = F__uv_to_xyz(_15227, _15228, _15229);
	float3 _15232 = mul(local_to_global, _15231);
	global_coords_15202[4] = _15232;
	float2 _15233;
	float2 _15234;
	float _15235;
	_15233 = float2(-5.00000000e-01, -5.00000000e-01);
	_15234 = geom_aspect;
	_15235 = geom_mode;
	float3 _15237 = F__uv_to_xyz(_15233, _15234, _15235);
	float3 _15238 = mul(local_to_global, _15237);
	global_coords_15202[5] = _15238;
	float2 _15239;
	float2 _15240;
	float _15241;
	_15239 = float2(5.00000000e-01, -5.00000000e-01);
	_15240 = geom_aspect;
	_15241 = geom_mode;
	float3 _15243 = F__uv_to_xyz(_15239, _15240, _15241);
	float3 _15244 = mul(local_to_global, _15243);
	global_coords_15202[6] = _15244;
	float2 _15245;
	float2 _15246;
	float _15247;
	_15245 = float2(-5.00000000e-01, 5.00000000e-01);
	_15246 = geom_aspect;
	_15247 = geom_mode;
	float3 _15249 = F__uv_to_xyz(_15245, _15246, _15247);
	float3 _15250 = mul(local_to_global, _15249);
	global_coords_15202[7] = _15250;
	float2 _15251;
	float2 _15252;
	float _15253;
	_15251 = float2(5.00000000e-01, 5.00000000e-01);
	_15252 = geom_aspect;
	_15253 = geom_mode;
	float3 _15255 = F__uv_to_xyz(_15251, _15252, _15253);
	float3 _15256 = mul(local_to_global, _15255);
	global_coords_15202[8] = _15256;
	float num_negative_z_coords = 0.00000000e+00;
	int i_15260 = 0;
	while (i_15260 < 9)
	{
		{
			bool _15273 = global_coords_15202[0].z < 0.00000000e+00;
			float _15275 = num_negative_z_coords + ((float)_15273);
			num_negative_z_coords = _15275;
		}
		int _15269 = i_15260;
		int _15270 = _15269 + 1;
		i_15260 = _15270;
	}
	bool _15277 = num_negative_z_coords > 5.00000000e-01;
	float3 _15278;
	float2 _15279;
	float3 _15280[9];
	int _15281;
	_15278 = eye_pos_15200;
	_15279 = geom_aspect;
	_15280 = global_coords_15202;
	_15281 = 9;
	float3 _15283 = F__get_ideal_global_eye_pos_for_points(_15278, _15279, _15280, _15281);
	float3 _15285 = _15277.xxx ? eye_pos_15200 : _15283;
	return _15285;
}
float3x3 F__get_pixel_to_object_matrix(
	in float3x3 global_to_local,
	in float3 eye_pos_local,
	in float3 view_vec_global,
	in float3 intersection_pos_local,
	in float3 normal,
	in float2 output_size_inv)
{
	float3 pos_15294 = intersection_pos_local;
	float3 eye_pos_15295 = eye_pos_local;
	float3 _15299 = float3(output_size_inv.x, 0.00000000e+00, 0.00000000e+00);
	float3 _15300 = view_vec_global + _15299;
	float3 view_vec_right_global = _15300;
	float _15303 = -output_size_inv.y;
	float3 _15306 = float3(0.00000000e+00, _15303, 0.00000000e+00);
	float3 _15307 = view_vec_global + _15306;
	float3 view_vec_down_global = _15307;
	float3 _15309 = mul(global_to_local, view_vec_right_global);
	float3 view_vec_right_local = _15309;
	float3 _15311 = mul(global_to_local, view_vec_down_global);
	float3 view_vec_down_local = _15311;
	float3 _15313 = pos_15294 - eye_pos_15295;
	float _15314 = dot(_15313, normal);
	float3 _15315 = pos_15294 - eye_pos_15295;
	float _15316 = dot(_15315, normal);
	float3 _15317 = pos_15294 - eye_pos_15295;
	float _15318 = dot(_15317, normal);
	float3 _15319 = float3(_15314, _15316, _15318);
	float3 intersection_vec_dot_normal = _15319;
	float _15321 = dot(view_vec_right_local, normal);
	float3 _15323 = intersection_vec_dot_normal / _15321.xxx;
	float3 _15324 = _15323 * view_vec_right_local;
	float3 _15325 = eye_pos_15295 + _15324;
	float3 right_pos = _15325;
	float _15327 = dot(view_vec_down_local, normal);
	float3 _15329 = intersection_vec_dot_normal / _15327.xxx;
	float3 _15330 = _15329 * view_vec_down_local;
	float3 _15331 = eye_pos_15295 + _15330;
	float3 down_pos = _15331;
	float3 _15333 = right_pos - pos_15294;
	float3 object_right_vec = _15333;
	float3 _15335 = down_pos - pos_15294;
	float3 object_down_vec = _15335;
	float3x3 _15346 = float3x3(object_right_vec.x, object_down_vec.x, 0.00000000e+00, object_right_vec.y, object_down_vec.y, 0.00000000e+00, object_right_vec.z, object_down_vec.z, 0.00000000e+00);
	float3x3 pixel_to_object = _15346;
	return pixel_to_object;
}
float3x3 F__get_object_to_tangent_matrix(
	in float3 intersection_pos_local,
	in float3 normal,
	in float2 geom_aspect,
	in float geom_mode)
{
	float3 pos_15354 = intersection_pos_local;
	float3 cotangent_unscaled = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 cobitangent_unscaled = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _15363 = geom_mode < 1.50000000e+00;
	if (_15363)
	{
		float3 _15365 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), pos_15354);
		float3 _15366 = normalize(_15365);
		float3 _15368 = _15366 * geom_aspect.y.xxx;
		cotangent_unscaled = _15368;
		float3 _15370 = cross(float3(1.00000000e+00, 0.00000000e+00, 0.00000000e+00), pos_15354);
		float3 _15371 = normalize(_15370);
		float3 _15373 = _15371 * geom_aspect.x.xxx;
		cobitangent_unscaled = _15373;
	}
	else
	{
		bool _15378 = geom_mode < 2.50000000e+00;
		if (_15378)
		{
			float3 _15382 = float3(pos_15354.x, 0.00000000e+00, pos_15354.z);
			float3 _15384 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), _15382);
			float3 _15385 = normalize(_15384);
			float3 _15387 = _15385 * geom_aspect.x.xxx;
			float3 tangent = _15387;
			float3 _15392 = float3(0.00000000e+00, pos_15354.yz.x, pos_15354.yz.y);
			float3 _15394 = cross(float3(1.00000000e+00, 0.00000000e+00, 0.00000000e+00), _15392);
			float3 _15395 = normalize(_15394);
			float3 _15397 = _15395 * geom_aspect.y.xxx;
			float3 bitangent = _15397;
			float3 _15399 = cross(normal, bitangent);
			cotangent_unscaled = _15399;
			float3 _15400 = cross(tangent, normal);
			cobitangent_unscaled = _15400;
		}
		else
		{
			float3 _15402 = cross(float3(0.00000000e+00, 1.00000000e+00, 0.00000000e+00), normal);
			float3 _15404 = _15402 * geom_aspect.y.xxx;
			cotangent_unscaled = _15404;
			float _15406 = -geom_aspect.x;
			float3 _15409 = float3(0.00000000e+00, _15406, 0.00000000e+00);
			cobitangent_unscaled = _15409;
		}
	}
	float3 _15410 = cross(cobitangent_unscaled, cotangent_unscaled);
	float3 computed_normal = _15410;
	float _15412 = dot(computed_normal, computed_normal);
	float _15413 = rsqrt(_15412);
	float inv_determinant = _15413;
	float3 _15416 = cotangent_unscaled * inv_determinant.xxx;
	float3 cotangent = _15416;
	float3 _15419 = cobitangent_unscaled * inv_determinant.xxx;
	float3 cobitangent = _15419;
	float3x3 _15430 = float3x3(cotangent.x, cotangent.y, cotangent.z, cobitangent.x, cobitangent.y, cobitangent.z, normal.x, normal.y, normal.z);
	float3x3 object_to_tangent = _15430;
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
	float2 _15442 = flat_video_uv - float2(5.00000000e-01, 5.00000000e-01);
	float2 _15443 = _15442 * geom_aspect;
	float2 view_uv = _15443;
	float _15446 = -view_uv.y;
	float _15447 = -V__geom_view_dist;
	float3 _15449 = float3(view_uv.x, _15446, _15447);
	float3 view_vec_global_15450 = _15449;
	float3 _15451 = mul(global_to_local, view_vec_global_15450);
	float3 view_vec_local_15452 = _15451;
	float3 pos_15454 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float3 _15455;
	float3 _15456;
	float2 _15457;
	float _15458;
	float3 _15459;
	_15455 = view_vec_local_15452;
	_15456 = eye_pos_local;
	_15457 = geom_aspect;
	_15458 = geom_mode;
	float2 _15460 = F__view_vec_to_uv(_15455, _15456, _15457, _15458, _15459);
	pos_15454 = _15459;
	float2 centered_uv = _15460;
	float2 _15463 = centered_uv + float2(5.00000000e-01, 5.00000000e-01);
	float2 video_uv_15464 = _15463;
	if (true)
	{
		bool _15470 = geom_mode < 2.50000000e+00;
		float3 _15474 = float3(pos_15454.x, 0.00000000e+00, pos_15454.z);
		float3 _15476 = _15470.xxx ? pos_15454 : _15474;
		float3 normal_base = _15476;
		float3 _15478 = normalize(normal_base);
		float3 normal_15479 = _15478;
		float3x3 _15480;
		float3 _15481;
		float3 _15482;
		float3 _15483;
		float3 _15484;
		float2 _15485;
		_15480 = global_to_local;
		_15481 = eye_pos_local;
		_15482 = view_vec_global_15450;
		_15483 = pos_15454;
		_15484 = normal_15479;
		_15485 = output_size_inv;
		float3x3 _15486 = F__get_pixel_to_object_matrix(_15480, _15481, _15482, _15483, _15484, _15485);
		float3x3 pixel_to_object_15487 = _15486;
		float3 _15488;
		float3 _15489;
		float2 _15490;
		float _15491;
		_15488 = pos_15454;
		_15489 = normal_15479;
		_15490 = geom_aspect;
		_15491 = geom_mode;
		float3x3 _15492 = F__get_object_to_tangent_matrix(_15488, _15489, _15490, _15491);
		float3x3 object_to_tangent_15493 = _15492;
		float3x3 _15494 = mul(object_to_tangent_15493, pixel_to_object_15487);
		float3x3 pixel_to_tangent3x3 = _15494;
		float2x2 _15500 = float2x2(pixel_to_tangent3x3[0].x, pixel_to_tangent3x3[0].y, pixel_to_tangent3x3[1].x, pixel_to_tangent3x3[1].y);
		pixel_to_tangent_video_uv = _15500;
	}
	else
	{
		float2x2 _15505 = float2x2(output_size_inv.x, 0.00000000e+00, 0.00000000e+00, output_size_inv.y);
		pixel_to_tangent_video_uv = _15505;
	}
	return video_uv_15464;
}
float F__get_border_dim_factor(
	in float2 video_uv,
	in float2 geom_aspect)
{
	float2 _15511 = float2(1.00000000e+00, 1.00000000e+00) - video_uv;
	float2 _15512 = min(video_uv, _15511);
	float2 _15513 = _15512 * geom_aspect;
	float2 edge_dists = _15513;
	float2 _15515 = float2(V__border_size, V__border_size);
	float2 _15516 = _15515 - edge_dists;
	float2 _15518 = max(_15516, float2(0.00000000e+00, 0.00000000e+00));
	float2 border_penetration = _15518;
	bool _15521 = V__border_size > 0.00000000e+00;
	float _15522 = length(border_penetration);
	float _15523 = _15522 / V__border_size;
	float _15525 = _15521 ? _15523 : 0.00000000e+00;
	float penetration_ratio = _15525;
	float _15528 = 1.00000000e+00 - penetration_ratio;
	float _15530 = max(_15528, 0.00000000e+00);
	float border_escape_ratio = _15530;
	float _15532 = pow(border_escape_ratio, V__border_darkness);
	float _15534 = max(1.00000000e+00, V__border_compress);
	float _15535 = _15532 * _15534;
	float border_dim_factor = _15535;
	float _15538 = min(border_dim_factor, 1.00000000e+00);
	return _15538;
}
float2x2 F__mul_scale(
	in float2 scale,
	in float2x2 mtrx)
{
	float4 _15547 = float4(mtrx[0].x, mtrx[0].y, mtrx[1].x, mtrx[1].y);
	float4 _15549 = _15547 * scale.xxyy;
	float4 temp_matrix = _15549;
	float2x2 _15555 = float2x2(temp_matrix.x, temp_matrix.y, temp_matrix.z, temp_matrix.w);
	return _15555;
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
	uint _15567;
	float4 _15568;
	float2 _15569;
	_15567 = id;
	F__PostProcessVS(_15567, _15568, _15569);
	position = _15568;
	texcoord = _15569;
	output_size_inv = float2(6.94444461e-04, 9.25925910e-04);
	float _15574 = output_size_inv.y / output_size_inv.x;
	float viewport_aspect_ratio = _15574;
	float _15576;
	_15576 = viewport_aspect_ratio;
	float2 _15577 = F__get_aspect_vector(_15576);
	float2 geom_aspect_15578 = _15577;
	float2 _15579 = F__get_geom_overscan_vector();
	float2 geom_overscan = _15579;
	float4 _15585 = float4(geom_aspect_15578.x, geom_aspect_15578.y, geom_overscan.x, geom_overscan.y);
	geom_aspect_and_overscan = _15585;
	float2 _15586 = F__get_geom_tilt_angle_vector();
	float2 geom_tilt_angle = _15586;
	float2 _15588 = sin(geom_tilt_angle);
	float2 sin_tilt = _15588;
	float2 _15590 = cos(geom_tilt_angle);
	float2 cos_tilt = _15590;
	float _15593 = -sin_tilt.y;
	float3x3 _15602 = float3x3(1.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00, cos_tilt.y, _15593, 0.00000000e+00, sin_tilt.y, cos_tilt.y);
	float3x3 rot_x_matrix = _15602;
	float _15605 = -sin_tilt.x;
	float3x3 _15614 = float3x3(cos_tilt.x, 0.00000000e+00, sin_tilt.x, 0.00000000e+00, 1.00000000e+00, 0.00000000e+00, _15605, 0.00000000e+00, cos_tilt.x);
	float3x3 rot_y_matrix = _15614;
	float3x3 _15616 = mul(rot_y_matrix, rot_x_matrix);
	float3x3 local_to_global_15617 = _15616;
	float3x3 _15618 = transpose(local_to_global_15617);
	float3x3 global_to_local_15619 = _15618;
	float3 _15623 = float3(global_to_local_15619[0].x, global_to_local_15619[0].y, global_to_local_15619[0].z);
	global_to_local_row0 = _15623;
	float3 _15627 = float3(global_to_local_15619[1].x, global_to_local_15619[1].y, global_to_local_15619[1].z);
	global_to_local_row1 = _15627;
	float3 _15631 = float3(global_to_local_15619[2].x, global_to_local_15619[2].y, global_to_local_15619[2].z);
	global_to_local_row2 = _15631;
	float geom_mode_15633 = ((float)V__geom_mode_runtime);
	float3x3 _15634;
	float2 _15635;
	float _15636;
	_15634 = local_to_global_15617;
	_15635 = geom_aspect_15578;
	_15636 = geom_mode_15633;
	float3 _15637 = F__get_ideal_global_eye_pos(_15634, _15635, _15636);
	float3 eye_pos_global = _15637;
	float3 _15639 = mul(global_to_local_15619, eye_pos_global);
	eye_pos_local = _15639;
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
	float2 geom_aspect_15652 = geom_aspect_and_overscan.xy;
	float2 geom_overscan_15654 = geom_aspect_and_overscan.zw;
	float3x3 _15664 = float3x3(global_to_local_row0.x, global_to_local_row0.y, global_to_local_row0.z, global_to_local_row1.x, global_to_local_row1.y, global_to_local_row1.z, global_to_local_row2.x, global_to_local_row2.y, global_to_local_row2.z);
	float3x3 global_to_local_15665 = _15664;
	float geom_mode_15667 = ((float)V__geom_mode_runtime);
	float2 flat_video_uv_15668 = texcoord;
	float2x2 pixel_to_video_uv = float2x2(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float2 video_uv_no_geom_overscan = float2(0.00000000e+00, 0.00000000e+00);
	bool _15677 = geom_mode_15667 > 5.00000000e-01;
	if (_15677)
	{
		float2 _15678;
		float3 _15679;
		float2 _15680;
		float2 _15681;
		float _15682;
		float3x3 _15683;
		float2x2 _15684;
		_15678 = flat_video_uv_15668;
		_15679 = eye_pos_local;
		_15680 = output_size_inv;
		_15681 = geom_aspect_15652;
		_15682 = geom_mode_15667;
		_15683 = global_to_local_15665;
		float2 _15685 = F__get_curved_video_uv_coords_and_tangent_matrix(_15678, _15679, _15680, _15681, _15682, _15683, _15684);
		pixel_to_video_uv = _15684;
		video_uv_no_geom_overscan = _15685;
	}
	else
	{
		video_uv_no_geom_overscan = flat_video_uv_15668;
		float2x2 _15690 = float2x2(output_size_inv.x, 0.00000000e+00, 0.00000000e+00, output_size_inv.y);
		pixel_to_video_uv = _15690;
	}
	float2 _15692 = video_uv_no_geom_overscan - float2(5.00000000e-01, 5.00000000e-01);
	float2 _15693 = _15692 / geom_overscan_15654;
	float2 _15695 = _15693 + float2(5.00000000e-01, 5.00000000e-01);
	float2 video_uv_15696 = _15695;
	float2 tex_uv_15697 = video_uv_15696;
	float2 _15699 = float2(1.00000000e+00, 1.00000000e+00) / geom_overscan_15654;
	float2 _15700;
	float2x2 _15701;
	_15700 = _15699;
	_15701 = pixel_to_video_uv;
	float2x2 _15702 = F__mul_scale(_15700, _15701);
	float2x2 pixel_to_tex_uv_15703 = _15702;
	float2 _15704 = F__get_aa_subpixel_r_offset();
	float2 _15705 = abs(_15704);
	float2 abs_aa_r_offset = _15705;
	float3 raw_color_15708 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _15713 = geom_mode_15667 > 5.00000000e-01;
	bool _15716 = geom_overscan_15654.x != 1.00000000e+00;
	bool _15719 = geom_overscan_15654.y != 1.00000000e+00;
	bool2 _15720 = bool2(_15716, _15719);
	bool _15721 = any(_15720);
	bool _15722 = _15713 || _15721;
	bool _15724 = false && _15722;
	if (_15724)
	{
		float _15725 = F__get_intermediate_gamma();
		float2 _15726;
		float2x2 _15727;
		float _15728;
		float _15729;
		_15726 = tex_uv_15697;
		_15727 = pixel_to_tex_uv_15703;
		_15728 = ((float)V__frame_count);
		_15729 = _15725;
		float3 _15731 = F__tex2Daa(V__samplerBloomHorizontal, _15726, _15727, _15728, _15729);
		raw_color_15708 = _15731;
	}
	else
	{
		if (false)
		{
			float _15736 = F__get_intermediate_gamma();
			float2 _15737;
			float2x2 _15738;
			float _15739;
			_15737 = tex_uv_15697;
			_15738 = pixel_to_tex_uv_15703;
			_15739 = _15736;
			float3 _15740 = F__tex2Daa_subpixel_weights_only(V__samplerBloomHorizontal, _15737, _15738, _15739);
			raw_color_15708 = _15740;
		}
		else
		{
			float _15741 = F__get_intermediate_gamma();
			float2 _15742;
			float _15743;
			_15742 = tex_uv_15697;
			_15743 = _15741;
			float4 _15744 = F__tex2D_linearize(V__samplerBloomHorizontal, _15742, _15743);
			raw_color_15708 = _15744.xyz;
		}
	}
	float2 _15746;
	float2 _15747;
	_15746 = video_uv_15696;
	_15747 = geom_aspect_15652;
	float _15748 = F__get_border_dim_factor(_15746, _15747);
	float border_dim_factor_15749 = _15748;
	float3 _15751 = raw_color_15708 * border_dim_factor_15749.xxx;
	float3 final_color = _15751;
	float4 _15757 = float4(final_color.x, final_color.y, final_color.z, 1.00000000e+00);
	float _15758 = F__get_output_gamma();
	float4 _15759;
	float _15760;
	_15759 = _15757;
	_15760 = _15758;
	float4 _15761 = F__encode_output(_15759, _15760);
	color = _15761;
	return;
}
float4 F__leanUNorm16(
	in float4 value)
{
	float4 _15765 = saturate(value);
	float4 _15767 = _15765 * float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	float4 _15768 = round(_15767);
	float4 _15770 = _15768 / float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	return _15770;
}
float4 F__leanCode16Rop(
	in float4 value)
{
	float4 _15774 = saturate(value);
	float4 x_15775 = _15774;
	float4 _15777 = x_15775 * float4(6.55360000e+04, 6.55360000e+04, 6.55360000e+04, 6.55360000e+04);
	float4 _15779 = x_15775 * float4(1.60000000e+01, 1.60000000e+01, 1.60000000e+01, 1.60000000e+01);
	float4 _15780 = floor(_15779);
	float4 _15782 = _15780 * float4(6.25000000e-02, 6.25000000e-02, 6.25000000e-02, 6.25000000e-02);
	float4 _15783 = _15777 - _15782;
	float4 _15785 = _15783 + float4(4.37500000e-01, 4.37500000e-01, 4.37500000e-01, 4.37500000e-01);
	float4 _15786 = floor(_15785);
	float4 _15788 = min(_15786, float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04));
	return _15788;
}
float4 F__leanUNorm16Rop(
	in float4 value)
{
	float4 _15792;
	_15792 = value;
	float4 _15793 = F__leanCode16Rop(_15792);
	float4 _15795 = _15793 / float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	return _15795;
}
float4 F__leanCode16Fast(
	in float4 value)
{
	float4 _15799 = saturate(value);
	float4 _15801 = _15799 * float4(6.55350000e+04, 6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	float4 _15803 = _15801 + float4(4.37500000e-01, 4.37500000e-01, 4.37500000e-01, 4.37500000e-01);
	float4 _15804 = floor(_15803);
	return _15804;
}
float4 F__leanCode16(
	in float4 value,
	in bool exact)
{
	float4 _15809;
	_15809 = value;
	float4 _15810 = F__leanCode16Rop(_15809);
	float4 _15811;
	_15811 = value;
	float4 _15812 = F__leanCode16Fast(_15811);
	float4 _15814 = exact.xxxx ? _15810 : _15812;
	return _15814;
}
void F__leanBloomVerticalVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0,
	nointerpolation out float sigma : TEXCOORD1)
{
	uint _15821;
	float4 _15822;
	float2 _15823;
	float _15824;
	_15821 = id;
	F__bloomVerticalVS(_15821, _15822, _15823, _15824);
	pos = _15822;
	uv = _15823;
	sigma = _15824;
	return;
}
void F__leanBloomVerticalPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	nointerpolation in float sigma : TEXCOORD1,
	out float4 color : SV_TARGET)
{
	float4 _15832;
	float2 _15833;
	float _15834;
	float4 _15835;
	_15832 = pos;
	_15833 = uv;
	_15834 = sigma;
	F__bloomVerticalPS(_15832, _15833, _15834, _15835);
	color = _15835;
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
	float4 _15846;
	float2 _15847;
	float2 _15848;
	float2 _15849;
	float2 _15850;
	float4 _15851;
	_15846 = pos;
	_15847 = uv;
	_15848 = frequency;
	_15849 = pqx;
	_15850 = pqy;
	F__generatePhosphorMaskPS(_15846, _15847, _15848, _15849, _15850, _15851);
	rg = _15851;
	float4 _15857 = float4(rg.z, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
	blue = _15857;
	return;
}
void F__leanMaskPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float4 _15863 = V__samplerPhosphorMask.t.Sample(V__samplerPhosphorMask.s, uv);
	float2 rg_15865 = _15863.xy;
	bool _15867 = V__mask_type >= 3;
	bool _15870 = V__phosphor_offset_x.x == V__phosphor_offset_x.z;
	bool _15871 = _15867 && _15870;
	bool _15874 = V__phosphor_offset_y.x == V__phosphor_offset_y.z;
	bool _15875 = _15871 && _15874;
	bool shared_blue = _15875;
	float4 _15877 = V__samplerPhosphorBlue.t.Sample(V__samplerPhosphorBlue.s, uv);
	float _15880 = shared_blue ? rg_15865.x : _15877.x;
	float blue_15881 = _15880;
	bool _15883 = V__scanline_deinterlacing_mode == 2u;
	bool _15885 = V__scanline_deinterlacing_mode == 3u;
	bool _15886 = _15883 || _15885;
	bool _15887 = V__enable_interlacing && _15886;
	bool interlaced_15888 = _15887;
	float4 _15889 = V__samplerDeinterlace.t.Sample(V__samplerDeinterlace.s, uv);
	float4 _15890 = V__samplerBeamConvergence.t.Sample(V__samplerBeamConvergence.s, uv);
	float3 _15894 = interlaced_15888.xxx ? _15889.xyz : _15890.xyz;
	float3 scanlines = _15894;
	float _15896 = F__get_intermediate_gamma();
	float2 _15897;
	float _15898;
	_15897 = uv;
	_15898 = _15896;
	float4 _15899 = F__tex2D_linearize(V__samplerBlurHorizontal, _15897, _15898);
	float3 halation = _15899.xyz;
	float _15903 = dot(halation, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _15905 = _15903 / 3.00000000e+00;
	float3 _15908 = lerp(scanlines, _15905.xxx, V__halation_weight.xxx);
	float3 _15911 = float3(rg_15865.x, rg_15865.y, blue_15881);
	float3 _15912 = _15908 * _15911;
	float4 _15917 = float4(_15912.x, _15912.y, _15912.z, 1.00000000e+00);
	color = _15917;
	return;
}
void F__leanPreblurVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0)
{
	uint _15923;
	float4 _15924;
	float2 _15925;
	_15923 = id;
	F__contentCropVS(_15923, _15924, _15925);
	pos = _15924;
	uv = _15925;
	bool _15931 = all(bool2(true, true));
	float2 _15933 = frac(float2(2.40000000e+02, 0.00000000e+00));
	bool2 _15935 = _15933 == float2(0.00000000e+00, 0.00000000e+00);
	bool _15936 = all(_15935);
	bool _15937 = _15931 && _15936;
	if (_15937)
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
	uint _15944;
	float4 _15945;
	float2 _15946;
	_15944 = id;
	F__PostProcessVS(_15944, _15945, _15946);
	pos = _15945;
	uv = _15946;
	bool _15952 = all(bool2(true, true));
	float2 _15954 = frac(float2(2.40000000e+02, 0.00000000e+00));
	bool2 _15956 = _15954 == float2(0.00000000e+00, 0.00000000e+00);
	bool _15957 = all(_15956);
	bool _15958 = _15952 && _15957;
	if (_15958)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
float3 F__leanInput(
	in float2 uv)
{
	float2 _15964 = uv * float2(7.50000000e-01, 1.00000000e+00);
	float2 _15966 = _15964 + float2(1.25000000e-01, 0.00000000e+00);
	float4 _15971 = float4(_15966.x, _15966.y, 0.00000000e+00, 0.00000000e+00);
	float4 _15972 = V__ReShade__BackBuffer.t.SampleLevel(V__ReShade__BackBuffer.s, _15971.xy, _15971.w);
	float _15973 = F__get_input_gamma();
	float3 _15976 = pow(_15972.xyz, _15973.xxx);
	return _15976;
}
float3 F__leanBeam(
	in float2 uv)
{
	bool _15981 = V__geom_rotation_mode == 0u;
	bool _15983 = V__geom_rotation_mode == 2u;
	bool _15984 = _15981 || _15983;
	bool landscape = _15984;
	float2 _15988 = landscape.xx ? uv : uv.yx;
	float2 rotated = _15988;
	int _15992 = landscape ? 1080 : 1440;
	float scale_15994 = ((float)_15992);
	float2 _15995;
	float _15996;
	_15995 = rotated;
	_15996 = scale_15994;
	S__InterpolationFieldData _15997 = F__calc_interpolation_field_data(_15995, _15996);
	S__InterpolationFieldData field = _15997;
	float _16001 = rotated.y * field.triangle_wave_freq;
	float _16003 = _16001 + ((float)field.field_parity);
	float _16005 = _16003 * 5.00000000e-01;
	float ypos_16006 = _16005;
	float2 _16009 = float2(1.00000000e+00, ((float)V__scanline_thickness));
	float2 _16012 = float2(((float)V__scanline_thickness), 1.00000000e+00);
	float2 _16014 = landscape.xx ? _16009 : _16012;
	float2 _16016 = _16014 / float2(1.44000000e+03, 1.08000000e+03);
	float2 bin_size_16017 = _16016;
	float2 _16018;
	float2 _16019;
	float2 _16020;
	_16018 = uv;
	_16019 = float2(0.00000000e+00, 0.00000000e+00);
	_16020 = bin_size_16017;
	float2 _16022 = F__round_coord(_16018, _16019, _16020);
	float2 sample_uv_16023 = _16022;
	if (field.wrong_field)
	{
		if (landscape)
		{
			bool _16033 = sample_uv_16023.y <= uv.y;
			int _16036 = _16033 ? 1 : -1;
			uint _16038 = ((uint)_16036) * V__scanline_thickness;
			uint _16040 = _16038 / 1080u;
			float _16043 = sample_uv_16023.y + ((float)_16040);
			sample_uv_16023[1] = _16043;
		}
		else
		{
			bool _16046 = sample_uv_16023.x <= uv.x;
			int _16049 = _16046 ? 1 : -1;
			uint _16051 = ((uint)_16049) * V__scanline_thickness;
			uint _16053 = _16051 / 1440u;
			float _16056 = sample_uv_16023.x + ((float)_16053);
			sample_uv_16023[0] = _16056;
		}
	}
	float2 _16057;
	_16057 = sample_uv_16023;
	float3 _16058 = F__leanInput(_16057);
	float3 current = _16058;
	float2 _16061 = float2(current.x, ypos_16006);
	float2 _16062;
	_16062 = _16061;
	float4 _16063 = F__tex2D_nograd(V__samplerBeamDist, _16062);
	float2 _16065 = float2(current.y, ypos_16006);
	float2 _16066;
	_16066 = _16065;
	float4 _16067 = F__tex2D_nograd(V__samplerBeamDist, _16066);
	float2 _16069 = float2(current.z, ypos_16006);
	float2 _16070;
	_16070 = _16069;
	float4 _16071 = F__tex2D_nograd(V__samplerBeamDist, _16070);
	float3 _16075 = float3(_16063.x, _16067.x, _16071.x);
	float3 result_16076 = _16075;
	bool _16081 = V__beam_shape_mode == 3u;
	if (_16081)
	{
		float2 _16084 = float2(0.00000000e+00, ((float)V__scanline_thickness));
		int _16087 = 1 + ((int)V__enable_interlacing);
		float2 _16089 = _16084 * ((float2)_16087.xx);
		float2 _16091 = _16089 / float2(1.44000000e+03, 1.08000000e+03);
		float2 offset_16092 = _16091;
		float2 _16093 = sample_uv_16023 - offset_16092;
		float2 _16094;
		_16094 = _16093;
		float3 _16095 = F__leanInput(_16094);
		float3 upper = _16095;
		float2 _16097 = sample_uv_16023 + offset_16092;
		float2 _16098;
		_16098 = _16097;
		float3 _16099 = F__leanInput(_16098);
		float3 lower = _16099;
		float2 _16102 = float2(upper.x, ypos_16006);
		float2 _16103;
		_16103 = _16102;
		float4 _16104 = F__tex2D_nograd(V__samplerBeamDist, _16103);
		float2 _16106 = float2(upper.y, ypos_16006);
		float2 _16107;
		_16107 = _16106;
		float4 _16108 = F__tex2D_nograd(V__samplerBeamDist, _16107);
		float2 _16110 = float2(upper.z, ypos_16006);
		float2 _16111;
		_16111 = _16110;
		float4 _16112 = F__tex2D_nograd(V__samplerBeamDist, _16111);
		float3 _16116 = float3(_16104.y, _16108.y, _16112.y);
		float3 _16117 = result_16076 + _16116;
		result_16076 = _16117;
		float2 _16119 = float2(lower.x, ypos_16006);
		float2 _16120;
		_16120 = _16119;
		float4 _16121 = F__tex2D_nograd(V__samplerBeamDist, _16120);
		float2 _16123 = float2(lower.y, ypos_16006);
		float2 _16124;
		_16124 = _16123;
		float4 _16125 = F__tex2D_nograd(V__samplerBeamDist, _16124);
		float2 _16127 = float2(lower.z, ypos_16006);
		float2 _16128;
		_16128 = _16127;
		float4 _16129 = F__tex2D_nograd(V__samplerBeamDist, _16128);
		float3 _16133 = float3(_16121.z, _16125.z, _16129.z);
		float3 _16134 = result_16076 + _16133;
		result_16076 = _16134;
	}
	return result_16076;
}
void F__leanCachedBeamVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0)
{
	uint _16140;
	float4 _16141;
	float2 _16142;
	_16140 = id;
	F__PostProcessVS(_16140, _16141, _16142);
	pos = _16141;
	uv = _16142;
	bool3 _16148 = V__convergence_offset_x == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16149 = all(_16148);
	bool3 _16151 = V__convergence_offset_y == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16152 = all(_16151);
	bool _16153 = _16149 && _16152;
	bool _16155 = V__scanline_offset == 0.00000000e+00;
	bool _16156 = _16153 && _16155;
	if (_16156)
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
	float2 _16163;
	_16163 = uv;
	float3 _16164 = F__leanBeam(_16163);
	float4 _16169 = float4(_16164.x, _16164.y, _16164.z, 1.00000000e+00);
	color = _16169;
	return;
}
void F__leanBeamsPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	bool3 _16179 = V__convergence_offset_x == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16180 = all(_16179);
	bool3 _16182 = V__convergence_offset_y == float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16183 = all(_16182);
	bool _16184 = _16180 && _16183;
	bool _16186 = V__scanline_offset == 0.00000000e+00;
	bool _16187 = _16184 && _16186;
	if (_16187)
	{
		float2 _16188;
		_16188 = uv;
		float3 _16189 = F__leanBeam(_16188);
		float4 _16194 = float4(_16189.x, _16189.y, _16189.z, 1.00000000e+00);
		color = _16194;
		return;
	}
	bool3 _16196 = V__convergence_offset_x != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16197 = any(_16196);
	bool3 _16199 = V__convergence_offset_y != float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	bool _16200 = any(_16199);
	bool _16201 = _16197 || _16200;
	float run_convergence_16203 = ((float)_16201);
	float4 _16204;
	float2 _16205;
	float _16206;
	float4 _16207;
	_16204 = pos;
	_16205 = uv;
	_16206 = run_convergence_16203;
	F__beamConvergencePS(_16204, _16205, _16206, _16207);
	color = _16207;
	return;
}
bool F__leanFuseGeometry()
{
	float mode = ((float)V__geom_mode_runtime);
	bool _16214 = mode <= 5.00000000e-01;
	bool2 _16216 = V__geom_overscan == float2(1.00000000e+00, 1.00000000e+00);
	bool _16217 = all(_16216);
	bool _16218 = _16214 && _16217;
	bool _16220 = true || _16218;
	bool _16222 = true && _16220;
	return _16222;
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
	uint _16234;
	float4 _16235;
	float2 _16236;
	float2 _16237;
	float4 _16238;
	float3 _16239;
	float3 _16240;
	float3 _16241;
	float3 _16242;
	_16234 = id;
	F__geometryVS(_16234, _16235, _16236, _16237, _16238, _16239, _16240, _16241, _16242);
	pos = _16235;
	uv = _16236;
	output_size_inv = _16237;
	aspect_overscan = _16238;
	eye = _16239;
	row0 = _16240;
	row1 = _16241;
	row2 = _16242;
	bool _16247 = F__leanFuseGeometry();
	if (_16247)
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
	bool _16263 = F__leanFuseGeometry();
	bool _16264 = !_16263;
	if (_16264)
	{
		float4 _16265;
		float2 _16266;
		float4 _16267;
		_16265 = pos;
		_16266 = uv;
		F__uncropContentPixelShader(_16265, _16266, _16267);
		color = _16267;
		return;
	}
	bool _16274 = uv.x < 1.25000000e-01;
	bool _16277 = uv.x > 8.75000000e-01;
	bool _16278 = _16274 || _16277;
	bool _16281 = uv.y < 0.00000000e+00;
	bool _16282 = _16278 || _16281;
	bool _16285 = uv.y > 1.00000000e+00;
	bool _16286 = _16282 || _16285;
	if (_16286)
	{
		color = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
		return;
	}
	float2 _16289 = uv - float2(1.25000000e-01, 0.00000000e+00);
	float2 _16291 = _16289 / float2(7.50000000e-01, 1.00000000e+00);
	float2 local_uv = _16291;
	float4 _16293;
	float2 _16294;
	float2 _16295;
	float4 _16296;
	float3 _16297;
	float3 _16298;
	float3 _16299;
	float3 _16300;
	float4 _16301;
	_16293 = pos;
	_16294 = local_uv;
	_16295 = output_size_inv;
	_16296 = aspect_overscan;
	_16297 = eye;
	_16298 = row0;
	_16299 = row1;
	_16300 = row2;
	F__geometryPS(_16293, _16294, _16295, _16296, _16297, _16298, _16299, _16300, _16301);
	color = _16301;
	float4 _16303;
	_16303 = color;
	float4 _16304 = F__leanUNorm16(_16303);
	color = _16304;
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
	int _16318 = min(((int)id), 2);
	uint _16319;
	float4 _16320;
	float2 _16321;
	float2 _16322;
	float4 _16323;
	float3 _16324;
	float3 _16325;
	float3 _16326;
	float3 _16327;
	_16319 = ((uint)_16318);
	F__geometryVS(_16319, _16320, _16321, _16322, _16323, _16324, _16325, _16326, _16327);
	pos = _16320;
	uv = _16321;
	output_size_inv = _16322;
	aspect_overscan = _16323;
	eye = _16324;
	row0 = _16325;
	row1 = _16326;
	row2 = _16327;
	bool _16333 = F__leanFuseGeometry();
	bool _16334 = !_16333;
	if (_16334)
	{
		uint _16335;
		float4 _16336;
		float2 _16337;
		_16335 = id;
		F__contentUncropVS(_16335, _16336, _16337);
		pos = _16336;
		uv = _16337;
	}
	return;
}
float3 F__leanFilterCode(
	in float3 a,
	in float3 b,
	in float w)
{
	float _16345 = 2.56000000e+02 - w;
	float3 _16347 = a * _16345.xxx;
	float3 _16349 = b * w.xxx;
	float3 _16350 = _16347 + _16349;
	float3 _16352 = _16350 + float3(1.28000000e+02, 1.28000000e+02, 1.28000000e+02);
	float3 _16354 = _16352 * float3(3.90625000e-03, 3.90625000e-03, 3.90625000e-03);
	float3 _16355 = floor(_16354);
	return _16355;
}
float3 F__leanTap(
	in float3 a,
	in float3 b,
	in float w,
	in bool exact)
{
	float3 _16362;
	float3 _16363;
	float _16364;
	_16362 = a;
	_16363 = b;
	_16364 = w;
	float3 _16365 = F__leanFilterCode(_16362, _16363, _16364);
	float _16367 = w * 3.90625000e-03;
	float3 _16369 = lerp(a, b, _16367.xxx);
	float3 _16371 = exact.xxx ? _16365 : _16369;
	float3 _16373 = _16371 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	return _16373;
}
float3 F__leanApproxColumn(
	in int column,
	in float2 uv,
	in uint pairs,
	in float2 delta)
{
	float _16382 = ((float)column) + 5.00000000e-01;
	float _16384 = _16382 / 1.44000000e+03;
	float2 _16386 = float2(_16384, uv.y);
	float2 _16388 = delta * ((float2)pairs.xx);
	float2 _16389 = _16386 - _16388;
	float2 coord_top = _16389;
	float3 acc_16392 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	int i_16394 = 0;
	uint _16401 = pairs * 2u;
	uint _16403 = _16401 + 1u;
	bool _16405 = ((uint)i_16394) < _16403;
	while (_16405)
	{
		{
			float2 _16409 = ((float2)i_16394.xx) * delta;
			float2 _16410 = coord_top + _16409;
			float4 _16415 = float4(_16410.x, _16410.y, 0.00000000e+00, 0.00000000e+00);
			float4 _16416 = V__samplerBeamConvergence.t.SampleLevel(V__samplerBeamConvergence.s, _16415.xy, _16415.w);
			float3 _16418 = acc_16392 + _16416.xyz;
			acc_16392 = _16418;
		}
		int _16407 = i_16394 + 1;
		i_16394 = _16407;
		uint _16401 = pairs * 2u;
		uint _16403 = _16401 + 1u;
		_16405 = ((uint)i_16394) < _16403;
	}
	uint _16420 = pairs * 2u;
	uint _16422 = _16420 + 1u;
	float3 _16424 = acc_16392 / ((float3)_16422.xxx);
	float4 _16429 = float4(_16424.x, _16424.y, _16424.z, 1.00000000e+00);
	float4 _16430;
	_16430 = _16429;
	float4 _16431 = F__leanCode16Rop(_16430);
	return _16431.xyz;
}
void F__leanApproxBloomPS(
	in float4 pos : SV_POSITION,
	in float2 uv : TEXCOORD0,
	out float4 color : SV_TARGET)
{
	float _16439 = rcp(1.08000000e+03);
	float2 _16441 = float2(0.00000000e+00, _16439);
	float2 _16443 = V__blur_radius.xx * _16441;
	float2 dy_16444 = _16443;
	float _16446 = rcp(1.44000000e+03);
	float _16447 = V__blur_radius * _16446;
	float dx_16448 = _16447;
	bool _16453 = V__blur_radius == 1.00000000e+00;
	bool _16455 = _16453 && true;
	if (_16455)
	{
		float _16457 = uv.x - dx_16448;
		float _16459 = _16457 * 7.20000000e+02;
		float _16461 = _16459 * 2.00000000e+00;
		float _16463 = _16461 - 5.00000000e-01;
		float x_16464 = _16463;
		float _16465 = floor(x_16464);
		int a_16467 = ((int)_16465);
		float _16468 = frac(x_16464);
		float _16470 = _16468 * 2.56000000e+02;
		float _16472 = _16470 + 5.00000000e-01;
		float _16473 = floor(_16472);
		float w_16474 = _16473;
		int _16477 = clamp(a_16467, 0, 1439);
		int _16478;
		float2 _16479;
		uint _16480;
		float2 _16481;
		_16478 = _16477;
		_16479 = uv;
		_16480 = 1u;
		_16481 = dy_16444;
		float3 _16483 = F__leanApproxColumn(_16478, _16479, _16480, _16481);
		float3 c0 = _16483;
		int _16486 = a_16467 + 1;
		int _16489 = clamp(_16486, 0, 1439);
		int _16490;
		float2 _16491;
		uint _16492;
		float2 _16493;
		_16490 = _16489;
		_16491 = uv;
		_16492 = 1u;
		_16493 = dy_16444;
		float3 _16495 = F__leanApproxColumn(_16490, _16491, _16492, _16493);
		float3 c1 = _16495;
		int _16498 = a_16467 + 2;
		int _16501 = clamp(_16498, 0, 1439);
		int _16502;
		float2 _16503;
		uint _16504;
		float2 _16505;
		_16502 = _16501;
		_16503 = uv;
		_16504 = 1u;
		_16505 = dy_16444;
		float3 _16507 = F__leanApproxColumn(_16502, _16503, _16504, _16505);
		float3 c2 = _16507;
		int _16510 = a_16467 + 3;
		int _16513 = clamp(_16510, 0, 1439);
		int _16514;
		float2 _16515;
		uint _16516;
		float2 _16517;
		_16514 = _16513;
		_16515 = uv;
		_16516 = 1u;
		_16517 = dy_16444;
		float3 _16519 = F__leanApproxColumn(_16514, _16515, _16516, _16517);
		float3 c3 = _16519;
		float3 _16521;
		float3 _16522;
		float _16523;
		_16521 = c0;
		_16522 = c1;
		_16523 = w_16474;
		float3 _16524 = F__leanFilterCode(_16521, _16522, _16523);
		float3 _16526 = _16524 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
		float3 _16527;
		float3 _16528;
		float _16529;
		_16527 = c1;
		_16528 = c2;
		_16529 = w_16474;
		float3 _16530 = F__leanFilterCode(_16527, _16528, _16529);
		float3 _16532 = _16530 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
		float3 _16533 = _16526 + _16532;
		float3 _16534;
		float3 _16535;
		float _16536;
		_16534 = c2;
		_16535 = c3;
		_16536 = w_16474;
		float3 _16537 = F__leanFilterCode(_16534, _16535, _16536);
		float3 _16539 = _16537 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
		float3 _16540 = _16533 + _16539;
		float3 _16542 = _16540 / float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
		float4 _16547 = float4(_16542.x, _16542.y, _16542.z, 1.00000000e+00);
		color = _16547;
		return;
	}
	float3 acc_16549 = float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00);
	float _16551 = dx_16448 * 1.00000000e+00;
	float _16553 = uv.x - _16551;
	float x_left = _16553;
	int i_16556 = 0;
	while (((uint)i_16556) < 3u)
	{
		{
			float _16568 = ((float)i_16556) * dx_16448;
			float _16569 = x_left + _16568;
			float _16571 = _16569 * 7.20000000e+02;
			float _16573 = _16571 * 2.00000000e+00;
			float _16575 = _16573 - 5.00000000e-01;
			float x_16576 = _16575;
			float _16577 = floor(x_16576);
			int a_16579 = ((int)_16577);
			float _16580 = frac(x_16576);
			float _16582 = _16580 * 2.56000000e+02;
			float _16584 = _16582 + 5.00000000e-01;
			float _16585 = floor(_16584);
			float w_16586 = _16585;
			int _16589 = clamp(a_16579, 0, 1439);
			int _16590;
			float2 _16591;
			uint _16592;
			float2 _16593;
			_16590 = _16589;
			_16591 = uv;
			_16592 = 1u;
			_16593 = dy_16444;
			float3 _16595 = F__leanApproxColumn(_16590, _16591, _16592, _16593);
			int _16597 = a_16579 + 1;
			int _16600 = clamp(_16597, 0, 1439);
			int _16601;
			float2 _16602;
			uint _16603;
			float2 _16604;
			_16601 = _16600;
			_16602 = uv;
			_16603 = 1u;
			_16604 = dy_16444;
			float3 _16606 = F__leanApproxColumn(_16601, _16602, _16603, _16604);
			float3 _16607;
			float3 _16608;
			float _16609;
			_16607 = _16595;
			_16608 = _16606;
			_16609 = w_16586;
			float3 _16610 = F__leanFilterCode(_16607, _16608, _16609);
			float3 _16612 = _16610 / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
			float3 _16613 = acc_16549 + _16612;
			acc_16549 = _16613;
		}
		int _16566 = i_16556 + 1;
		i_16556 = _16566;
	}
	float3 _16615 = acc_16549 / float3(3.00000000e+00, 3.00000000e+00, 3.00000000e+00);
	float4 _16620 = float4(_16615.x, _16615.y, _16615.z, 1.00000000e+00);
	color = _16620;
	return;
}
int F__selected_halo(
	in float sigma)
{
	return 4;
}
float F__lean_bloom_sigma()
{
	float2 _16627 = F__calc_triad_size();
	float _16628;
	float _16629;
	_16628 = _16627.x;
	_16629 = 3.90625000e-03;
	float _16632 = F__get_min_sigma_to_blur_triad(_16628, _16629);
	float _16633;
	_16633 = _16632;
	float _16634 = F__get_final_bloom_sigma(_16633);
	return _16634;
}
bool F__leanStraightOutput()
{
	float mode_16638 = ((float)V__geom_mode_runtime);
	bool _16640 = mode_16638 <= 5.00000000e-01;
	bool _16642 = true && _16640;
	bool2 _16644 = V__geom_overscan == float2(1.00000000e+00, 1.00000000e+00);
	bool _16645 = all(_16644);
	bool _16646 = _16642 && _16645;
	return _16646;
}
bool F__leanFusedActive()
{
	float _16649 = F__lean_bloom_sigma();
	float _16650;
	_16650 = _16649;
	int _16651 = F__selected_halo(_16650);
	bool _16653 = _16651 == 4;
	bool _16655 = true && _16653;
	return _16655;
}
void F__leanMaskVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0)
{
	uint _16663;
	float4 _16664;
	float2 _16665;
	_16663 = id;
	F__PostProcessVS(_16663, _16664, _16665);
	pos = _16664;
	uv = _16665;
	bool _16670 = F__leanFusedActive();
	if (_16670)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
void F__leanBrightVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0,
	out float sigma : TEXCOORD1)
{
	uint _16678;
	float4 _16679;
	float2 _16680;
	float _16681;
	_16678 = id;
	F__brightpassVS(_16678, _16679, _16680, _16681);
	pos = _16679;
	uv = _16680;
	sigma = _16681;
	bool _16686 = F__leanFusedActive();
	if (_16686)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
void F__leanBloomVerticalGatedVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0,
	nointerpolation out float sigma : TEXCOORD1)
{
	uint _16694;
	float4 _16695;
	float2 _16696;
	float _16697;
	_16694 = id;
	F__leanBloomVerticalVS(_16694, _16695, _16696, _16697);
	pos = _16695;
	uv = _16696;
	sigma = _16697;
	bool _16702 = F__leanFusedActive();
	if (_16702)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
void F__leanBloomHorizontalGatedVS(
	in uint id : SV_VERTEXID,
	out float4 pos : SV_POSITION,
	out float2 uv : TEXCOORD0,
	out float sigma : TEXCOORD1)
{
	uint _16710;
	float4 _16711;
	float2 _16712;
	float _16713;
	_16710 = id;
	F__bloomHorizontalVS(_16710, _16711, _16712, _16713);
	pos = _16711;
	uv = _16712;
	sigma = _16713;
	bool _16718 = F__leanFusedActive();
	if (_16718)
	{
		pos[0] = -1.00000000e+00;
	}
	return;
}
float3 F__fused_mask(
	in float2 uv,
	in bool exact)
{
	float4 _16731 = float4(uv.x, uv.y, 0.00000000e+00, 0.00000000e+00);
	float4 _16732 = V__samplerPhosphorMask.t.SampleLevel(V__samplerPhosphorMask.s, _16731.xy, _16731.w);
	float2 rg_16734 = _16732.xy;
	bool _16736 = V__mask_type >= 3;
	bool _16739 = V__phosphor_offset_x.x == V__phosphor_offset_x.z;
	bool _16740 = _16736 && _16739;
	bool _16743 = V__phosphor_offset_y.x == V__phosphor_offset_y.z;
	bool _16744 = _16740 && _16743;
	bool shared_blue_16745 = _16744;
	float4 _16750 = float4(uv.x, uv.y, 0.00000000e+00, 0.00000000e+00);
	float4 _16751 = V__samplerPhosphorBlue.t.SampleLevel(V__samplerPhosphorBlue.s, _16750.xy, _16750.w);
	float _16754 = shared_blue_16745 ? rg_16734.x : _16751.x;
	float blue_16755 = _16754;
	bool _16757 = V__scanline_deinterlacing_mode == 2u;
	bool _16759 = V__scanline_deinterlacing_mode == 3u;
	bool _16760 = _16757 || _16759;
	bool _16761 = V__enable_interlacing && _16760;
	bool interlaced_16762 = _16761;
	float4 _16767 = float4(uv.x, uv.y, 0.00000000e+00, 0.00000000e+00);
	float4 _16768 = V__samplerDeinterlace.t.SampleLevel(V__samplerDeinterlace.s, _16767.xy, _16767.w);
	float4 _16773 = float4(uv.x, uv.y, 0.00000000e+00, 0.00000000e+00);
	float4 _16774 = V__samplerBeamConvergence.t.SampleLevel(V__samplerBeamConvergence.s, _16773.xy, _16773.w);
	float3 _16778 = interlaced_16762.xxx ? _16768.xyz : _16774.xyz;
	float3 scanlines_16779 = _16778;
	float _16780 = F__get_intermediate_gamma();
	float2 _16781;
	float _16782;
	_16781 = uv;
	_16782 = _16780;
	float4 _16783 = F__tex2Dlod_linearize(V__samplerBlurHorizontal, _16781, _16782);
	float3 halation_16785 = _16783.xyz;
	float _16787 = dot(halation_16785, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _16789 = _16787 / 3.00000000e+00;
	float3 _16792 = lerp(scanlines_16779, _16789.xxx, V__halation_weight.xxx);
	float3 _16795 = float3(rg_16734.x, rg_16734.y, blue_16755);
	float3 _16796 = _16792 * _16795;
	float4 _16801 = float4(_16796.x, _16796.y, _16796.z, 1.00000000e+00);
	float4 _16802;
	bool _16803;
	_16802 = _16801;
	_16803 = exact;
	float4 _16804 = F__leanCode16(_16802, _16803);
	float3 _16807 = _16804.xyz / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	return _16807;
}
float3 F__fused_bright(
	in float3 stored_mask,
	in float2 uv,
	in float bloom_sigma,
	in bool exact)
{
	float _16814 = F__get_intermediate_gamma();
	float3 _16816 = pow(stored_mask, _16814.xxx);
	float3 intensity_dim_16817 = _16816;
	float _16818 = F__get_mask_amplify();
	float mask_amplify_16819 = _16818;
	float _16821 = rcp(5.00000000e-01);
	float3 _16823 = intensity_dim_16817 * _16821.xxx;
	float3 _16825 = _16823 * mask_amplify_16819.xxx;
	float3 _16827 = _16825 * V__levels_contrast.xxx;
	float3 intensity_16828 = _16827;
	float _16829 = F__get_intermediate_gamma();
	float2 _16830;
	float _16831;
	_16830 = uv;
	_16831 = _16829;
	float4 _16832 = F__tex2Dlod_linearize(V__samplerBloomApproxHoriz, _16830, _16831);
	float3 _16835 = V__levels_contrast.xxx * _16832.xyz;
	float3 phosphor_blur_approx_16836 = _16835;
	float _16837;
	_16837 = bloom_sigma;
	float _16838 = F__get_center_weight(_16837);
	float center_weight_16839 = _16838;
	float3 _16841 = center_weight_16839.xxx * intensity_16828;
	float3 _16842 = phosphor_blur_approx_16836 - _16841;
	float3 _16844 = max(float3(0.00000000e+00, 0.00000000e+00, 0.00000000e+00), _16842);
	float3 max_area_contribution_approx_16845 = _16844;
	float3 _16847 = V__bloom_underestimate_levels.xxx * max_area_contribution_approx_16845;
	float3 area_contrib_underestimate_16848 = _16847;
	float3 _16850 = V__bloom_underestimate_levels.xxx * intensity_16828;
	float3 intensity_underestimate_16851 = _16850;
	float3 _16853 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) - area_contrib_underestimate_16848;
	float3 _16854 = _16853 / intensity_underestimate_16851;
	float3 _16856 = _16854 - float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00);
	float _16858 = center_weight_16839 - 1.00000000e+00;
	float3 _16860 = _16856 / _16858.xxx;
	float3 blur_ratio_temp_16861 = _16860;
	float3 _16862 = saturate(blur_ratio_temp_16861);
	float3 blur_ratio_16863 = _16862;
	float3 _16866 = lerp(blur_ratio_16863, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00), V__bloom_excess.xxx);
	float3 _16867 = intensity_dim_16817 * _16866;
	float3 brightpass_16868 = _16867;
	float4 _16873 = float4(brightpass_16868.x, brightpass_16868.y, brightpass_16868.z, 1.00000000e+00);
	float _16874 = F__get_intermediate_gamma();
	float4 _16875;
	float _16876;
	_16875 = _16873;
	_16876 = _16874;
	float4 _16877 = F__encode_output(_16875, _16876);
	float4 _16878;
	bool _16879;
	_16878 = _16877;
	_16879 = exact;
	float4 _16880 = F__leanCode16(_16878, _16879);
	return _16880.xyz;
}
float3 F__br_vsample(
	in int col,
	in float uv_y,
	in int origin_y,
	in bool exact_taps)
{
	float _16889 = uv_y * 1.08000000e+03;
	float _16891 = _16889 - 5.00000000e-01;
	float _16893 = _16891 - ((float)origin_y);
	float _16895 = _16893 + 4.00000000e+00;
	float y = _16895;
	float _16897 = floor(y);
	int a_16899 = ((int)_16897);
	float _16900 = frac(y);
	float _16902 = _16900 * 2.56000000e+02;
	float _16904 = _16902 + 5.00000000e-01;
	float _16905 = floor(_16904);
	float w_16906 = _16905;
	int _16909 = clamp(a_16899, 0, 23);
	int a0 = _16909;
	int _16912 = a_16899 + 1;
	int _16915 = clamp(_16912, 0, 23);
	int a1 = _16915;
	int _16918 = a0 * 40;
	int _16919 = _16918 + col;
	int _16921 = a1 * 40;
	int _16922 = _16921 + col;
	float3 _16923;
	float3 _16924;
	float _16925;
	bool _16926;
	_16923 = V__br_tile[_16919];
	_16924 = V__br_tile[_16922];
	_16925 = w_16906;
	_16926 = exact_taps;
	float3 _16929 = F__leanTap(_16923, _16924, _16925, _16926);
	float _16930 = F__get_intermediate_gamma();
	float3 _16932 = pow(_16929, _16930.xxx);
	return _16932;
}
float3 F__vert_hsample(
	in float uv_x,
	in int row,
	in int origin_x,
	in bool exact_taps)
{
	float _16940 = uv_x * 7.20000000e+02;
	float _16942 = _16940 * 2.00000000e+00;
	float _16944 = _16942 - 5.00000000e-01;
	float _16946 = _16944 - ((float)origin_x);
	float _16948 = _16946 + 4.00000000e+00;
	float x_16949 = _16948;
	float _16950 = floor(x_16949);
	int _16954 = clamp(((int)_16950), 0, 39);
	int a_16955 = _16954;
	int _16957 = a_16955 + 1;
	int _16959 = min(_16957, 39);
	int b_16960 = _16959;
	float _16961 = frac(x_16949);
	float _16963 = _16961 * 2.56000000e+02;
	float _16965 = _16963 + 5.00000000e-01;
	float _16966 = floor(_16965);
	float w_16967 = _16966;
	int _16969 = row * 40;
	int _16970 = _16969 + a_16955;
	int _16972 = row * 40;
	int _16973 = _16972 + b_16960;
	float3 _16974;
	float3 _16975;
	float _16976;
	bool _16977;
	_16974 = V__vertical[_16970];
	_16975 = V__vertical[_16973];
	_16976 = w_16967;
	_16977 = exact_taps;
	float3 _16980 = F__leanTap(_16974, _16975, _16976, _16977);
	float _16981 = F__get_intermediate_gamma();
	float3 _16983 = pow(_16980, _16981.xxx);
	return _16983;
}
void F__fused_bloom_body(
	in uint3 group,
	in uint3 local,
	in uint3 pixel)
{
	float _16989 = F__lean_bloom_sigma();
	float sigma_16990 = _16989;
	bool _16991 = F__leanStraightOutput();
	bool _16992 = !_16991;
	bool exact_taps_16993 = _16992;
	int2 _16996 = ((int2)group.xy) * int2(32, 16);
	int2 origin = _16996;
	uint _17000 = local.y * 32u;
	uint _17002 = _17000 + local.x;
	uint tid = _17002;
	uint i_17004 = tid;
	while (i_17004 < 960u)
	{
		{
			uint _17015 = i_17004 % 40u;
			int rx = ((int)_17015);
			uint _17019 = i_17004 / 40u;
			int ry = ((int)_17019);
			int _17023 = rx - 4;
			int _17025 = ry - 4;
			int2 _17026 = int2(_17023, _17025);
			int2 _17027 = origin + _17026;
			int2 _17030 = clamp(_17027, int2(0, 0), int2(1439, 1079));
			int2 p_17031 = _17030;
			float2 _17034 = ((float2)p_17031) + float2(5.00000000e-01, 5.00000000e-01);
			float2 _17036 = _17034 / float2(1.44000000e+03, 1.08000000e+03);
			float2 uv_17037 = _17036;
			float2 _17038;
			bool _17039;
			_17038 = uv_17037;
			_17039 = exact_taps_16993;
			float3 _17040 = F__fused_mask(_17038, _17039);
			float3 m_17041 = _17040;
			int _17043 = rx - 4;
			int cx = _17043;
			int _17046 = ry - 4;
			int cy = _17046;
			bool _17052 = cx >= 0;
			bool _17054 = cx < 32;
			bool _17055 = _17052 && _17054;
			bool _17057 = cy >= 0;
			bool _17058 = _17055 && _17057;
			bool _17060 = cy < 16;
			bool _17061 = _17058 && _17060;
			if (_17061)
			{
				int _17063 = cy * 32;
				int _17064 = _17063 + cx;
				V__m_tile[_17064] = m_17041;
			}
			float3 _17065;
			float2 _17066;
			float _17067;
			bool _17068;
			_17065 = m_17041;
			_17066 = uv_17037;
			_17067 = sigma_16990;
			_17068 = exact_taps_16993;
			float3 _17069 = F__fused_bright(_17065, _17066, _17067, _17068);
			V__br_tile[i_17004] = _17069;
		}
		uint _17013 = i_17004 + 512u;
		i_17004 = _17013;
	}
	GroupMemoryBarrierWithGroupSync();
	float _17071 = sigma_16990 * sigma_16990;
	float _17073 = 5.00000000e-01 / _17071;
	float denom_inv_17074 = _17073;
	float _17076 = -1.00000000e+00 * denom_inv_17074;
	float _17077 = exp(_17076);
	float w1_17078 = _17077;
	float _17080 = -4.00000000e+00 * denom_inv_17074;
	float _17081 = exp(_17080);
	float w2_17082 = _17081;
	float _17084 = -9.00000000e+00 * denom_inv_17074;
	float _17085 = exp(_17084);
	float w3_17086 = _17085;
	float _17088 = -1.60000000e+01 * denom_inv_17074;
	float _17089 = exp(_17088);
	float w4_17090 = _17089;
	float _17091 = w1_17078 + w2_17082;
	float _17092 = _17091 + w3_17086;
	float _17093 = _17092 + w4_17090;
	float _17095 = 2.00000000e+00 * _17093;
	float _17097 = 1.00000000e+00 + _17095;
	float _17099 = 1.00000000e+00 / _17097;
	float weight_sum_inv_17100 = _17099;
	float _17101 = w1_17078 + w2_17082;
	float w12_17102 = _17101;
	float _17103 = w3_17086 + w4_17090;
	float w34_17104 = _17103;
	float _17105 = w2_17082 / w12_17102;
	float _17107 = 1.00000000e+00 + _17105;
	float o12 = _17107;
	float _17109 = w4_17090 / w34_17104;
	float _17111 = 3.00000000e+00 + _17109;
	float o34 = _17111;
	uint j_17113 = tid;
	while (j_17113 < 640u)
	{
		{
			uint _17124 = j_17113 % 40u;
			int col_17126 = ((int)_17124);
			uint _17128 = j_17113 / 40u;
			int row_y = ((int)_17128);
			int _17132 = origin.y + row_y;
			int _17135 = clamp(_17132, 0, 1079);
			float _17138 = ((float)_17135) + 5.00000000e-01;
			float _17140 = _17138 / 1.08000000e+03;
			float uv_y_17141 = _17140;
			float _17143 = rcp(1.08000000e+03);
			float dy_17144 = _17143;
			float _17145 = o34 * dy_17144;
			float _17146 = uv_y_17141 - _17145;
			int _17147;
			float _17148;
			int _17149;
			bool _17150;
			_17147 = col_17126;
			_17148 = _17146;
			_17149 = origin.y;
			_17150 = exact_taps_16993;
			float3 _17152 = F__br_vsample(_17147, _17148, _17149, _17150);
			float3 _17154 = w34_17104.xxx * _17152;
			float3 sum_17155 = _17154;
			float _17156 = o12 * dy_17144;
			float _17157 = uv_y_17141 - _17156;
			int _17158;
			float _17159;
			int _17160;
			bool _17161;
			_17158 = col_17126;
			_17159 = _17157;
			_17160 = origin.y;
			_17161 = exact_taps_16993;
			float3 _17163 = F__br_vsample(_17158, _17159, _17160, _17161);
			float3 _17165 = w12_17102.xxx * _17163;
			float3 _17166 = sum_17155 + _17165;
			sum_17155 = _17166;
			int _17167;
			float _17168;
			int _17169;
			bool _17170;
			_17167 = col_17126;
			_17168 = uv_y_17141;
			_17169 = origin.y;
			_17170 = exact_taps_16993;
			float3 _17172 = F__br_vsample(_17167, _17168, _17169, _17170);
			float3 _17174 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _17172;
			float3 _17175 = sum_17155 + _17174;
			sum_17155 = _17175;
			float _17176 = o12 * dy_17144;
			float _17177 = uv_y_17141 + _17176;
			int _17178;
			float _17179;
			int _17180;
			bool _17181;
			_17178 = col_17126;
			_17179 = _17177;
			_17180 = origin.y;
			_17181 = exact_taps_16993;
			float3 _17183 = F__br_vsample(_17178, _17179, _17180, _17181);
			float3 _17185 = w12_17102.xxx * _17183;
			float3 _17186 = sum_17155 + _17185;
			sum_17155 = _17186;
			float _17187 = o34 * dy_17144;
			float _17188 = uv_y_17141 + _17187;
			int _17189;
			float _17190;
			int _17191;
			bool _17192;
			_17189 = col_17126;
			_17190 = _17188;
			_17191 = origin.y;
			_17192 = exact_taps_16993;
			float3 _17194 = F__br_vsample(_17189, _17190, _17191, _17192);
			float3 _17196 = w34_17104.xxx * _17194;
			float3 _17197 = sum_17155 + _17196;
			sum_17155 = _17197;
			float3 _17199 = sum_17155 * weight_sum_inv_17100.xxx;
			float4 _17204 = float4(_17199.x, _17199.y, _17199.z, 1.00000000e+00);
			float _17205 = F__get_intermediate_gamma();
			float4 _17206;
			float _17207;
			_17206 = _17204;
			_17207 = _17205;
			float4 _17208 = F__encode_output(_17206, _17207);
			float4 _17209;
			bool _17210;
			_17209 = _17208;
			_17210 = exact_taps_16993;
			float4 _17211 = F__leanCode16(_17209, _17210);
			V__vertical[j_17113] = _17211.xyz;
		}
		uint _17122 = j_17113 + 512u;
		j_17113 = _17122;
	}
	GroupMemoryBarrierWithGroupSync();
	bool _17219 = pixel.x >= 1440u;
	bool _17222 = pixel.y >= 1080u;
	bool _17223 = _17219 || _17222;
	if (_17223)
	{
		return;
	}
	float2 _17226 = ((float2)pixel.xy) + float2(5.00000000e-01, 5.00000000e-01);
	float2 _17228 = _17226 / float2(1.44000000e+03, 1.08000000e+03);
	float2 uv_17229 = _17228;
	float _17231 = rcp(1.44000000e+03);
	float dx_17232 = _17231;
	int row_17234 = ((int)local.y);
	float _17235 = o34 * dx_17232;
	float _17237 = uv_17229.x - _17235;
	float _17238;
	int _17239;
	int _17240;
	bool _17241;
	_17238 = _17237;
	_17239 = row_17234;
	_17240 = origin.x;
	_17241 = exact_taps_16993;
	float3 _17243 = F__vert_hsample(_17238, _17239, _17240, _17241);
	float3 _17245 = w34_17104.xxx * _17243;
	float3 blurred = _17245;
	float _17247 = o12 * dx_17232;
	float _17249 = uv_17229.x - _17247;
	float _17250;
	int _17251;
	int _17252;
	bool _17253;
	_17250 = _17249;
	_17251 = row_17234;
	_17252 = origin.x;
	_17253 = exact_taps_16993;
	float3 _17255 = F__vert_hsample(_17250, _17251, _17252, _17253);
	float3 _17257 = w12_17102.xxx * _17255;
	float3 _17258 = blurred + _17257;
	blurred = _17258;
	float _17259;
	int _17260;
	int _17261;
	bool _17262;
	_17259 = uv_17229.x;
	_17260 = row_17234;
	_17261 = origin.x;
	_17262 = exact_taps_16993;
	float3 _17265 = F__vert_hsample(_17259, _17260, _17261, _17262);
	float3 _17267 = float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00) * _17265;
	float3 _17268 = blurred + _17267;
	blurred = _17268;
	float _17269 = o12 * dx_17232;
	float _17271 = uv_17229.x + _17269;
	float _17272;
	int _17273;
	int _17274;
	bool _17275;
	_17272 = _17271;
	_17273 = row_17234;
	_17274 = origin.x;
	_17275 = exact_taps_16993;
	float3 _17277 = F__vert_hsample(_17272, _17273, _17274, _17275);
	float3 _17279 = w12_17102.xxx * _17277;
	float3 _17280 = blurred + _17279;
	blurred = _17280;
	float _17281 = o34 * dx_17232;
	float _17283 = uv_17229.x + _17281;
	float _17284;
	int _17285;
	int _17286;
	bool _17287;
	_17284 = _17283;
	_17285 = row_17234;
	_17286 = origin.x;
	_17287 = exact_taps_16993;
	float3 _17289 = F__vert_hsample(_17284, _17285, _17286, _17287);
	float3 _17291 = w34_17104.xxx * _17289;
	float3 _17292 = blurred + _17291;
	blurred = _17292;
	float3 _17294 = blurred * weight_sum_inv_17100.xxx;
	blurred = _17294;
	uint _17297 = local.y * 32u;
	uint _17299 = _17297 + local.x;
	float _17300 = F__get_intermediate_gamma();
	float3 _17303 = pow(V__m_tile[_17299], _17300.xxx);
	float3 intensity_17304 = _17303;
	uint _17307 = local.y + 4u;
	uint _17309 = _17307 * 40u;
	uint _17311 = _17309 + local.x;
	uint _17313 = _17311 + 4u;
	float3 _17316 = V__br_tile[_17313] / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
	float _17317 = F__get_intermediate_gamma();
	float3 _17319 = pow(_17316, _17317.xxx);
	float3 bright = _17319;
	float3 _17321 = intensity_17304 - bright;
	float3 _17322 = _17321 + blurred;
	float _17323 = F__get_mask_amplify();
	float3 _17325 = _17322 * _17323.xxx;
	float3 _17327 = _17325 * float3(2.00000000e+00, 2.00000000e+00, 2.00000000e+00);
	float3 _17329 = _17327 * V__levels_contrast.xxx;
	float3 phosphor = _17329;
	float _17331 = F__get_intermediate_gamma();
	float2 _17332;
	float _17333;
	_17332 = uv_17229;
	_17333 = _17331;
	float4 _17334 = F__tex2Dlod_linearize(V__samplerBlurHorizontal, _17332, _17333);
	float3 raw_diffusion = _17334.xyz;
	float _17338 = dot(raw_diffusion, float3(1.00000000e+00, 1.00000000e+00, 1.00000000e+00));
	float _17340 = _17338 / 3.00000000e+00;
	float3 halation_17342 = _17340.xxx;
	float3 _17344 = lerp(raw_diffusion, halation_17342, V__halation_weight.xxx);
	float3 _17346 = V__levels_contrast.xxx * _17344;
	float3 diffusion = _17346;
	float3 _17349 = lerp(phosphor, diffusion, V__diffusion_weight.xxx);
	float4 _17354 = float4(_17349.x, _17349.y, _17349.z, 1.00000000e+00);
	float _17355 = F__get_intermediate_gamma();
	float4 _17356;
	float _17357;
	_17356 = _17354;
	_17357 = _17355;
	float4 _17358 = F__encode_output(_17356, _17357);
	float4 composite = _17358;
	bool _17363 = !exact_taps_16993;
	if (_17363)
	{
		float2 _17365 = uv_17229 - float2(5.00000000e-01, 5.00000000e-01);
		float2 _17366 = F__get_geom_overscan_vector();
		float2 _17367 = _17365 / _17366;
		float2 _17369 = _17367 + float2(5.00000000e-01, 5.00000000e-01);
		float2 video_uv_17370 = _17369;
		float _17371;
		_17371 = 1.33333337e+00;
		float2 _17373 = F__get_aspect_vector(_17371);
		float2 _17374;
		float2 _17375;
		_17374 = video_uv_17370;
		_17375 = _17373;
		float _17376 = F__get_border_dim_factor(_17374, _17375);
		float border_dim = _17376;
		float4 _17378;
		_17378 = composite;
		float4 _17379 = F__leanCode16Fast(_17378);
		float3 _17382 = _17379.xyz / float3(6.55350000e+04, 6.55350000e+04, 6.55350000e+04);
		float _17383 = F__get_intermediate_gamma();
		float3 _17385 = pow(_17382, _17383.xxx);
		float3 _17387 = _17385 * border_dim.xxx;
		float3 shown = _17387;
		int2 _17391 = ((int2)pixel.xy) + int2(240, 0);
		float4 _17396 = float4(shown.x, shown.y, shown.z, 1.00000000e+00);
		float _17397 = F__get_output_gamma();
		float4 _17398;
		float _17399;
		_17398 = _17396;
		_17399 = _17397;
		float4 _17400 = F__encode_output(_17398, _17399);
		float4 _17401;
		_17401 = _17400;
		float4 _17402 = F__leanUNorm16(_17401);
		V__final_store[_17391] = _17402;
		return;
	}
	V__bloom_store[((int2)pixel.xy)] = composite;
	return;
}
void F__leanFinalPS(
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
	bool _17420 = F__leanFusedActive();
	bool _17421 = !_17420;
	bool _17422 = F__leanStraightOutput();
	bool _17423 = !_17422;
	bool _17424 = _17421 || _17423;
	if (_17424)
	{
		float4 _17425;
		float2 _17426;
		float2 _17427;
		float4 _17428;
		float3 _17429;
		float3 _17430;
		float3 _17431;
		float3 _17432;
		float4 _17433;
		_17425 = pos;
		_17426 = uv;
		_17427 = output_size_inv;
		_17428 = aspect_overscan;
		_17429 = eye;
		_17430 = row0;
		_17431 = row1;
		_17432 = row2;
		F__leanOutputPS(_17425, _17426, _17427, _17428, _17429, _17430, _17431, _17432, _17433);
		color = _17433;
	}
	else
	{
		bool _17440 = uv.x < 1.25000000e-01;
		bool _17443 = uv.x > 8.75000000e-01;
		bool _17444 = _17440 || _17443;
		bool _17447 = uv.y < 0.00000000e+00;
		bool _17448 = _17444 || _17447;
		bool _17451 = uv.y > 1.00000000e+00;
		bool _17452 = _17448 || _17451;
		if (_17452)
		{
			color = float4(0.00000000e+00, 0.00000000e+00, 0.00000000e+00, 1.00000000e+00);
		}
		else
		{
			float4 _17455 = V__samplerFinal.t.Load(int3(((int2)pos.xy), 0));
			color = _17455;
		}
	}
	return;
}
void F__lean_bloom(
	in uint3 group : SV_GROUPID,
	in uint3 local : SV_GROUPTHREADID,
	in uint3 pixel : SV_DISPATCHTHREADID)
{
	bool _17464 = F__leanFusedActive();
	if (_17464)
	{
		uint3 _17465;
		uint3 _17466;
		uint3 _17467;
		_17465 = group;
		_17466 = local;
		_17467 = pixel;
		F__fused_bloom_body(_17465, _17466, _17467);
	}
	return;
}
[numthreads(32, 16, 1)]
void E__lean_bloom_32_16_1(
	in uint3 group : SV_GROUPID,
	in uint3 local : SV_GROUPTHREADID,
	in uint3 pixel : SV_DISPATCHTHREADID)
{
	F__lean_bloom(group, local, pixel);
	return;
}
