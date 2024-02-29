#tag WebContainerControl
Begin WebContainer SearchResultsContainer
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   564
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
   Width           =   878
   _mDesignHeight  =   0
   _mDesignWidth   =   0
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
      Text            =   "Site Name"
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
      ColumnCount     =   3
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   365
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "Name	Seller Name	Timestamp"
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
      RowSelectionType=   1
      Scope           =   0
      SearchCriteria  =   ""
      SelectedRowColor=   &c0272D300
      SelectedRowIndex=   0
      TabIndex        =   4
      Tooltip         =   ""
      Top             =   133
      Visible         =   True
      Width           =   838
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
   Begin WebImageViewer CloseImageViewer
      ControlID       =   ""
      DisplayMode     =   3
      Enabled         =   True
      Height          =   24
      Image           =   0
      Index           =   -2147483648
      Indicator       =   0
      Left            =   834
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      SVGData         =   ""
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   0
      URL             =   ""
      Visible         =   False
      Width           =   24
      _mPanelIndex    =   -1
      _ProtectImage   =   False
   End
   Begin WebButton DeleteButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Delete"
      ControlID       =   ""
      Default         =   False
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   6
      TabStop         =   True
      Tooltip         =   ""
      Top             =   506
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog DeleteMessageDialog
      ControlID       =   ""
      Enabled         =   True
      Explanation     =   ""
      Index           =   -2147483648
      indicator       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Message         =   ""
      PanelIndex      =   0
      Scope           =   0
      TabIndex        =   7
      TabStop         =   True
      Title           =   ""
      Tooltip         =   ""
      _mPanelIndex    =   -1
   End
   Begin URLConnection DeleteConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
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
		  
		  SearchConnection.Send("GET", App.ServiceBaseURL + "/search/" + searchId.ToString)
		  ResultsConnection.Send("GET", App.ServiceBaseURL + "/search/" + searchId.ToString + "/results")
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(searchId As Integer)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From WebView
		  // Constructor() -- From WebUIControl
		  // Constructor() -- From WebControl
		  Super.Constructor
		  
		  Me.searchId = searchId
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteSearchResult(row As Integer)
		  Var id As Integer = SearchResultsList.RowTagAt(row)
		  DeleteConnection.Send("DELETE", App.ServiceBaseURL + "/result/" + id.ToString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableControls()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenItem(id As Integer)
		  itemContainer = New ItemContainer(id)
		  
		  Self.Page.MinimumHeight = itemContainer.Height + 40
		  Self.Page.MinimumWidth = itemContainer.Width + 288
		  
		  itemContainer.LockBottom = True
		  itemContainer.LockLeft = True
		  itemContainer.LockTop = True
		  itemContainer.LockRight = True
		  
		  itemContainer.EmbedWithin(Self.Page, 288, 20, Self.Page.Width - 288, Self.Height - 20)
		  itemContainer.SetParentContainer(Self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshResultsList()
		  ResultsConnection.Send("GET", App.ServiceBaseURL + "/search/" + searchId.ToString + "/results")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetParentContainer(parentContainer As WebContainer)
		  Self.parentContainer = parentContainer
		  CloseImageViewer.Visible = True
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		itemContainer As ItemContainer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private parentContainer As WebContainer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private searchId As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private sessionID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events SearchResultsList
	#tag Event
		Sub DoublePressed(row As Integer, column As Integer)
		  Self.Visible = False
		  OpenItem(Me.RowTagAt(row))
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  DeleteButton.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var json As Dictionary = ParseJSON(content)
		  
		  Var site As Dictionary = json.Value("site")
		  Var name As String = site.Value("name")
		  SiteNameTextField.Text = name
		  
		  Var terms As String = json.Value("terms")
		  SearchTermsTextField.Text = terms
		  
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
		  
		  SearchResultsList.RemoveAllRows
		  
		  Var results() As Variant = ParseJSON(content)
		  
		  For Each result As Dictionary In results
		    Var id As Integer = result.Value("id")
		    
		    Var name As String = result.Value("name")
		    Var sellerName As String = result.Value("sellerName")
		    Var timestamp As String = result.Value("timestamp")
		    
		    SearchResultsList.AddRow(name, sellerName, timestamp)
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
#tag Events CloseImageViewer
	#tag Event
		Sub Opening()
		  Var iconColor As Color = Color.Blue
		  Var icon As String = "x-circle"
		  Me.Picture = WebPicture.BootstrapIcon(icon, iconColor)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(x As Integer, y As Integer)
		  If parentContainer <> Nil Then
		    Self.Visible = False
		    parentContainer.Visible = True
		    Self.Close
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteButton
	#tag Event
		Sub Pressed()
		  DeleteMessageDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteMessageDialog
	#tag Event
		Sub Opening()
		  Me.Indicator = WebMessageDialog.Indicators.Warning
		  Me.ActionButton.Caption = "Delete"
		  Me.CancelButton.Visible = True
		  Me.AlternateActionButton.Visible = True
		  Me.AlternateActionButton.Caption = "Don't Delete"
		  
		  Me.Message = "Do you want to delete the selected result?"
		  Me.Explanation = "If you do, the result will be removed permanently. "
		End Sub
	#tag EndEvent
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Select Case button
		  Case Me.ActionButton
		    DeleteSearchResult(SearchResultsList.SelectedRowIndex)
		  Case Me.AlternateActionButton
		    ' User pressed Don't Delete
		  Case Me.CancelButton
		    ' User pressed Cancel
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  EnableControls
		  RefreshResultsList
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  EnableControls
		  'SearchProgressWheel.Visible = False
		  
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
