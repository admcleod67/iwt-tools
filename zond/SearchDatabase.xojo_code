#tag Module
Protected Module SearchDatabase
	#tag Method, Flags = &h0
		Sub CloseDatabase()
		  DB.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookupCountryCode(name As String) As String
		  Try
		    
		    Var sql As String = "SELECT code FROM country WHERE name = ? AND active"
		    Var rs As RowSet = DB.SelectSQL(sql, name)
		    
		    Var code As String = rs.Column("code").StringValue
		    rs.Close
		    
		    Return code
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show(err.Message)
		    Return ""
		    
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDatabase()
		  Var source As FolderItem = SpecialFolder.Resource("search.sqlite")
		  Var name As String = app.ExecutableFile.name.NthField(".", 1)
		  
		  // Check if there is a folder with the App name in special Application Data
		  // if not, create it and copy the database file from Resources bundle/directory
		  If Not (SpecialFolder.ApplicationData.Child(name).Exists And SpecialFolder.ApplicationData.Child(name).IsFolder) Then 
		    SpecialFolder.ApplicationData.Child(name).CreateFolder
		  End If
		  
		  If Not SpecialFolder.ApplicationData.child(name).child(source.name).exists Then 
		    source.CopyTo(SpecialFolder.ApplicationData.Child(name))
		  End If
		  
		  Try
		    // Create a SQLiteDatabase instance and try to open our database file from the path
		    DB = New SQLiteDatabase
		    DB.DatabaseFile = SpecialFolder.ApplicationData.Child(name).Child("search.sqlite")
		    DB.Connect
		    
		  Catch e As DatabaseException
		    MessageBox(e.Message)
		    Quit
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadConfiguration() As Configuration
		  Try
		    
		    Var sql As String = "SELECT * FROM settings LIMIT 1"
		    Var rs As RowSet = DB.SelectSQL(sql)
		    
		    Var configuration As Configuration = New Configuration
		    
		    If rs <> Nil And Not rs.BeforeFirstRow Then
		      configuration.token = rs.Column("api_key").StringValue
		      configuration.country = rs.Column("default_country").StringValue
		      rs.Close
		    End If
		    
		    Return configuration
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show(err.Message)
		    Return Nil
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadCountryNames() As String()
		  Try
		    
		    Var sql As String = "SELECT name FROM country WHERE active ORDER BY name"
		    Var rs As RowSet = DB.SelectSQL(sql)
		    
		    Var names() As String
		    
		    For Each row As DatabaseRow In rs
		      names.Add(row.Column("name").StringValue)
		    Next
		    
		    rs.Close
		    
		    Return names
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show(err.Message)
		    Return Nil
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteConfiguration(configuration As SearchDatabase.Configuration)
		  Try
		    
		    Var sql As String = "INSERT INTO settings(id, api_key, default_country) VALUES(?, ?, ?) ON CONFLICT(id) DO UPDATE SET api_key = ?, default_country = ?"
		    DB.ExecuteSQL(sql, 1, configuration.token, configuration.country, configuration.token, configuration.country)
		    
		  Catch err As DatabaseException
		    
		    MessageBox(err.Message)
		    
		  End Try
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private DB As SQLiteDatabase
	#tag EndProperty


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
	#tag EndViewBehavior
End Module
#tag EndModule
