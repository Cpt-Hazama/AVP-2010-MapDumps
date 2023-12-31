//--------------------------------------------------------------------------------------
// File: Shader_models.fx
//
// make by TROLOLP
//--------------------------------------------------------------------------------------
Texture2D shaderTexture;
SamplerState SampleType;

cbuffer ConstantBuffer : register( b0 )
{
	matrix World;
	matrix View;
	matrix Projection;
}

struct PS_INPUT
{
	float4 Pos : SV_POSITION;
    float2 Tex : TEXCOORD0;
};

struct VS_INPUT
{
    float4 Pos : POSITION0;
	uint4 v1 : BLENDINDICES0;
	float4 v2 : BLENDWEIGHT0;
	float3 v3 : TANGENT0;
	float3 v4 : BINORMAL0;
	float3 v5 : NORMAL0;
	float4 Tex : TEXCOORD0;
	float v7 : TEXCOORD1;
};

////////////////////////////////////////////////////////////////////////////////
// Vertex Shader
////////////////////////////////////////////////////////////////////////////////
PS_INPUT VS(VS_INPUT input)
{
    PS_INPUT output;
    

    // Change the position vector to be 4 units for proper matrix calculations.
    input.Pos.w = 1.0f;

    // Calculate the position of the vertex against the world, view, and projection matrices.
    output.Pos = mul(input.Pos, World);
    output.Pos = mul(output.Pos, View);
    output.Pos = mul(output.Pos, Projection);
	
	// Store the texture coordinates for the pixel shader.
    output.Tex.xy = input.Tex.xy;

    
    return output;
}
////////////////////////////////////////////////////////////////////////////////
// Pixel Shader
////////////////////////////////////////////////////////////////////////////////
float4 PS(PS_INPUT input) : SV_TARGET
{
    float4 textureColor;


    // Sample the pixel color from the texture using the sampler at this texture coordinate location.
    textureColor = shaderTexture.Sample(SampleType, input.Tex);

    return textureColor;
}

