#tag WebContainerControl
Begin WebContainer TaxonomyResultsContainer
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   550
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   836
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mName          =   ""
   _mPanelIndex    =   -1
   Begin WebLabel SearchTermsLabel
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   0
      Text            =   "Search Terms"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Underline       =   False
      Visible         =   True
      Width           =   123
      _mPanelIndex    =   -1
   End
   Begin WebTextField SearchTermsTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   38
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   151
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   1
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   665
      _mPanelIndex    =   -1
   End
   Begin WebLabel SiteNameLabel
      Bold            =   False
      ControlID       =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      Scope           =   0
      TabIndex        =   2
      Text            =   "Taxonomy"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   66
      Underline       =   False
      Visible         =   True
      Width           =   123
      _mPanelIndex    =   -1
   End
   Begin WebTextField SiteNameTextField
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   ""
      ControlID       =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   38
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   151
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   0
      TabIndex        =   3
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   665
      _mPanelIndex    =   -1
   End
   Begin WebListBox SearchResultsList
      ColumnCount     =   0
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   397
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "Name	Details"
      LastAddedRowIndex=   0
      LastColumnIndex =   0
      LastRowIndex    =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   ""
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   0
      Scope           =   0
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   4
      Tooltip         =   ""
      Top             =   133
      Visible         =   True
      Width           =   796
      _mPanelIndex    =   -1
   End
   Begin URLConnection SearchConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin URLConnection ResultsConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Closed()
		  If itemContainer <> Nil Then
		    itemContainer.Close
		    itemContainer = Nil
		  End If
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  sessionID = Session.Identifier
		  SearchConnection.Send("GET", App.ServiceBaseURL + "/taxonomy/search/" + searchId.ToString)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(searchId As Integer)
		  Super.Constructor
		  Me.searchId = searchId
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private extendedDetails As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		itemContainer As ItemContainer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private searchId As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private sessionID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events SearchConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var json As Dictionary = ParseJSON(content)
		  
		  Var site As Dictionary = json.Value("taxonomySite")
		  
		  Var name As String = site.Value("name")
		  SiteNameTextField.Text = name
		  
		  extendedDetails = site.Value("extendedDetails")
		  
		  Var terms As String = json.Value("terms")
		  SearchTermsTextField.Text = terms
		  
		  ResultsConnection.Send("GET", App.ServiceBaseURL + "/taxonomy/search/" + searchId.ToString + "/results")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function AuthenticationRequested(realm As String, ByRef name As String, ByRef password As String) As Boolean
		  Var context As New WebSessionContext(sessionID)
		  name = Session.Username
		  password = Session.Password
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events ResultsConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var results() As Variant = ParseJSON(content)
		  
		  If extendedDetails Then
		    SearchResultsList.ColumnCount = 5
		    
		    SearchResultsList.HeaderAt(0) = "Scientific Name"
		    SearchResultsList.HeaderAt(1) = "Red List Status"
		    SearchResultsList.HeaderAt(2) = "Vernacular Name"
		    SearchResultsList.HeaderAt(3) = "Family"
		    SearchResultsList.HeaderAt(4) = "Order"
		  Else
		    SearchResultsList.ColumnCount = 2
		    
		    SearchResultsList.HeaderAt(0) = "Name"
		    SearchResultsList.HeaderAt(1) = "Details"
		  End If
		  
		  For Each result As Dictionary In results
		    Var id As Integer = result.Value("id")
		    
		    Var name As String = result.Value("name")
		    Var details As String = result.Value("details")
		    Var redListStatus As String = result.Value("redListStatus")
		    Var vernacularName As String = result.Value("vernacularName")
		    Var family As String = result.Value("family")
		    Var order As String = result.Value("taxonomyOrder")
		    
		    If extendedDetails Then
		      SearchResultsList.AddRow(name, redListStatus, vernacularName, family, order)
		    Else
		      SearchResultsList.AddRow(name, details)
		    End If
		    
		    SearchResultsList.RowTagAt(SearchResultsList.LastAddedRowIndex) = id
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function AuthenticationRequested(realm As String, ByRef name As String, ByRef password As String) As Boolean
		  Var context As New WebSessionContext(sessionID)
		  name = Session.Username
		  password = Session.Password
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
