#tag DesktopWindow
Begin DesktopWindow SearchWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   690
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   1019234303
   MenuBarVisible  =   True
   MinimumHeight   =   256
   MinimumWidth    =   512
   Resizeable      =   True
   Title           =   "Site Search"
   Type            =   0
   Visible         =   True
   Width           =   946
   Begin DesktopLabel SearchTermsLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Search Terms"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopTextField SearchTermsField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   702
   End
   Begin DesktopPopupMenu SiteSelectionMenu
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   702
   End
   Begin DesktopCheckBox GeolocationCheckBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Geolocation"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   100
   End
   Begin DesktopCheckBox StealthProxyCheckBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Stealth Proxy"
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   244
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   False
      VisualState     =   0
      Width           =   110
   End
   Begin DesktopCheckBox RetryCheckBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Retry"
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   366
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   False
      VisualState     =   0
      Width           =   110
   End
   Begin DesktopPopupMenu CountrySelectionMenu
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialValue    =   ""
      Italic          =   False
      Left            =   132
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   116
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   702
   End
   Begin DesktopButton SearchButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Search"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   846
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopLabel SearchHistoryLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Search History"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   148
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   192
   End
   Begin DesktopListBox SearchHistoryList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   5
      ColumnWidths    =   "20%,20%,20%,20%,20%"
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   True
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   458
      Index           =   -2147483648
      InitialValue    =   "Site	Search Terms	Geolocation	Timestamp	Results"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   180
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   906
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      Begin DesktopProgressWheel SearchProgressWheel
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   True
         Height          =   40
         Index           =   -2147483648
         InitialParent   =   "SearchHistoryList"
         Left            =   441
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   391
         Transparent     =   False
         Visible         =   False
         Width           =   40
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
   End
   Begin DesktopLabel SiteNameLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Site Name"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopLabel CountryLabel
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Country"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   116
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin URLConnection WebConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopButton DeleteButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Delete"
      Default         =   False
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   650
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Closing()
		  CloseDatabase
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  OpenDatabase
		  
		  App.apiToken =  ReadConfiguration
		  
		  ReadSiteList(SiteSelectionMenu)
		  ReadCountryList(CountrySelectionMenu)
		  ReadSearchList(SearchHistoryList)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  SearchProgressWheel.Top = SearchHistoryList.Top + (SearchHistoryList.Height / 2) - (SearchProgressWheel.Height / 2)
		  SearchProgressWheel.Left = SearchHistoryList.Left + (SearchHistoryList.Width / 2) - (SearchProgressWheel.Width / 2)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub DeleteSearchRow(index As Integer)
		  If index >= 0 Then
		    Var id As Integer = SearchHistoryList.RowTagAt(index)
		    If DeleteSearch(id, True) Then
		      SearchHistoryList.RemoveRowAt(index)
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DisableControls()
		  SearchTermsField.Enabled = False
		  SiteSelectionMenu.Enabled = False
		  
		  GeolocationCheckBox.Enabled = False
		  CountrySelectionMenu.Enabled = False
		  StealthProxyCheckBox.Enabled = False
		  
		  SearchButton.Enabled = False
		  
		  SearchHistoryList.Enabled = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnableControls()
		  SearchTermsField.Enabled = True
		  SiteSelectionMenu.Enabled = True
		  
		  GeolocationCheckBox.Enabled = True
		  SetCountrySelectMenuState
		  StealthProxyCheckBox.Enabled = True
		  
		  SetSearchButtonState
		  
		  SearchHistoryList.Enabled = True
		  SearchProgressWheel.Visible = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessLinkedData(linkedData() As Variant, searchId As Integer)
		  For Each item As String In linkedData
		    
		    Var re As New RegEx
		    re.SearchPattern = "<script(.*?)>((.|\n)*?)<\/script>"
		    
		    Var match As RegExMatch = re.Search(item)
		    
		    Do
		      If match <> Nil Then
		        Var type As String = match.SubExpressionString(1)
		        If type.Contains("application/ld+json") Then
		          Var json As String = match.SubExpressionString(2)
		          Var dict As Dictionary = ParseJSON(json)
		          If dict.Value("@type") = "Product" Then
		            SearchDatabase.CreateResult(ParseJSON(json), searchId)
		          End If
		        End If
		      End If
		      
		      match = re.Search
		    Loop Until match Is Nil
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessProducts(products() As Variant, searchId As Integer)
		  For Each product As Dictionary In products
		    SearchDatabase.CreateResult(product, searchId)
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessResults(content As String, searchId As Integer)
		  Try
		    
		    Var json As Dictionary = ParseJSON(content)
		    Var body As Dictionary = json.Value("body")
		    
		    If body.HasKey("products") Then
		      ProcessProducts(body.Value("products"), searchId)
		    End If
		    
		    If body.HasKey("linked_data") Then
		      ProcessLinkedData(body.Value("linked_data"), searchId)
		    End If
		    
		  Catch error As JSONException
		    
		    MessageBox("Unable to process the site response")
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshSearchHistory()
		  ReadSearchList(SearchHistoryList)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SendSearchRequest()
		  Var siteDetails As SearchDatabase.SiteDetails = SearchDatabase.ReadSiteByName(SiteSelectionMenu.SelectedRowValue)
		  
		  Var searchURL As SearchServiceURL = New SearchServiceURL(App.ServiceURL, App.apiToken)
		  
		  searchURL.SiteURL = siteDetails.URL
		  searchURL.SearchTerms = SearchTermsField.Text
		  searchURL.RichRespone = True
		  searchURL.StealthProxy = StealthProxyCheckBox.Value
		  searchURL.Scenario = siteDetails.Scenario
		  searchURL.ExtractRules = siteDetails.ExtractRules
		  searchURL.PremiumProxy = GeolocationCheckBox.Value
		  
		  searchURL.CountryCode = SearchDatabase.LookupCountryCode(CountrySelectionMenu.SelectedRowValue)
		  
		  WebConnection.Send("GET", searchURL.ToString)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetCountrySelectMenuState()
		  CountrySelectionMenu.Enabled = GeolocationCheckBox.Value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetSearchButtonState()
		  SearchButton.Enabled = Not (SearchTermsField.Text.IsEmpty Or SiteSelectionMenu.SelectedRowValue.IsEmpty)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		retryCount As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events SearchTermsField
	#tag Event
		Sub TextChanged()
		  SearchButton.Enabled = Not (SearchTermsField.Text.IsEmpty Or SiteSelectionMenu.SelectedRowValue.IsEmpty)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SiteSelectionMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  SetSearchButtonState
		  
		  Var siteDetails As SearchDatabase.SiteDetails = SearchDatabase.ReadSiteByName(SiteSelectionMenu.SelectedRowValue)
		  Var countryId As Integer = siteDetails.DefaultCountryId
		  
		  If countryId = 0 Then
		    countryId = SearchDatabase.LookupCountryId("United States")
		  End If
		  
		  CountrySelectionMenu.SelectRowWithTag(countryId)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GeolocationCheckBox
	#tag Event
		Sub ValueChanged()
		  SetCountrySelectMenuState
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CountrySelectionMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  SetSearchButtonState
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchButton
	#tag Event
		Sub Pressed()
		  DisableControls
		  retryCount = 0
		  SendSearchRequest
		  SearchProgressWheel.Visible = True
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchHistoryList
	#tag Event
		Sub DoublePressed()
		  // Set the values in the Results List Window and display it
		  Var searchId As Integer
		  searchId = SearchHistoryList.RowTagAt(SearchHistoryList.SelectedRowIndex)
		  
		  Var row As DesktopListBoxRow
		  row = SearchHistoryList.RowAt(SearchHistoryList.SelectedRowIndex)
		  
		  Var siteName As String
		  siteName = row.CellTextAt(0)
		  
		  Var searchTerms As String
		  searchTerms = row.CellTextAt(1)
		  
		  Var view As New SearchResultsWindow(searchId, siteName, searchTerms)
		  view.ShowModal
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  If Me.SelectedRowIndex >= 0 Then
		    DeleteButton.Enabled = True
		  Else
		    DeleteButton.Enabled = False
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WebConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  If HTTPStatus <> 200 Then
		    
		    If retryCount < 3 And RetryCheckBox.Value Then
		      retryCount = retryCount + 1
		      SendSearchRequest
		    Else
		      MessageBox(HTTPStatus.ToString + content)
		      EnableControls
		    End If
		    
		    Return
		  End If
		  
		  Var siteId As Integer
		  siteId = SiteSelectionMenu.RowTagAt(SiteSelectionMenu.SelectedRowIndex)
		  
		  Var countryId As Integer
		  If GeolocationCheckBox.Value Then
		    countryId = CountrySelectionMenu.RowTagAt(CountrySelectionMenu.SelectedRowIndex)
		  End If
		  
		  Var searchId As Integer = SearchDatabase.CreateSearch(siteId, SearchTermsField.Text, countryId)
		  ProcessResults(content, searchId)
		  
		  EnableControls
		  SearchDatabase.ReadSearchList(SearchHistoryList)
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  If retryCount < 3 And RetryCheckBox.Value Then
		    retryCount = retryCount + 1
		    SendSearchRequest
		  Else
		    SearchProgressWheel.Visible = False
		    MessageBox(e.Message)
		    EnableControls
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteButton
	#tag Event
		Sub Pressed()
		  Var dialog As New MessageDialog
		  
		  dialog.IconType = MessageDialog.IconTypes.Caution
		  dialog.ActionButton.Caption = "Delete"
		  dialog.CancelButton.Visible = True
		  dialog.AlternateActionButton.Visible = True
		  dialog.AlternateActionButton.Caption = "Don't Delete"
		  
		  dialog.Message = "Do you want to delete the selected search history"
		  dialog.Explanation = "If you do, it will be removed permanently. "
		  
		  Var button As MessageDialogButton = dialog.ShowModal
		  
		  Select Case button
		  Case dialog.ActionButton
		    DeleteSearchRow(SearchHistoryList.SelectedRowIndex)
		  Case dialog.AlternateActionButton
		    ' User pressed Don't Delete
		  Case dialog.CancelButton
		    ' User pressed Cancel
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
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
		Name="Interfaces"
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
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="retryCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
