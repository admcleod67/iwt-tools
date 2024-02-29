#tag Class
Protected Class ItemImage
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(json As String)
		  FromJSON(json)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FromJSON(json As String)
		  Var response As Dictionary = ParseJSON(json)
		  
		  Var header As Dictionary = response.Value("headers")
		  Format = header.Value("Content-Type")
		  
		  Data = response.Value("body")
		  Type = response.Value("type")
		  
		  Hash = EncodeHex(MD5(Data))
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsEmpty() As Boolean
		  Return Data.IsEmpty
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToPicture() As Picture
		  Var imageData As String
		  
		  If Type = "b64_binary" Then
		    imageData = DecodeBase64(Data)
		  Else
		    imageData = Data
		  End If
		  
		  Var data As MemoryBlock = imageData
		  Var picture As Picture = Picture.FromData(data)
		  
		  Return picture
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Data As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Format As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Hash As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Type As String
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
			Name="Data"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Format"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hash"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
