#tag WebContainerControl
Begin WebContainer MonitorContainer
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
   _mPanelIndex    =   -1
   Begin WebButton SaveButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Save"
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
      TabIndex        =   2
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
      TabIndex        =   13
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
      TabIndex        =   1
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   557
      _mPanelIndex    =   -1
   End
   Begin WebListBox SearchTaskList
      ColumnCount     =   6
      ColumnWidths    =   ""
      ControlID       =   ""
      Enabled         =   True
      HasHeader       =   True
      Height          =   209
      HighlightSortedColumn=   True
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "Site	Terms	Country	Last Search	Frequency	Active"
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
      TabIndex        =   12
      Tooltip         =   ""
      Top             =   275
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
      TabIndex        =   4
      Tooltip         =   ""
      Top             =   66
      Visible         =   True
      Width           =   557
      _mPanelIndex    =   -1
   End
   Begin WebCheckbox GeolocationCheckbox
      Caption         =   "Geolocation"
      ControlID       =   ""
      Enabled         =   False
      Height          =   34
      Indeterminate   =   False
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
      Scope           =   0
      TabIndex        =   5
      Tooltip         =   ""
      Top             =   112
      Value           =   False
      Visible         =   True
      Width           =   137
      _mPanelIndex    =   -1
   End
   Begin WebPopupMenu CountryPopupMenu
      ControlID       =   ""
      Enabled         =   False
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
      TabIndex        =   9
      Tooltip         =   ""
      Top             =   154
      Visible         =   True
      Width           =   557
      _mPanelIndex    =   -1
   End
   Begin URLConnection TaskListConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin WebPopupMenu FrequencyPopupMenu
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
      TabIndex        =   11
      Tooltip         =   ""
      Top             =   200
      Visible         =   True
      Width           =   557
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
      TabIndex        =   10
      Text            =   "Frequency"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   200
      Underline       =   False
      Visible         =   True
      Width           =   123
      _mPanelIndex    =   -1
   End
   Begin WebCheckbox ItemsCheckbox
      Caption         =   "Fetch Items"
      ControlID       =   ""
      Enabled         =   False
      Height          =   34
      Indeterminate   =   False
      Index           =   -2147483648
      Indicator       =   0
      Left            =   296
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   6
      Tooltip         =   ""
      Top             =   112
      Value           =   False
      Visible         =   True
      Width           =   137
      _mPanelIndex    =   -1
   End
   Begin WebCheckbox ImagesCheckbox
      Caption         =   "Fetch Images"
      ControlID       =   ""
      Enabled         =   False
      Height          =   34
      Indeterminate   =   False
      Index           =   -2147483648
      Indicator       =   0
      Left            =   441
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   7
      Tooltip         =   ""
      Top             =   112
      Value           =   False
      Visible         =   True
      Width           =   137
      _mPanelIndex    =   -1
   End
   Begin WebButton EditButton
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Edit"
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
      TabIndex        =   14
      Tooltip         =   ""
      Top             =   492
      Visible         =   True
      Width           =   100
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
      TabIndex        =   8
      Text            =   "Country"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   154
      Underline       =   False
      Visible         =   True
      Width           =   123
      _mPanelIndex    =   -1
   End
   Begin WebLabel SiteLabel
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
      TabIndex        =   3
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
      Left            =   128
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Scope           =   0
      TabIndex        =   15
      TabStop         =   True
      Tooltip         =   ""
      Top             =   492
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebMessageDialog DeleteDialog
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
      TabIndex        =   16
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
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Closed()
		  If taskContainer <> Nil Then
		    taskContainer.Close
		    taskContainer = Nil
		  End If
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  sessionID = Session.Identifier
		  
		  FormConnection.Send("GET", App.ServiceBaseURL + "/search/form")
		  TaskListConnection.Send("GET", App.ServiceBaseURL + "/search/tasks")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ClearForm()
		  SearchTermsTextField.Text = ""
		  SitePopupMenu.SelectedRowIndex = -1
		  GeolocationCheckbox.Value = False
		  CountryPopupMenu.SelectedRowIndex = -1
		  FrequencyPopupMenu.SelectedRowIndex = -1
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CloseViews()
		  If taskContainer <> Nil Then
		    taskContainer.Visible = False
		    taskContainer.Close
		    taskContainer = Nil
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DeleteSearchTask(row As Integer)
		  Var id As Integer = SearchTaskList.RowTagAt(row)
		  DeleteConnection.Send("DELETE", App.ServiceBaseURL + "/search/task/" + id.ToString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DisableControls()
		  SaveButton.Enabled = False
		  
		  SearchTermsTextField.Enabled = False
		  SitePopupMenu.Enabled = False
		  GeolocationCheckbox.Enabled = False
		  CountryPopupMenu.Enabled = False
		  FrequencyPopupMenu.Enabled = False
		  
		  SearchTaskList.Enabled = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableControls()
		  SetButtonState
		  
		  SearchTermsTextField.Enabled = True
		  SitePopupMenu.Enabled = True
		  GeolocationCheckbox.Enabled = True
		  CountryPopupMenu.Enabled = GeolocationCheckbox.Value
		  FrequencyPopupMenu.Enabled = True
		  
		  SearchTaskList.Enabled = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenSearchTask(id As Integer)
		  taskContainer = New SearchTaskContainer(id)
		  
		  Self.Page.MinimumHeight = taskContainer.Height + 40
		  Self.Page.MinimumWidth = taskContainer.Width + 288
		  
		  taskContainer.LockBottom = True
		  taskContainer.LockLeft = True
		  taskContainer.LockTop = True
		  taskContainer.LockRight = True
		  
		  taskContainer.EmbedWithin(Self.Page, 288, 20, Self.Page.Width - 288, Self.Height - 20)
		  taskContainer.SetParentContainer(Self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshSearchTaskList()
		  TaskListConnection.Send("GET", App.ServiceBaseURL + "/search/tasks")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonState()
		  SaveButton.Enabled = Not (SearchTermsTextField.Text.IsEmpty Or SitePopupMenu.SelectedRowValue.IsEmpty Or FrequencyPopupMenu.SelectedRowValue.IsEmpty)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateSearchTask(row As Integer, id As Integer, frequency As String, active As Boolean)
		  SearchTaskList.CellTextAt(row, 4) = frequency
		  SearchTaskList.CellTextAt(row, 5) = If (active, "Yes", "No")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private sessionID As String
	#tag EndProperty

	#tag Property, Flags = &h0
		taskContainer As SearchTaskContainer
	#tag EndProperty


#tag EndWindowCode

#tag Events SaveButton
	#tag Event
		Sub Pressed()
		  Var serviceURL As ServiceURL = New ServiceURL(App.ServiceBaseURL)
		  
		  serviceURL.Path = "/search/task"
		  serviceURL.SearchTerms = SearchTermsTextField.Text
		  serviceURL.SiteName = SitePopupMenu.SelectedRowValue
		  
		  If GeolocationCheckbox.Value Then
		    serviceURL.CountryCode = CountryPopupMenu.RowTagAt(CountryPopupMenu.SelectedRowIndex)
		  End If
		  
		  serviceURL.Frequency = FrequencyPopupMenu.SelectedRowValue
		  
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
#tag Events SearchTaskList
	#tag Event
		Sub DoublePressed(row As Integer, column As Integer)
		  If SearchTaskList.Enabled Then
		    Self.Visible = False
		    OpenSearchTask(Me.RowTagAt(row))
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  If Me.SelectedRowIndex >= 0 Then
		    EditButton.Enabled = True
		    DeleteButton.Enabled = True
		  Else
		    EditButton.Enabled = False
		    DeleteButton.Enabled = False
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  TaskListConnection.Send("GET", App.ServiceBaseURL + "/search/tasks")
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
		  
		  Var json As Dictionary = ParseJSON(content)
		  
		  Var sites() As Variant = json.Value("sites")
		  
		  For Each site As Dictionary In sites
		    Var name As String = site.Value("name")
		    SitePopupMenu.AddRow(name)
		  Next
		  
		  Var countries() As Variant = json.Value("countries")
		  
		  For Each country As Dictionary In countries
		    Var name As String = country.Value("name")
		    CountryPopupMenu.AddRow(name)
		  Next
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
#tag Events GeolocationCheckbox
	#tag Event
		Sub ValueChanged()
		  CountryPopupMenu.Enabled = GeolocationCheckbox.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CountryPopupMenu
	#tag Event
		Sub Opening()
		  Me.Style.BorderColor = Color.RGB(207, 212, 217)
		  Me.Style.BorderThickness = 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TaskListConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var searches() As Variant = ParseJSON(content)
		  
		  SearchTaskList.RemoveAllRows
		  
		  For Each search As Dictionary In searches
		    Var id As Integer = search.Value("id")
		    
		    Var site As Dictionary = search.Value("site")
		    Var country As Dictionary = search.Value("country")
		    Var frequencyDays As Integer = search.Value("frequency")
		    Var active As String = If (search.Value("active"), "Yes", "No")
		    
		    Var countryName As String
		    
		    If Not (country Is Nil) Then
		      countryName = country.Value("name")
		    End If
		    
		    Var frequency As String
		    
		    Select Case frequencyDays
		    Case 1
		      frequency = "Daily"
		    Case 7
		      frequency = "Weekly"
		    Case 14
		      frequency = "Fortnightly"
		    Case 30
		      frequency = "Monthly"
		    Else
		      frequency = "Unknown"
		    End Select
		    
		    SearchTaskList.AddRow(site.Value("name"), search.Value("terms"), countryName, search.Value("lastRun"), frequency, active)
		    SearchTaskList.RowTagAt(SearchTaskList.LastAddedRowIndex) = id
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
#tag Events FrequencyPopupMenu
	#tag Event
		Sub Opening()
		  Me.Style.BorderColor = Color.RGB(207, 212, 217)
		  Me.Style.BorderThickness = 1
		  
		  Var frequencies() As String = Array("Daily", "Weekly", "Fortnighly", "Monthly")
		  Me.AddAllRows(frequencies)
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  SetButtonState
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditButton
	#tag Event
		Sub Pressed()
		  Var row As Integer = SearchTaskList.SelectedRowIndex
		  
		  Var searchTaskNo As Integer = SearchTaskList.RowTagAt(row)
		  
		  Var site As String = SearchTaskList.CellTextAt(row, 0)
		  Var searchTerms As String = SearchTaskList.CellTextAt(row, 1)
		  Var country As String = SearchTaskList.CellTextAt(row, 2)
		  Var frequency As String = SearchTaskList.CellTextAt(row, 4)
		  Var active As Boolean = (SearchTaskList.CellTextAt(row, 5) = "Yes")
		  
		  Var dialog As New SearchTaskEditDialog
		  dialog.SetSearchTaskDetails(row, searchTaskNo, searchTerms, site, country, frequency, active, Self)
		  dialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteButton
	#tag Event
		Sub Pressed()
		  DeleteDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteDialog
	#tag Event
		Sub Opening()
		  Me.Indicator = WebMessageDialog.Indicators.Warning
		  Me.ActionButton.Caption = "Delete"
		  Me.CancelButton.Visible = True
		  Me.AlternateActionButton.Visible = True
		  Me.AlternateActionButton.Caption = "Don't Delete"
		  
		  Me.Message = "Do you want to delete the selected search task?"
		  Me.Explanation = "If you do, the search task will be removed permanently. "
		End Sub
	#tag EndEvent
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Select Case button
		  Case Me.ActionButton
		    DeleteSearchTask(SearchTaskList.SelectedRowIndex)
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
		  RefreshSearchTaskList
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
