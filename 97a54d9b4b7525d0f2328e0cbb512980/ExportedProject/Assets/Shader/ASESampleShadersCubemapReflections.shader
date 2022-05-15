Shader "ASESampleShaders/CubemapReflections" {
	Properties {
		_Float0 ("Float 0", Range(0, 1)) = 0.5
		_Albedo ("Albedo", 2D) = "white" {}
		_Normals ("Normals", 2D) = "bump" {}
		_Cubemap ("Cubemap", Cube) = "white" {}
		_Metallic ("Metallic", 2D) = "white" {}
		[HideInInspector] _texcoord ("", 2D) = "white" {}
		[HideInInspector] __dirty ("", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Diffuse"
	//CustomEditor "ASEMaterialInspector"
}