#tag Class
Protected Class App
Inherits WebApplication
	#tag Property, Flags = &h0
		ServiceBaseURL As String = "http://localhost:8081"
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="ServiceBaseURL"
			Visible=false
			Group="Behavior"
			InitialValue="http://localhost:8081"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
