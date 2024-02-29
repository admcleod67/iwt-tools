#tag Class
Protected Class SearchServiceURL
	#tag Method, Flags = &h0
		Sub Constructor(serviceURL As String, token As String)
		  Self.serviceURL = serviceURL
		  Self.Token = token
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Var siteURL As String = SiteURL.Replace("${searchTerms}", searchTerms)
		  siteURL = EncodeURLComponent(siteURL)
		  
		  Var options As String = "&block_resources=false"
		  
		  If Not RenderJS Then
		    options = options + "&render_js=false"
		  End If
		  
		  If StealthProxy Then
		    options = options + "&stealth_proxy=true"
		  End If
		  
		  If RichRespone Then
		    options = options + "&json_response=true"
		  End If
		  
		  Var searchURL As String = serviceURL + "?api_key=" + Token + "&url="+ siteURL + options
		  
		  If Not Scenario.IsEmpty Then
		    Var scenario As String = Scenario.Replace("${searchTerms}", searchTerms)
		    searchURL = searchURL  + "&js_scenario=" + EncodeURLComponent(scenario)
		  End If
		  
		  If Not ExtractRules.IsEmpty Then
		    searchURL = searchURL + "&extract_rules=" + EncodeURLComponent(ExtractRules)
		  End If
		  
		  If PremiumProxy Then
		    If Not CountryCode.IsEmpty Then
		      searchURL = searchURL + "&premium_proxy=true&country_code=" + EncodeURLComponent(countryCode)
		    End If
		  End If
		  
		  Return searchURL
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CountryCode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ExtractRules As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PremiumProxy As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		RenderJS As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		RichRespone As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Scenario As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SearchTerms As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private serviceURL As String = "https://app.scrapingbee.com/api/v1/?api_key="
	#tag EndProperty

	#tag Property, Flags = &h0
		SiteURL As String
	#tag EndProperty

	#tag Property, Flags = &h0
		StealthProxy As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Token As String
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SearchTerms"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scenario"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CountryCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExtractRules"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PremiumProxy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SiteURL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StealthProxy"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RenderJS"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RichRespone"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
