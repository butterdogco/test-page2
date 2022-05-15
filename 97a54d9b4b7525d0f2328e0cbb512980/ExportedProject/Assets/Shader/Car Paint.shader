Shader "Car Paint" {
	Properties {
		_MainTex ("Texture", 2D) = "white" {}
		_Cube ("Cubemap", Cube) = "" {}
		_RimPower ("Rim Power", Range(0.1, 10)) = 3
		_RimColor ("Rim Color", Vector) = (0.65,0.85,0.85,1)
		_Color ("Main Color", Vector) = (1,1,1,1)
		_ColorBoost ("Color Boost", Range(0, 5)) = 1.35
		_BlendAmount ("Blend Amount", Range(0, 1)) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
}