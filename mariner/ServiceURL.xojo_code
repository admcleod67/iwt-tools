#tag Class
Protected Class ServiceURL
	#tag Method, Flags = &h0
		Sub Constructor(serviceURL As String)
		  Self.BaseURL = serviceURL
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Var url As String = BaseURL + Path
		  
		  url = url + "?terms=" + EncodeURLComponent(SearchTerms)
		  
		  If Not Name.IsEmpty Then
		    url = url +  "&name=" + EncodeURLComponent(Name)
		  End If
		  
		  If Not SellerName.IsEmpty Then
		    url = url +  "&seller=" + EncodeURLComponent(SellerName)
		  End If
		  
		  If Not SiteName.IsEmpty Then
		    url = url +  "&site=" + EncodeURLComponent(SiteName)
		  End If
		  
		  If Not CountryCode.IsEmpty Then
		    url = url + "&country=" + EncodeURLComponent(CountryCode)
		  End If
		  
		  If Not Frequency.IsEmpty Then
		    url = url +  "&frequency=" + EncodeURLComponent(Frequency)
		  End If
		  
		  If Not Active.IsEmpty Then
		    url = url + "&active=" + EncodeURLComponent(active)
		  End If
		  
		  Return url
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Active As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private BaseURL As String = "http://localhost:8081"
	#tag EndProperty

	#tag Property, Flags = &h0
		CountryCode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Frequency As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Path As String = "/"
	#tag EndProperty

	#tag Property, Flags = &h0
		SearchTerms As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SellerName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SiteName As String
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
			Name="SiteName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Path"
			Visible=false
			Group="Behavior"
			InitialValue="/"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SellerName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Frequency"
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
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
