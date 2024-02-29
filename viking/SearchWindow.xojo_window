#tag DesktopWindow
Begin DesktopWindow SearchWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   558
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   646828031
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Taxonomic Database Search"
   Type            =   0
   Visible         =   True
   Width           =   858
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
      TabStop         =   False
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
      Width           =   614
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
      Left            =   758
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin URLConnection WebConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin DesktopButton ExportButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Export"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   758
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   518
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopListBox ResultsListBox
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   True
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   422
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Name	Details"
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   84
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   818
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
      Begin DesktopProgressWheel SearchProgressWheel
         Active          =   False
         AllowAutoDeactivate=   True
         AllowTabStop    =   True
         Enabled         =   False
         Height          =   40
         Index           =   -2147483648
         InitialParent   =   "ResultsListBox"
         Left            =   421
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         PanelIndex      =   0
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   282
         Transparent     =   False
         Visible         =   False
         Width           =   40
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
   End
   Begin DesktopPopupMenu SearchSitePopupMenu
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
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   297
   End
   Begin DesktopLabel SearchSiteLabel
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
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      Text            =   "Search Site"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
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
		  
		  Var configuration As TaxonomyDatabase.Configuration = ReadConfiguration
		  
		  If configuration <> Nil Then
		    App.apiToken = configuration.token
		    App.defaultCountry = configuration.country
		  End If
		  
		  TaxonomyDatabase.ReadSiteNames(SearchSitePopupMenu)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  SearchProgressWheel.Top = ResultsListBox.Top + (ResultsListBox.Height / 2) - (SearchProgressWheel.Height / 2)
		  SearchProgressWheel.Left = ResultsListBox.Left + (ResultsListBox.Width / 2) - (SearchProgressWheel.Width / 2)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub DisableControls()
		  SearchTermsField.Enabled = False
		  SearchSitePopupMenu.Enabled = False
		  SearchButton.Enabled = False
		  ResultsListBox.Enabled = False
		  ExportButton.Enabled = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnableControls()
		  SearchTermsField.Enabled = True
		  SearchSitePopupMenu.Enabled = True
		  ResultsListBox.Enabled = True
		  SetSearchButtonState
		  ExportButton.Enabled = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ExtractDomain(url As String) As String
		  Var regex As RegEx = New RegEx
		  regex.SearchPattern = "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?"
		  
		  Var match As RegExMatch = regex.Search(url)
		  
		  Return match.SubExpressionString(4)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessResults(content As String)
		  Try
		    
		    Var jsonContent As Dictionary = ParseJSON(content)
		    
		    Var body As Dictionary = jsonContent.Value("body")
		    Var title As String = body.Value("title")
		    Var items() As Variant = body.Value("items")
		    
		    Select Case title
		      
		    Case "AmphibiaWeb Search"
		      For Each item As Dictionary In items
		        ResultsListBox.ColumnCount = 5
		        
		        ResultsListBox.HeaderAt(0) = "Scientific Name"
		        ResultsListBox.HeaderAt(1) = "Red List Status"
		        ResultsListBox.HeaderAt(2) = "Vernacular Name"
		        ResultsListBox.HeaderAt(3) = "Family"
		        ResultsListBox.HeaderAt(4) = "Order"
		        
		        Var scientificName As String = item.Value("scientificName").StringValue
		        Var redListStatus As String = item.Value("redListStatus").StringValue
		        Var vernacularName As String = item.Value("vernacularName").StringValue
		        Var family As String = item.Value("family").StringValue
		        Var order As String = item.Value("order").StringValue
		        
		        If Not scientificName.IsEmpty Then
		          ResultsListBox.AddRow(scientificName, redListStatus, vernacularName, family, order)
		        End If
		      Next
		      
		    Case "International Plant Names Index", "Search results | The Reptile Database"
		      ResultsListBox.ColumnCount = 2
		      
		      ResultsListBox.HeaderAt(0) = "Name"
		      ResultsListBox.HeaderAt(1) = "Details"
		      
		      For Each item As Dictionary In items
		        Var name As String = item.Value("name").StringValue
		        Var details As String = item.Value("details").StringValue
		        
		        If Not (name.IsEmpty And details.IsEmpty) Then
		          ResultsListBox.AddRow(name, details)
		        End If
		      Next
		      
		    End Select
		    
		  Catch error As JSONException
		    
		    MessageBox("Unable to process the search response")
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SendSearchRequest()
		  Var siteDetails As TaxonomyDatabase.SiteDetails = TaxonomyDatabase.ReadSiteByName(SearchSitePopupMenu.SelectedRowValue)
		  
		  Var searchURL As SearchServiceURL = New SearchServiceURL(App.ServiceURL, App.apiToken)
		  
		  searchURL.SiteURL = siteDetails.url
		  searchURL.SearchTerms = SearchTermsField.Text
		  searchURL.RichRespone = True
		  searchURL.Scenario = siteDetails.scenario
		  searchURL.ExtractRules = siteDetails.extractRules
		  
		  If Not App.defaultCountry.IsEmpty Then
		    searchURL.PremiumProxy = True
		    searchURL.CountryCode = LookupCountryCode(App.defaultCountry)
		  End If
		  
		  WebConnection.Send("GET", searchURL.ToString)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetSearchButtonState()
		  SearchButton.Enabled = Not (SearchTermsField.Text.IsEmpty Or SearchSitePopupMenu.SelectedRowValue.IsEmpty)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowErrorMessage(status As Integer, content As String)
		  SearchProgressWheel.Enabled = False
		  SearchProgressWheel.Visible = False
		  
		  Var message As String
		  
		  Select Case status
		  Case 401
		    message = "Please check the API key and try again"
		  Case 500
		    message = "The search was unsuccessful. Please rephrase the search terms and try again."
		  Else
		    message = status.ToString + content
		  End Select
		  
		  MessageBox(message)
		  
		  EnableControls
		End Sub
	#tag EndMethod


