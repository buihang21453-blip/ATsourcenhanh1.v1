struct PS_INPUT
{
    float4 Pos : POSITION;
    float4 ShadeColor : COLOR;
};

void atPS( PS_INPUT input, out float4 colorOut : SV_Target )
{
    colorOut = float4(input.ShadeColor);
}
