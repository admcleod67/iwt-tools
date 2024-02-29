#tag WebContainerControl
Begin WebContainer SettingsContainer
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   True
   Height          =   612
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
   Width           =   971
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebTabPanel SettingsTabPanel
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBorder       =   True
      Height          =   572
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
      TabDefinition   =   "Users"
      TabIndex        =   0
      Tooltip         =   ""
      Top             =   20
      Visible         =   True
      Width           =   931
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebListBox UserListBox
         ColumnCount     =   4
         ColumnWidths    =   ""
         ControlID       =   ""
         Enabled         =   True
         HasHeader       =   True
         Height          =   452
         HighlightSortedColumn=   True
         Index           =   -2147483648
         Indicator       =   ""
         InitialParent   =   "SettingsTabPanel"
         InitialValue    =   "Username	Name	Email	Role"
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
         Parent          =   "SettingsTabPanel"
         ProcessingMessage=   ""
         RowCount        =   0
         RowSelectionType=   1
         Scope           =   0
         SearchCriteria  =   ""
         SelectedRowColor=   &c0d6efd
         SelectedRowIndex=   0
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   74
         Visible         =   True
         Width           =   891
         _mPanelIndex    =   -1
      End
      Begin WebButton AddUserButton
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Add"
         ControlID       =   ""
         Default         =   False
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "SettingsTabPanel"
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "SettingsTabPanel"
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   534
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
      Begin WebButton EditUserButton
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Edit"
         ControlID       =   ""
         Default         =   False
         Enabled         =   False
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "SettingsTabPanel"
         Left            =   148
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "SettingsTabPanel"
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   534
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
      Begin WebButton DeleteUserButton
         AllowAutoDisable=   False
         Cancel          =   False
         Caption         =   "Delete"
         ControlID       =   ""
         Default         =   False
         Enabled         =   False
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialParent   =   "SettingsTabPanel"
         Left            =   256
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         LockVertical    =   False
         PanelIndex      =   "0"
         Parent          =   "SettingsTabPanel"
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   534
         Visible         =   True
         Width           =   100
         _mPanelIndex    =   -1
      End
   End
   Begin URLConnection UserConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin URLConnection DeleteConnection
      AllowCertificateValidation=   False
      HTTPStatusCode  =   0
      Index           =   -2147483648
      LockedInPosition=   False
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin WebMessageDialog UserDeleteMessageDialog
      ControlID       =   ""
      Enabled         =   True
      Explanation     =   ""
      Index           =   -2147483648
      Indicator       =   ""
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
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  sessionID = Session.Identifier
		  UserConnection.Send("GET", App.ServiceBaseURL + "/users")
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub DeleteUser(row As Integer)
		  Var id As Integer = UserListBox.RowTagAt(row)
		  DeleteConnection.Send("DELETE", App.ServiceBaseURL + "/user/" + id.ToString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EnableControls()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshUserList()
		  UserConnection.Send("GET", App.ServiceBaseURL + "/users")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUserDetails(row As Integer, userDetails As JSONItem)
		  UserListBox.CellTextAt(row, 0) = userDetails.Value("username").StringValue
		  UserListBox.CellTextAt(row, 1) = userDetails.Value("name").StringValue
		  UserListBox.CellTextAt(row, 2) = userDetails.Value("email").StringValue
		  UserListBox.CellTextAt(row, 3) = userDetails.Value("role").StringValue
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private sessionID As String
	#tag EndProperty


#tag EndWindowCode

#tag Events UserListBox
	#tag Event
		Sub SelectionChanged(rows() As Integer)
		  EditUserButton.Enabled = True
		  DeleteUserButton.Enabled = True
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AddUserButton
	#tag Event
		Sub Pressed()
		  Var dialog As New UserDialog
		  dialog.SetParent(Self)
		  dialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events EditUserButton
	#tag Event
		Sub Pressed()
		  Var row As Integer = UserListBox.SelectedRowIndex
		  
		  Var id As Integer = UserListBox.RowTagAt(row)
		  
		  Var username As String = UserListBox.CellTextAt(row, 0)
		  Var name As String = UserListBox.CellTextAt(row, 1)
		  Var email As String = UserListBox.CellTextAt(row, 2)
		  Var role As String = UserListBox.CellTextAt(row, 3)
		  
		  Var dialog As New UserDialog
		  dialog.SetUserDetails(row, id, username, email, name, role)
		  dialog.SetParent(Self)
		  dialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DeleteUserButton
	#tag Event
		Sub Pressed()
		  UserDeleteMessageDialog.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UserConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  #PRAGMA unused URL
		  
		  Var users() As Variant = ParseJSON(content)
		  
		  UserListBox.RemoveAllRows
		  
		  For Each user As Dictionary In users
		    Var id As Integer = user.Value("id")
		    
		    Var username As String = user.Value("username")
		    Var name As String = user.Value("name")
		    Var email As String = user.Value("email")
		    Var role As String = user.Value("role")
		    
		    UserListBox.AddRow(username, name, email, role)
		    UserListBox.RowTagAt(UserListBox.LastAddedRowIndex) = id
		  Next
		  
		  EnableControls
		  'SearchProgressWheel.Visible = False
		  
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
#tag Events DeleteConnection
	#tag Event
		Sub ContentReceived(URL As String, HTTPStatus As Integer, content As String)
		  EnableControls
		  RefreshUserList
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
#tag Events UserDeleteMessageDialog
	#tag Event
		Sub Opening()
		  Me.Indicator = WebMessageDialog.Indicators.Warning
		  Me.ActionButton.Caption = "Delete"
		  Me.CancelButton.Visible = True
		  Me.AlternateActionButton.Visible = True
		  Me.AlternateActionButton.Caption = "Don't Delete"
		  
		  Me.Message = "Do you want to delete the selected user?"
		  Me.Explanation = "If you do, the user will be removed permanently. "
		End Sub
	#tag EndEvent
	#tag Event
		Sub ButtonPressed(button As WebMessageDialogButton)
		  Select Case button
		  Case Me.ActionButton
		    DeleteUser(UserListBox.SelectedRowIndex)
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
