#tag WebPage
Begin WebPage SearchWebPage
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   Enabled         =   False
   Height          =   682
   ImplicitInstance=   False
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   400
   MinimumWidth    =   600
   TabIndex        =   0
   Title           =   "Site Monitor"
   Top             =   0
   Visible         =   True
   Width           =   1183
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebRectangle SidebarRectangle
      BackgroundColor =   &c323F6700
      ControlCount    =   0
      ControlID       =   ""
      Enabled         =   True
      HasBackgroundColor=   True
      Height          =   682
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Scope           =   2
      TabIndex        =   3
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   280
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin VerticalNavigation NavigationSidebar
         ControlCount    =   0
         ControlID       =   ""
         Enabled         =   True
         Height          =   250
         Index           =   "-2147483648"
         Indicator       =   0
         InitialParent   =   "SidebarRectangle"
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   20
         LockBottom      =   False
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Parent          =   "SidebarRectangle"
         Scope           =   2
         ScrollDirection =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   20
         Visible         =   True
         Width           =   240
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
      Begin WebLabel VersionLabel
         Bold            =   False
         ControlID       =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   14.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   False
         LockVertical    =   False
         Multiline       =   False
         Parent          =   "SidebarRectangle"
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Version 1.0.0"
         TextAlignment   =   2
         TextColor       =   &c5C5C5C00
         Tooltip         =   ""
         Top             =   624
         Underline       =   False
         Visible         =   True
         Width           =   240
         _mPanelIndex    =   -1
      End
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Event
		Sub Opening()
		  Me.Style.BackgroundColor = Color.RGB(249, 250, 251)
		  VersionLabel.Text = "Version " + Str(App.MajorVersion) + "." + str(App.MinorVersion) + "." +  str(App.BugVersion)
		  
		  OpenDashboard
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub CloseCurrent()
		  If currentContainer <> Nil Then
		    currentContainer.Close
		    currentContainer = Nil
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Logout()
		  Var page As LoginWebPage = New LoginWebPage
		  page.Show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDashboard()
		  currentContainer = New DashboardContainer
		  SetContainerSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenMonitor()
		  currentContainer = New MonitorContainer
		  SetContainerSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenResults()
		  currentContainer = New FindResultsContainer
		  SetContainerSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenSearch()
		  currentContainer = New SearchContainer
		  SetContainerSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenSettings()
		  currentContainer = New SettingsContainer
		  SetContainerSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenTaxonomy()
		  currentContainer = New TaxonomySearchContainer
		  SetContainerSize
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetContainerSize()
		  Self.MinimumHeight = currentContainer.Height + 40
		  Self.MinimumWidth = currentContainer.Width + 288  
		  
		  currentContainer.LockLeft = True
		  currentContainer.LockTop = True
		  currentContainer.LockRight = True
		  currentContainer.LockBottom = True
		  
		  currentContainer.EmbedWithin(Self, 288, 20, Self.Width - 288, Self.Height - 20)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		currentContainer As WebContainer
	#tag EndProperty


#tag EndWindowCode

#tag Events SidebarRectangle
	#tag Event
		Sub Opening()
		  Me.Style.Value("border") = ""
		  Me.Style.Value("border-radius") = ""
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NavigationSidebar
	#tag Event
		Sub Opening()
		  Me.AddLink("Home", "house", True)
		  Me.AddLink("Search", "binoculars")
		  Me.AddLink("Monitor", "bell")
		  Me.AddLink("Results", "file-earmark-text")
		  Me.AddLink("Taxonomy", "book")
		  Me.AddLink("Settings", "gear")
		  Me.AddLink("Logout", "door-closed")
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(link As NavigationLink)
		  Select Case link.Caption
		  Case "Home"
		    CloseCurrent
		    OpenDashboard
		  Case "Search"
		    CloseCurrent
		    OpenSearch
		  Case "Monitor"
		    CloseCurrent
		    OpenMonitor
		  Case "Results"
		    CloseCurrent
		    OpenResults
		  Case "Taxonomy"
		    CloseCurrent
		    OpenTaxonomy
		  Case "Settings"
		    CloseCurrent
		    OpenSettings
		  Case "Logout"
		    CloseCurrent
		    Logout
		  Else
		    CloseCurrent
		  End Select
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
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
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
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
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_ImplicitInstance"
		Visible=false
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
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
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
#tag EndViewBehavior
