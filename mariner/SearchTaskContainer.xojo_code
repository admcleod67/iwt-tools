#tag WebContainerControl
Begin WebContainer SearchTaskContainer
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   578
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
   Width           =   890
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebTabPanel SearchTaskTabPanel
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBorder       =   True
      Height          =   354
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelCount      =   2
      Scope           =   0
      SelectedPanelIndex=   0
      TabDefinition   =   "History\rResults"
      TabIndex        =   9
      Tooltip         =   ""
      Top             =   204
      Visible         =   True
      Width           =   843
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebCheckbox ShowAllCheckbox
         Caption         =   "Show All"
         ControlID       =   ""
         Enabled         =   True
         Height          =   34
         Indeterminate   =   False
         Index           =   -2147483648
         Indicator       =   ""
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   "1"
         Parent          =   "SearchTaskTabPanel"
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   266
         Value           =   True
         Visible         =   True
         Width           =   119
         _mPanelIndex    =   -1
      End
      Begin WebListBox SearchResultsList
         ColumnCount     =   3
         ColumnWidths    =   ""
         ControlID       =   ""
         Enabled         =   True
         HasHeader       =   True
         Height          =   184
         HighlightSortedColumn=   True
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   "Name	Seller Name	Timestamp"
         LastAddedRowIndex=   0
         LastColumnIndex =   0
         LastRowIndex    =   0
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         NoRowsMessage   =   ""
         PanelIndex      =   "1"
         Parent          =   "SearchTaskTabPanel"
         ProcessingMessage=   ""
         RowCount        =   0
         RowSelectionType=   1
         Scope           =   0
         SearchCriteria  =   ""
         SelectedRowColor=   &c0272D300
         SelectedRowIndex=   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   308
         Visible         =   True
         Width           =   803
         _mPanelIndex    =   -1
      End
      Begin WebListBox SearchHistoryList
         ColumnCount     =   3
         ColumnWidths    =   ""
         ControlID       =   ""
         Enabled         =   True
         HasHeader       =   True
         Height          =   234
         HighlightSortedColumn=   True
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   "Site Name	Search Terms	Timestamp"
         LastAddedRowIndex=   0
         LastColumnIndex =   0
         LastRowIndex    =   0
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         NoRowsMessage   =   ""
         PanelIndex      =   "0"
         Parent          =   "SearchTaskTabPanel"
         ProcessingMessage=   ""
         RowCount        =   0
         RowSelectionType=   1
         Scope           =   0
         SearchCriteria  =   ""
         SelectedRowColor=   &c0272D300
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   258
         Visible         =   True
         Width           =   803
         _mPanelIndex    =   -1
      End
      Begin WebButton DeleteResultButton
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Delete"
         ControlID       =   ""
         Default         =   False
         Enabled         =   False
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   1
         Parent          =   "SearchTaskTabPanel"
         Scope           =   0
         TabIndex        =   11
         TabStop         =   True
         Tooltip         =   ""
         Top             =   500
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
      Begin WebButton DeleteSearchButton
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Delete"
         ControlID       =   ""
         Default         =   False
         Enabled         =   False
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "SearchTaskTabPanel"
         Scope           =   0
         TabIndex        =   13
         TabStop         =   True
         Tooltip         =   ""
         Top             =   500
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
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
   Begin URLConnection TaskConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin URLConnection HistoryConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin WebTextField CountryTextField
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
      TabIndex        =   5
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   112
      Visible         =   True
      Width           =   665
      _mPanelIndex    =   -1
   End
   Begin WebLabel CountryLabel
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
      TabIndex        =   6
      Text            =   "Country"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   112
      Underline       =   False
      Visible         =   True
      Width           =   123
      _mPanelIndex    =   -1
   End
   Begin WebLabel FrequencyLabel
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
      TabIndex        =   7
      Text            =   "Frequency"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   158
      Underline       =   False
      Visible         =   True
      Width           =   123
      _mPanelIndex    =   -1
   End
   Begin WebTextField FrequencyTextField
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
      TabIndex        =   8
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   158
      Visible         =   True
      Width           =   665
      _mPanelIndex    =   -1
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
      Left            =   846
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      SVGData         =   ""
      TabIndex        =   10
      Tooltip         =   ""
      Top             =   0
      URL             =   ""
      Visible         =   False
      Width           =   24
      _mPanelIndex    =   -1
      _ProtectImage   =   False
   End
   Begin WebMessageDialog DeleteResultDialog
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
      TabIndex        =   12
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
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
   End
   Begin WebMessageDialog DeleteSearchDialog
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
      TabIndex        =   14
      TabStop         =   True
      Title           =   ""
      Tooltip         =   ""
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Closed()
		  If resultsContainer <> Nil Then
		    resultsContainer.Visible = False
		    resultsContainer.Close
		    resultsContainer = Nil
		  End If
		  
		  If itemContainer <> Nil Then
		    itemContainer.Visible = False
		    itemContainer.Close
		    itemContainer = Nil
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  sessionID = Session.Identifier
		  
		  TaskConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString)
		  HistoryConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString + "/history")
		  ResultsConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString + "/results")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(searchTaskId As Integer)
		  Super.Constructor
		  Me.searchTaskId = searchTaskId
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteResult(row As Integer)
		  Var id As Integer = SearchResultsList.RowTagAt(row)
		  DeleteConnection.Send("DELETE", App.ServiceBaseURL + "/result/" + id.ToString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteSearch(row As Integer)
		  Var id As Integer = SearchHistoryList.RowTagAt(row)
		  DeleteConnection.Send("DELETE", App.ServiceBaseURL + "/search/" + id.ToString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableControls()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookupFrequency(days As Integer) As String
		  Select Case days
		  Case 1
		    Return "Daily"
		  Case 7
		    Return "Weekly"
		  Case 14
		    Return "Fortnightly"
		  Case 30
		    Return "Monthly"
		  Else
		    Return "Unknown"
		  End Select
		End Function
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
		Sub OpenSearchResults(id As Integer)
		  resultsContainer = New SearchResultsContainer(id)
		  
		  Self.Page.MinimumHeight = resultsContainer.Height + 40
		  Self.Page.MinimumWidth = resultsContainer.Width + 288
		  
		  resultsContainer.LockLeft = True
		  resultsContainer.LockTop = True
		  resultsContainer.LockRight = True
		  resultsContainer.LockBottom = True
		  
		  resultsContainer.EmbedWithin(Self.Page, 288, 20, Self.Page.Width - 288, Self.Page.Height - 20)
		  resultsContainer.SetParentContainer(Self)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshResultsList()
		  If ShowAllCheckbox.Value Then
		    ResultsConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString + "/results")
		  Else
		    ResultsConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString + "/results?all=false")
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshSearchList()
		  HistoryConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString + "/history")
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

	#tag Property, Flags = &h0
		resultsContainer As SearchResultsContainer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private searchTaskId As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private sessionID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events ShowAllCheckbox
	#tag Event
		Sub ValueChanged()
		  If Me.Value Then
		    ResultsConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString + "/results")
		  Else
		    ResultsConnection.Send("GET", App.ServiceBaseURL + "/search/task/" + searchTaskId.ToString + "/results?all=false")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchResultsList
	#tag Event
		Sub DoublePressed(row As Integer, column As Integer)
		  Self.Visible = False
		  OpenItem(Me.RowTagAt(row))
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  DeleteResultButton.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchHistoryList
	#tag Event
		Sub DoublePressed(row As Integer, column As Integer)
		  Self.Visible = False
		  OpenSearchResults(Me.RowTagAt(row))
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  DeleteSearchButton.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteResultButton
	#tag Event
		Sub Pressed()
		  DeleteResultDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteSearchButton
	#tag Event
		Sub Pressed()
		  DeleteSearchDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TaskConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var json As Dictionary = ParseJSON(content)
		  
		  Var terms As String = json.Value("terms")
		  SearchTermsTextField.Text = terms
		  
		  Var site As Dictionary = json.Value("site")
		  SiteNameTextField.Text = site.Value("name")
		  
		  Var country As Dictionary = json.Value("country")
		  //CountryTextField.Text = country.Value("name")
		  
		  Var frequency As Integer = json.Value("frequency")
		  FrequencyTextField.Text = LookupFrequency(frequency)
		  
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
#tag Events HistoryConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var searches() As Variant = ParseJSON(content)
		  
		  SearchHistoryList.RemoveAllRows
		  
		  For Each search As Dictionary In searches
		    Var id As Integer = search.Value("id")
		    
		    Var site As Dictionary = search.Value("site")
		    
		    SearchHistoryList.AddRow(site.Value("name"), search.Value("terms"), search.Value("timestamp"))
		    SearchHistoryList.RowTagAt(SearchHistoryList.LastAddedRowIndex) = id
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
#tag Events ResultsConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var results() As Variant = ParseJSON(content)
		  
		  SearchResultsList.RemoveAllRows
		  
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
#tag Events DeleteResultDialog
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
		    DeleteResult(SearchResultsList.SelectedRowIndex)
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
#tag Events DeleteSearchDialog
	#tag Event
		Sub Opening()
		  Me.Indicator = WebMessageDialog.Indicators.Warning
		  Me.ActionButton.Caption = "Delete"
		  Me.CancelButton.Visible = True
		  Me.AlternateActionButton.Visible = True
		  Me.AlternateActionButton.Caption = "Don't Delete"
		  
		  Me.Message = "Do you want to delete the selected search"
		  Me.Explanation = "If you do, the search will be removed permanently. "
		End Sub
	#tag EndEvent
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Select Case button
		  Case Me.ActionButton
		    DeleteSearch(SearchHistoryList.SelectedRowIndex)
		  Case Me.AlternateActionButton
		    ' User pressed Don't Delete
		  Case Me.CancelButton
		    ' User pressed Cancel
		  End Select
		End Sub
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
