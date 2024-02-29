#tag DesktopWindow
Begin DesktopWindow SearchResultsWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   True
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   636
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   149303295
   MenuBarVisible  =   True
   MinimumHeight   =   256
   MinimumWidth    =   876
   Resizeable      =   True
   Title           =   "Search Results"
   Type            =   1
   Visible         =   False
   Width           =   876
   Begin DesktopButton FilterResultsButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Filter"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   479
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   100
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopListBox SearchResultsList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   5
      ColumnWidths    =   "15%,65%,20%,65%,65%"
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
      Height          =   450
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "Tagged	Name	Timestamp	Description	URL"
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
      Top             =   134
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   836
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopTextField FilterTermsField
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
      Left            =   117
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
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
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   100
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   350
   End
   Begin DesktopButton ExportButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Export"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   776
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   102
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
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
      TabIndex        =   13
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
      Enabled         =   False
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
      TabIndex        =   14
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
      Width           =   724
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
      TabIndex        =   15
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
   Begin DesktopTextField SiteNameField
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   False
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
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   724
   End
   Begin DesktopButton ClearFilterButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Clear"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   571
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   100
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton CloseButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Close"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   776
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   596
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopCheckBox TaggedCheckBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "Tagged"
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
      Scope           =   2
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   102
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   85
   End
   Begin DesktopButton ColumnsButton
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Columns"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      Italic          =   False
      Left            =   684
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   100
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
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
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   598
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  #If TargetMacOS
		    Const NSTitledWindowMask = 1
		    Const NSClosableWindowMask = 2
		    Const NSResizableWindowMask = 8
		    
		    Declare Sub setStyleMask Lib "Cocoa.framework" selector "setStyleMask:" (obj_id As Integer, mask As Integer)
		    
		    Var WinHandle as OSHandle
		    WinHandle = Self.Handle
		    
		    setStyleMask(WinHandle, NSTitledWindowMask Or NSClosableWindowMask Or NSResizableWindowMask)
		  #EndIf
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ConfigureListHeader()
		  SearchResultsList.ColumnCount = fields.Count + 1
		  
		  For i As Integer = 1 To fields.Count
		    Var name As String = fields(i - 1).Left.StringValue.ReplaceAll("_", " ").Titlecase
		    SearchResultsList.HeaderAt(i) = name
		  Next i
		  
		  Var widths As String
		  widths = "15%"
		  
		  For Each field As Pair In fields
		    widths = widths + "," + field.Right.StringValue
		  Next
		  
		  SearchResultsList.ColumnWidths = widths
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(searchId As Integer, siteName As String, searchTerms As String)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Self.searchId = searchId
		  
		  SiteNameField.Text = siteName
		  SearchTermsField.Text = searchTerms
		  
		  InitialiseFields
		  ConfigureListHeader
		  ReadSearchResults(SearchResultsList, Self.searchId, Self.fields)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteResultRow(index As Integer)
		  If index >= 0 Then
		    Var id As Integer = SearchResultsList.RowTagAt(index)
		    If DeleteResult(id) Then
		      SearchResultsList.RemoveRowAt(index)
		      SearchWindow.RefreshSearchHistory
		    End If
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub InitialiseFields()
		  fields.Add("name" : "65%")
		  fields.Add("timestamp" : "20%")
		  fields.Add("description" : "65%")
		  fields.Add("url" : "65%")
		  
		  'fields.Add("product_id" :  "20%")
		  'fields.Add("image" :  "20%")
		  'fields.Add("brand" :  "20%")
		  'fields.Add("offer_price" :  "20%")
		  'fields.Add("offer_currency" :  "20%")
		  'fields.Add("offer_condition" :  "20%")
		  'fields.Add("offer_availability" :  "20%")
		  'fields.Add("seller_name" :  "20%")
		  'fields.Add("seller_url" :  "20%")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetSearchDetails(searchId As Integer, siteName As String, searchTerms As String)
		  Self.searchId = searchId
		  
		  SiteNameField.Text = siteName
		  SearchTermsField.Text = searchTerms
		  
		  ConfigureListHeader
		  ReadSearchResults(SearchResultsList, Self.searchId, Self.fields)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		fields() As Pair
	#tag EndProperty

	#tag Property, Flags = &h21
		Private searchId As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events FilterResultsButton
	#tag Event
		Sub Pressed()
		  ReadSearchResults(SearchResultsList, Self.searchId, Self.fields, FilterTermsField.Text, TaggedCheckBox.Value)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchResultsList
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If column = 0 Then
		    UpdateResultTag(Me.RowTagAt(row).IntegerValue, Me.CellCheckBoxValueAt(row, column))
		  End If
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function RowComparison(row1 as Integer, row2 as Integer, column as Integer, ByRef result as Integer) As Boolean
		  // Column 3 contains checkboxes.
		  // We want to sort it by checkbox value, with unchecked rows before checked rows.
		  
		  If column = 3 Then
		    // column 3 contains our checkboxes
		    If Me.CellCheckBoxValueAt(row1, column) Xor Me.CellCheckBoxValueAt(row2, column) Then
		      // CellCheckBox values are unequal.  If row1 is true, then row2 must be true and vice versa.
		      If Me.CellCheckBoxValueAt(row1, column) Then
		        // row1 < row2
		        result = 1
		      Else
		        // row1 < row2
		        result = -1
		      End If
		    Else
		      // CellCheckBox values are equal, so row1 = row2.
		      result = 0
		    End If
		    Return True
		    
		  Else
		    // let the listbox do default comparison
		    Return False
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub DoublePressed()
		  Var id As Integer
		  id = SearchResultsList.RowTagAt(SearchResultsList.SelectedRowIndex)
		  
		  Var view As New DetailsWindow
		  view.SetDetails(id)
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
#tag Events FilterTermsField
	#tag Event
		Sub TextChanged()
		  FilterResultsButton.Enabled = Not FilterTermsField.Text.IsEmpty
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton
	#tag Event
		Sub Pressed()
		  ExportSearchResutsToCSV(Self.searchId, FilterTermsField.Text, TaggedCheckBox.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClearFilterButton
	#tag Event
		Sub Pressed()
		  FilterTermsField.Text = ""
		  ReadSearchResults(SearchResultsList, Self.searchId, Self.fields, FilterTermsField.Text, TaggedCheckBox.Value)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CloseButton
	#tag Event
		Sub Pressed()
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TaggedCheckBox
	#tag Event
		Sub ValueChanged()
		  ReadSearchResults(SearchResultsList, Self.searchId, Self.fields, FilterTermsField.Text, TaggedCheckBox.Value)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ColumnsButton
	#tag Event
		Sub Pressed()
		  Var view As New SelectFieldsWindow(fields)
		  view.ShowModal
		  
		  If view.response = "Ok" Then
		    fields = view.fields
		    ConfigureListHeader
		    ReadSearchResults(SearchResultsList, Self.searchId, Self.fields)
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
		  
		  dialog.Message = "Do you want to delete the selected result?"
		  dialog.Explanation = "If you do, it will be removed permanently. "
		  
		  Var button As MessageDialogButton = dialog.ShowModal
		  
		  Select Case button
		  Case dialog.ActionButton
		    DeleteResultRow(SearchResultsList.SelectedRowIndex)
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
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