#tag EndWindowCode

#tag Events SearchTermsField
	#tag Event
		Sub TextChanged()
		  SetSearchButtonState
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchButton
	#tag Event
		Sub Pressed()
		  DisableControls
		  
		  SearchProgressWheel.Enabled = True
		  SearchProgressWheel.Visible = True
		  
		  ResultsListBox.RemoveAllRows
		  
		  SendSearchRequest
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WebConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  If HTTPStatus <> 200 Then
		    ShowErrorMessage(HTTPStatus, content)
		    Return
		  End If
		  
		  ProcessResults(content)
		  
		  EnableControls
		  
		  SearchProgressWheel.Enabled = False
		  SearchProgressWheel.Visible = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub Error(e As RuntimeException)
		  MessageBox(e.Message)
		  
		  SearchProgressWheel.Enabled = False
		  SearchProgressWheel.Visible = False
		  
		  EnableControls
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton
	#tag Event
		Sub Pressed()
		  Var f As FolderItem
		  Var fileStream As TextOutputStream
		  
		  Var csvType As New FileType
		  csvType.Name = "csv/csv"
		  csvType.Extensions = ".csv"
		  
		  f = FolderItem.ShowSaveFileDialog(csvType, "export.csv")
		  
		  If f <> Nil Then
		    fileStream = TextOutputStream.Create(f)
		    
		    For i As Integer = 0 To ResultsListBox.ColumnCount - 1
		      If i > 0 Then
		        fileStream.Write(",")
		      End If
		      fileStream.Write("""" + ResultsListBox.HeaderAt(i) + """")
		    Next i
		    
		    fileStream.WriteLine()
		    
		    For Each row As DesktopListBoxRow In ResultsListBox.Rows
		      For i As Integer = 0 To row.ColumnCount - 1
		        If i > 0 Then
		          fileStream.Write(",")
		        End If
		        Var text As String
		        text = row.CellTextAt(i)
		        text = text.Replace("""", """""")
		        fileStream.Write("""" + text + """")
		      Next
		      fileStream.WriteLine()
		    Next
		    
		    fileStream.Close
		  End If
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchSitePopupMenu
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  SetSearchButtonState
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
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
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		InitialValue="&cFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
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
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
