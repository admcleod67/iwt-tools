#tag WebContainerControl
Begin WebContainer TaxonomySearchContainer
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
   Begin WebButton SearchButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Search"
      ControlID       =   ""
      Default         =   True
      Enabled         =   False
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   716
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
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
      TabIndex        =   1
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
   Begin WebProgressWheel SearchProgressWheel
      Colorize        =   False
      ControlID       =   ""
      Enabled         =   True
      Height          =   40
      Index           =   -2147483648
      Indicator       =   0
      Left            =   398
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      SVGColor        =   &c00000000
      SVGData         =   ""
      TabIndex        =   2
      Tooltip         =   ""
      Top             =   351
      Visible         =   True
      Width           =   40
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
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   3
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   557
      _mPanelIndex    =   -1
   End
   Begin WebListBox SearchHistoryList
      ColumnCount     =   3
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   352
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "Site	Terms	Timestamp"
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
      Top             =   132
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
   Begin URLConnection FormConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin WebPopupMenu SitePopupMenu
      ControlID       =   ""
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   151
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      RowCount        =   0
      Scope           =   0
      SelectedRowIndex=   0
      SelectedRowText =   ""
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   557
      _mPanelIndex    =   -1
   End
   Begin URLConnection HistoryConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
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
      Tooltip         =   ""
      Top             =   492
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog DeleteMessageDialog
      ControlID       =   ""
      Enabled         =   True
      Explanation     =   ""
      Index           =   -2147483648
      Indicator       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Message         =   ""
      Scope           =   0
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
      TabPanelIndex   =   0
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Closed()
		  If resultsContainer <> Nil Then
		    resultsContainer.Close
		    resultsContainer = Nil
		  End If
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  sessionID = Session.Identifier
		  
		  FormConnection.Send("GET", App.ServiceBaseURL + "/taxonomy/sites")
		  HistoryConnection.Send("GET", App.ServiceBaseURL + "/taxonomy/searches")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CloseViews()
		  If resultsContainer <> Nil Then
		    resultsContainer.Visible = False
		    resultsContainer.Close
		    resultsContainer = Nil
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteTaxonomySearch(row As Integer)
		  Var id As Integer = SearchHistoryList.RowTagAt(row)
		  DeleteConnection.Send("DELETE", App.ServiceBaseURL + "/taxonomy/search/" + id.ToString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableControls()
		  SearchButton.Enabled = False
		  
		  SearchTermsTextField.Enabled = False
		  SitePopupMenu.Enabled = False
		  
		  SearchHistoryList.Enabled = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableControls()
		  SetButtonState
		  
		  SearchTermsTextField.Enabled = True
		  SitePopupMenu.Enabled = True
		  
		  SearchHistoryList.Enabled = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenTaxonomyResults(id As Integer)
		  resultsContainer = New TaxonomyResultsContainer(id)
		  
		  Self.Page.MinimumHeight = resultsContainer.Height + 40
		  Self.Page.MinimumWidth = resultsContainer.Width + 288
		  
		  resultsContainer.LockLeft = True
		  resultsContainer.LockTop = True
		  resultsContainer.LockRight = True
		  resultsContainer.LockBottom = True
		  
		  resultsContainer.EmbedWithin(Self.Page, 288, 20, Self.Page.Width - 288, Self.Page.Height - 20)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshSearchList()
		  HistoryConnection.Send("GET", App.ServiceBaseURL + "/taxonomy/searches")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonState()
		  SearchButton.Enabled = Not (SearchTermsTextField.Text.IsEmpty Or SitePopupMenu.SelectedRowValue.IsEmpty)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		resultsContainer As TaxonomyResultsContainer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private sessionID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events SearchButton
	#tag Event
		Sub Pressed()
		  Var serviceURL As ServiceURL = New ServiceURL(App.ServiceBaseURL)
		  serviceURL.Path = "/taxonomy/search"
		  serviceURL.SearchTerms = SearchTermsTextField.Text
		  serviceURL.SiteName = SitePopupMenu.SelectedRowValue
		  
		  DisableControls
		  SearchProgressWheel.Visible = True
		  
		  SearchConnection.Send("POST", serviceURL.ToString, 240)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchTermsTextField
	#tag Event
		Sub TextChanged()
		  SetButtonState
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchHistoryList
	#tag Event
		Sub DoublePressed(row As Integer, column As Integer)
		  If SearchHistoryList.Enabled Then
		    OpenTaxonomyResults(Me.RowTagAt(row))
		    Self.Visible = False
		  End If
		  
		  
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
		  
		  HistoryConnection.Send("GET", App.ServiceBaseURL + "/taxonomy/searches")
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  EnableControls
		  SearchProgressWheel.Visible = False
		  
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
#tag Events FormConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var sites() As Variant = ParseJSON(content)
		  
		  For Each site As Dictionary In sites
		    Var name As String = site.Value("name")
		    SitePopupMenu.AddRow(name)
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  SetButtonState
		  SearchProgressWheel.Visible = False
		  
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
#tag Events SitePopupMenu
	#tag Event
		Sub Opening()
		  Me.Style.BorderColor = Color.RGB(207, 212, 217)
		  Me.Style.BorderThickness = 1
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  SetButtonState
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HistoryConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var searches() As Variant = ParseJSON(content)
		  
		  SearchHistoryList.RemoveAllRows
		  
		  For Each search As Dictionary In searches
		    Var id As Integer = search.Value("id")
		    
		    Var site As Dictionary = search.Value("taxonomySite")
		    Var countryName As String
		    
		    SearchHistoryList.AddRow(site.Value("name"), search.Value("terms"), search.Value("timestamp"))
		    SearchHistoryList.RowTagAt(SearchHistoryList.LastAddedRowIndex) = id
		  Next
		  
		  EnableControls
		  SearchProgressWheel.Visible = False
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  EnableControls
		  SearchProgressWheel.Visible = False
		  
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
		  
		  Me.Message = "Do you want to delete the selected taxonomy search?"
		  Me.Explanation = "If you do, the taxonomy search will be removed permanently. "
		End Sub
	#tag EndEvent
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Select Case button
		  Case Me.ActionButton
		    DeleteTaxonomySearch(SearchHistoryList.SelectedRowIndex)
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
		  RefreshSearchList
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
