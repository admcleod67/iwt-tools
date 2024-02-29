#tag Module
Protected Module DataExport
	#tag Method, Flags = &h0
		Sub ExportFindResultsToCSV(searchTerms As String, name As String, sellerName As String)
		  Var f As FolderItem
		  Var fileStream As TextOutputStream
		  
		  Var csvType As New FileType
		  csvType.Name = "csv/csv"
		  csvType.Extensions = ".csv"
		  
		  f = FolderItem.ShowSaveFileDialog(csvType, "export.csv")
		  
		  If f <> Nil Then
		    fileStream = TextOutputStream.Create(f)
		    
		    Var rs As RowSet
		    
		    Try
		      
		      Var sql As String = "SELECT r.* FROM search s JOIN result r ON s.id = r.search_id" _
		      + " WHERE LOWER(s.terms) LIKE LOWER(? || '%')" _ 
		      + " AND LOWER(r.name) LIKE LOWER(? || '%')" _ 
		      + " AND LOWER(r.seller_name) LIKE LOWER(? || '%')"
		      
		      rs = DB.SelectSQL(sql, searchTerms, name, sellerName)
		      
		    Catch err As DatabaseException
		      
		      MessageDialog.Show("DB Error: " + err.Message)
		      Return
		      
		    End Try
		    
		    // Show the column names
		    For column As Integer = 0 To rs.LastColumnIndex
		      If column > 0 Then
		        fileStream.Write(",")
		      End If
		      fileStream.Write("""" + rs.ColumnAt(column).Name + """")
		    Next
		    
		    fileStream.WriteLine()
		    
		    // Loop through each row, one-by-one
		    While Not rs.AfterLastRow
		      For column As Integer = 0 To rs.LastColumnIndex
		        If column > 0 Then
		          fileStream.Write(",")
		        End If
		        Var text As String
		        text = rs.ColumnAt(column).StringValue
		        text = text.Replace("""", """""")
		        fileStream.Write("""" + text + """")
		      Next
		      fileStream.WriteLine()
		      rs.MoveToNextRow
		    Wend
		    
		    rs.Close
		    fileStream.Close
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExportSearchResutsToCSV(searchNo As Integer, searchTerms As String, tagged As Boolean)
		  Var f As FolderItem
		  Var fileStream As TextOutputStream
		  
		  Var csvType As New FileType
		  csvType.Name = "csv/csv"
		  csvType.Extensions = ".csv"
		  
		  f = FolderItem.ShowSaveFileDialog(csvType, "export.csv")
		  
		  If f <> Nil Then
		    fileStream = TextOutputStream.Create(f)
		    
		    Var rs As RowSet
		    
		    Try
		      
		      Var sql As String = "SELECT id, name, description,  url, product_id, image, brand, offer_price, offer_currency," _
		      + " offer_condition, offer_availability, seller_name, seller_url, seller_image, timestamp, tagged" _
		      + " FROM result WHERE search_id = ?"
		      
		      If tagged Then
		        sql = sql + " AND tagged"
		      End If
		      
		      If searchTerms.IsEmpty Then
		        sql = sql + " ORDER BY timestamp DESC"
		        rs = DB.SelectSQL(sql, searchNo)  
		      Else
		        sql = sql + " AND name LIKE ?  ORDER BY timestamp DESC"
		        searchTerms = "%" + searchTerms + "%"
		        rs = DB.SelectSQL(sql, searchNo, searchTerms)
		      End If 
		      
		    Catch err As DatabaseException
		      
		      MessageDialog.Show("DB Error: " + err.Message)
		      Return
		      
		    End Try
		    
		    // Show the column names
		    For column As Integer = 0 To rs.LastColumnIndex
		      If column > 0 Then
		        fileStream.Write(",")
		      End If
		      fileStream.Write("""" + rs.ColumnAt(column).Name + """")
		    Next
		    
		    fileStream.WriteLine()
		    
		    // Loop through each row, one-by-one
		    While Not rs.AfterLastRow
		      For column As Integer = 0 To rs.LastColumnIndex
		        If column > 0 Then
		          fileStream.Write(",")
		        End If
		        Var text As String
		        text = rs.ColumnAt(column).StringValue
		        text = text.Replace("""", """""")
		        fileStream.Write("""" + text + """")
		      Next
		      fileStream.WriteLine()
		      rs.MoveToNextRow
		    Wend
		    
		    rs.Close
		    fileStream.Close
		  End If
		End Sub
	#tag EndMethod


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
