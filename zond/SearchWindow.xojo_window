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
   Height          =   554
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   995964927
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Google Search"
   Type            =   0
   Visible         =   True
   Width           =   852
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
      Width           =   608
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
      Left            =   752
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   3
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
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   752
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   514
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
      ColumnCount     =   4
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
      Height          =   416
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Title	Description	URL	Timestamp"
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   86
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   812
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
         TabIndex        =   0
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   283
         Transparent     =   False
         Visible         =   False
         Width           =   40
         _mIndex         =   0
         _mInitialParent =   ""
         _mName          =   ""
         _mPanelIndex    =   0
      End
   End
   Begin DesktopPopupMenu CountryPopupMenu
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
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   54
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   570
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
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Country"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   54
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
		  
		  Var configuration As SearchDatabase.Configuration  = ReadConfiguration
		  
		  If configuration <> Nil Then
		    App.apiToken = configuration.token
		    App.defaultCountry = configuration.country
		  End If
		  
		  CountryPopupMenu.AddAllRows(ReadCountryNames)
		  
		  If Not configuration.country.IsEmpty Then
		    CountryPopupMenu.SelectRowWithValue(configuration.country)
		  End If
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
		  CountryPopupMenu.Enabled = False
		  SearchButton.Enabled = False
		  ResultsListBox.Enabled = False
		  ExportButton.Enabled = False
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnableControls()
		  SearchTermsField.Enabled = True
		  CountryPopupMenu.Enabled = True
		  ResultsListBox.Enabled = True
		  SetSearchButtonState
		  ExportButton.Enabled = ResultsListBox.RowCount > 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessResults(content As String)
		  Try
		    
		    Var jsonContent As Dictionary
		    jsonContent = ParseJSON(content)
		    
		    Var organicResults() As Variant
		    organicResults = jsonContent.Value("organic_results")
		    
		    For Each item As Dictionary In organicResults
		      Var title As String = item.Value("title").StringValue
		      Var description As String = item.Value("description").StringValue
		      Var link As String = item.Value("url").StringValue
		      Var date As String = DateTime.Now.ToString
		      
		      If Not (title.IsEmpty And description.IsEmpty) Then
		        ResultsListBox.AddRow(title, description, link)
		      End If
		    Next
		    
		  Catch error As JSONException
		    
		    MessageBox("Unable to process the search response")
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SendSearchRequest()
		  Var searchTerms As String = EncodeURLComponent(SearchTermsField.Text)
		  Var countryCode As String = LookupCountryCode(CountryPopupMenu.SelectedRowValue)
		  
		  Var url As String = App.serviceURL + "?api_key=" + App.apiToken + "&search=" + searchTerms + "&nb_results=100"
		  
		  If Not countryCode.IsEmpty Then
		    url = url + "&country_code=" + countryCode
		  End If
		  
		  WebConnection.Send("GET", url)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetSearchButtonState()
		  SearchButton.Enabled = Not SearchTermsField.Text.IsEmpty
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
		    message = "The search was unsuccessful. Please rephrase the search terms or select a different country and try again."
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
		  SearchProgressWheel.Enabled = False
		  SearchProgressWheel.Visible = False
		  
		  MessageBox(e.Message)
		  
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
#tag Events ResultsListBox
	#tag Event
		Sub DoublePressed()
		  // Set the values in the Search Item Window and display it
		  Var row As DesktopListBoxRow = ResultsListBox.RowAt(ResultsListBox.SelectedRowIndex)
		  
		  Var title As String = row.CellTextAt(0)
		  Var description As String = row.CellTextAt(1)
		  Var url As String = row.CellTextAt(2)
		  
		  Var view As New SearchItemWindow(title, description, url)
		  view.ShowModal
		  
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
