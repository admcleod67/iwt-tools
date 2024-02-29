#tag Module
Protected Module SearchDatabase
	#tag Method, Flags = &h0
		Sub CloseDatabase()
		  DB.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateItemImage(itemImage As SearchDatabase.ItemImage, resultId As Integer)
		  Try
		    
		    Var row As New DatabaseRow
		    
		    row.Column("result_id").IntegerValue = resultId
		    
		    row.Column("image_data").StringValue = itemImage.Data
		    row.Column("format").StringValue = itemImage.Format
		    row.Column("type").StringValue = itemImage.Type
		    row.Column("hash").StringValue = itemImage.Hash
		    
		    DB.AddRow("item_image", row)
		    
		  Catch err As DatabaseException
		    
		    MessageBox("DB Error: " + err.Message)
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CreateResult(result As Dictionary, searchId As Integer)
		  Var row As New DatabaseRow
		  row.Column("search_id").IntegerValue = searchId
		  
		  row.Column("name").StringValue = result.Lookup("name", "")
		  row.Column("description").StringValue = result.Lookup("description", "")
		  row.Column("url").StringValue = result.Lookup("url", "")
		  row.Column("product_id").StringValue = result.Lookup("productID", "")
		  row.Column("image").StringValue = result.Lookup("image", "")
		  row.Column("brand").StringValue = result.Lookup("brand", "")
		  
		  If result.HasKey("offerPrice") Then
		    row.Column("offer_price").StringValue = result.Lookup("offerPrice", "")
		  End If
		  
		  If result.HasKey("offerCurrency") Then
		    row.Column("offer_currency").StringValue = result.Lookup("offerCurrency", "")
		  End If
		  
		  If result.HasKey("sellerName") Then
		    row.Column("seller_name").StringValue = result.Lookup("sellerName", "")
		  End If
		  
		  If result.HasKey("sellerUrl") Then
		    row.Column("seller_url").StringValue = result.Lookup("sellerUrl", "")
		  End If
		  
		  If result.HasKey("sellerImage") Then
		    row.Column("seller_image").StringValue = result.Lookup("sellerImage", "")
		  End If
		  
		  If result.HasKey("itemCondition") Then
		    row.Column("offer_condition").StringValue = result.Lookup("itemCondition", "")
		  End If
		  
		  If result.HasKey("offers") Then
		    Var offer As Dictionary
		    offer = result.Value("offers")
		    
		    row.Column("offer_price").StringValue = offer.Lookup("price", "")
		    row.Column("offer_currency").StringValue = offer.Lookup("priceCurrency", "")
		    row.Column("offer_condition").StringValue = offer.Lookup("itemCondition", "")
		    row.Column("offer_availability").StringValue = offer.Lookup("availability", "")
		    
		    If offer.HasKey("") Then
		      Var seller As Dictionary
		      seller = result.Value("seller")
		      
		      row.Column("seller_name").StringValue = offer.Lookup("name", "")
		      row.Column("seller_url").StringValue = offer.Lookup("url", "")
		      row.Column("seller_image").StringValue = offer.Lookup("image", "")
		      
		      If result.HasKey("aggregateRating") Then
		        Var aggregateRating As Dictionary
		        aggregateRating = seller.Value("aggregateRating")
		        
		        row.Column("seller_best_rating").StringValue = aggregateRating.Lookup("bestRating", "")
		        row.Column("seller_worst_rating").StringValue = aggregateRating.Lookup("worstRating", "")
		        row.Column("seller_rating_count").StringValue = aggregateRating.Lookup("ratingCount", "")
		        row.Column("seller_rating_value").StringValue = aggregateRating.Lookup("ratingValue", "")
		      End If
		    End If
		  End If
		  
		  If result.Haskey("ratingValue") Then
		    row.Column("aggregate_rating_value").StringValue = result.Lookup("ratingValue", "")
		  End If
		  
		  If result.HasKey("aggregateRating") Then
		    Var aggregateRating As Dictionary
		    aggregateRating = result.Value("aggregateRating")
		    
		    row.Column("aggregate_best_rating").StringValue = aggregateRating.Lookup("bestRating", "")
		    row.Column("aggregate_worst_rating").StringValue = aggregateRating.Lookup("worstRating", "")
		    row.Column("aggregate_rating_count").StringValue = aggregateRating.Lookup("ratingCount", "")
		    row.Column("aggregate_rating_value").StringValue = aggregateRating.Lookup("ratingValue", "")
		  End If
		  
		  Try
		    
		    DB.AddRow("result", row)
		    
		  Catch err As DatabaseException
		    
		    MessageBox("DB Error: " + err.Message)
		    Return
		    
		  End Try
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateSearch(siteId As Integer, terms As String, countryId As Integer) As Integer
		  Try
		    
		    Var row As New DatabaseRow
		    
		    row.Column("site_id").IntegerValue = siteId
		    row.Column("terms").StringValue = terms
		    
		    If countryId > 0 Then
		      row.Column("country_id").IntegerValue = countryId
		    End If
		    
		    DB.AddRow("search", row)
		    
		    Var sql As String = "SELECT last_insert_rowid() AS search_id"
		    Var rs As RowSet = DB.SelectSQL(sql)
		    
		    Return rs.Column("search_id").IntegerValue
		    
		  Catch err As DatabaseException
		    
		    MessageBox("DB Error: " + err.Message)
		    Return 0
		    
		  End Try
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteResult(id As Integer) As Boolean
		  Try
		    
		    Var sql As String = "DELETE FROM result WHERE id = ?"
		    DB.ExecuteSQL(sql, id)
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("Unable to delete the result")
		    Return False
		    
		  End Try
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DeleteSearch(id As Integer, cascade As Boolean) As Boolean
		  Try
		    
		    DB.BeginTransaction
		    
		    If cascade Then
		      Var resultSQL As String = "DELETE FROM result WHERE search_id = ?"
		      DB.ExecuteSQL(resultSQL, id)
		    End If
		    
		    Var searchSQL As String = "DELETE FROM search WHERE id = ?"
		    DB.ExecuteSQL(searchSQL, id)
		    
		    DB.CommitTransaction
		    
		  Catch err As DatabaseException
		    
		    DB.RollbackTransaction
		    
		    MessageDialog.Show("Unable to delete the search")
		    Return False
		    
		  End Try
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub FindResults(resultsList As DesktopListBox, fields() As Pair, searchTerms As String, name As String, sellerName As String)
		  // Clear the ListBox and reload it with the data from the search results table.
		  resultsList.RemoveAllRows
		  
		  Try
		    
		    Var sql As String = "SELECT r.* FROM search s JOIN result r ON s.id = r.search_id" _
		    + " WHERE LOWER(s.terms) LIKE LOWER(? || '%')" _ 
		    + " AND LOWER(r.name) LIKE LOWER(? || '%')" _ 
		    + " AND LOWER(r.seller_name) LIKE LOWER(? || '%')"
		    
		    Var rs As RowSet = DB.SelectSQL(sql, searchTerms, name, sellerName)
		    
		    // Loop through each row, one-by-one, and add it to the ListBox.
		    For Each row As DatabaseRow In rs
		      Var values() As String
		      
		      // Add 'tagged' field
		      values.Add("")
		      
		      For Each field As Pair In fields
		        values.Add(row.Column(field.Left.StringValue).StringValue)
		      Next
		      
		      resultsList.AddRow(values)
		      
		      Var lastRowIndex As Integer
		      lastRowIndex = resultsList.LastAddedRowIndex
		      
		      resultsList.RowTagAt(lastRowIndex) = row.Column("id").IntegerValue
		      
		      resultsList.CellTypeAt(lastRowIndex, 0) = DesktopListBox.CellTypes.CheckBox
		      
		      If row.Column("tagged").BooleanValue Then
		        resultsList.CellCheckBoxStateAt(lastRowIndex, 0) = DesktopCheckBox.VisualStates.Checked
		      End If
		    Next
		    
		    rs.Close
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookupCountryCode(name As String) As String
		  Try
		    
		    Var sql As String = "SELECT * FROM country WHERE name = ? AND active"
		    Var rs As RowSet = DB.SelectSQL(sql, name)
		    
		    Var code As String = rs.Column("code").StringValue
		    
		    rs.Close
		    
		    Return code
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return ""
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LookupCountryId(name As String) As Integer
		  Try
		    
		    Var sql As String = "SELECT * FROM country WHERE name = ? AND active"
		    Var rs As RowSet = DB.SelectSQL(sql, name)
		    
		    Var id As Integer
		    id = rs.Column("id").IntegerValue
		    
		    rs.Close
		    
		    Return id
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return 0
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDatabase()
		  Var source As FolderItem = SpecialFolder.Resource("crawler.sqlite")
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
		    DB.DatabaseFile = SpecialFolder.ApplicationData.Child(name).Child("crawler.sqlite")
		    DB.Connect
		    
		  Catch e As DatabaseException
		    MessageBox(e.Message)
		    Quit
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadConfiguration() As String
		  Try
		    
		    Var sql As String = "SELECT * FROM settings LIMIT 1"
		    Var rs As RowSet = DB.SelectSQL(sql)
		    
		    Var token As String
		    
		    If rs <> Nil And Not rs.BeforeFirstRow Then
		      token = rs.Column("api_key").StringValue
		    End If
		    
		    rs.Close
		    
		    Return token
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return ""
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadCountryList(countryList As DesktopPopupMenu)
		  countryList.RemoveAllRows
		  
		  Try
		    
		    Var sql As String = "SELECT * FROM country WHERE active ORDER BY name"
		    Var rs As RowSet = DB.SelectSQL(sql)
		    
		    For Each row As DatabaseRow In rs
		      countryList.AddRow(row.Column("name").StringValue)
		      countryList.RowTagAt(countryList.LastAddedRowIndex) = row.Column("id").IntegerValue
		    Next
		    
		    rs.Close
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadItemImageByResult(resultId As Integer) As ItemImage
		  Try
		    
		    Var sql As String = "SELECT * FROM item_image WHERE result_id = ?"
		    Var rs As RowSet = DB.SelectSQL(sql, resultId)  
		    
		    Var itemImage As SearchDatabase.ItemImage = New ItemImage
		    
		    If Not rs.AfterLastRow Then
		      itemImage.Data = rs.Column("image_data").StringValue
		      itemImage.Format = rs.Column("format").StringValue
		      itemImage.Hash = rs.Column("hash").StringValue
		      itemImage.Type = rs.Column("type").StringValue
		    End If
		    
		    rs.Close
		    
		    Return itemImage
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return Nil
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadSearchList(searchList As DesktopListBox)
		  searchList.RemoveAllRows
		  
		  Try
		    
		    Var sql As String = "SELECT search.id, search.timestamp, COUNT(result.id) as count," _ 
		    + "(SELECT name FROM site WHERE site.id = search.site_id) AS site,search.terms, " _ 
		    + "(SELECT name FROM country WHERE country.id = search.country_id) AS geolocation " _
		    + "FROM search LEFT JOIN result ON result.search_id = search.id " _
		    + "GROUP BY search.id ORDER BY search.timestamp DESC"
		    
		    Var rs As RowSet = DB.SelectSQL(sql)
		    
		    For Each row As DatabaseRow In rs
		      searchList.AddRow(row.Column("site"), row.Column("terms").StringValue, row.Column("geolocation").StringValue, row.Column("timestamp").StringValue, row.Column("count").StringValue)
		      searchList.RowTagAt(searchList.LastAddedRowIndex) = row.Column("id").IntegerValue
		    Next
		    
		    rs.Close
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadSearchResults(resultsList As DesktopListBox, searchId As Integer, fields() As Pair, Optional searchTerms As String, Optional tagged As Boolean)
		  // Clear the ListBox and reload it with the data from the search results table.
		  resultsList.RemoveAllRows
		  
		  Try
		    
		    Var sql As String = "SELECT * FROM result WHERE search_id = ?"
		    Var rs As RowSet
		    
		    If tagged Then
		      sql = sql + " AND tagged"
		    End If
		    
		    If searchTerms.IsEmpty Then
		      sql = sql + " ORDER BY timestamp DESC"
		      rs = DB.SelectSQL(sql, searchId)  
		    Else
		      sql = sql + " AND name LIKE ? ORDER BY timestamp DESC"
		      searchTerms = "%" + searchTerms + "%"
		      rs = DB.SelectSQL(sql, searchId, searchTerms)
		    End If
		    
		    // Loop through each row, one-by-one, and add it to the ListBox.
		    For Each row As DatabaseRow In rs
		      Var values() As String
		      
		      // Add 'tagged' field
		      values.Add("")
		      
		      For Each field As Pair In fields
		        values.Add(row.Column(field.Left.StringValue).StringValue)
		      Next
		      
		      resultsList.AddRow(values)
		      
		      Var lastRowIndex As Integer
		      lastRowIndex = resultsList.LastAddedRowIndex
		      
		      resultsList.RowTagAt(lastRowIndex) = row.Column("id").IntegerValue
		      
		      resultsList.CellTypeAt(lastRowIndex, 0) = DesktopListBox.CellTypes.CheckBox
		      
		      If row.Column("tagged").BooleanValue Then
		        resultsList.CellCheckBoxStateAt(lastRowIndex, 0) = DesktopCheckBox.VisualStates.Checked
		      End If
		    Next
		    
		    rs.Close
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadSiteByName(name As String) As SiteDetails
		  Try
		    
		    Var sql As String = "SELECT * FROM site WHERE name = ? AND active"
		    Var rs As RowSet = DB.SelectSQL(sql, name)
		    
		    Var siteDetails As New SearchDatabase.SiteDetails
		    
		    siteDetails.URL = rs.Column("url").StringValue
		    siteDetails.Scenario = rs.Column("scenario").StringValue
		    siteDetails.ExtractRules = rs.Column("extract_rules").StringValue
		    siteDetails.ItemRules = rs.Column("item_rules").StringValue
		    siteDetails.DefaultCountryId = rs.Column("default_country_id").IntegerValue
		    
		    rs.Close
		    
		    Return siteDetails
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return Nil
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ReadSiteList(siteList As DesktopPopupMenu)
		  // Clear the list and reload it with the data from the site table.
		  siteList.RemoveAllRows
		  
		  Try
		    
		    // Get rows from the product table.
		    Var sql As String = "SELECT * FROM site WHERE active ORDER BY name"
		    Var data As RowSet = DB.SelectSQL(sql)
		    
		    // Loop through each row, one-by-one, and add it to the list.
		    For Each row As DatabaseRow In data
		      siteList.AddRow(row.Column("name").StringValue)
		      siteList.RowTagAt(siteList.LastAddedRowIndex) = row.Column("id").IntegerValue
		    Next
		    
		    data.Close
		    
		  Catch err As DatabaseException
		    
		    MessageDialog.Show("DB Error: " + err.Message)
		    Return
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateResultTag(id As Integer, tagged As Boolean)
		  Try
		    
		    Var sql As String = "UPDATE result SET tagged = ? WHERE id = ?"
		    DB.ExecuteSQL(sql, tagged, id)
		    
		  Catch err As DatabaseException
		    
		    MessageBox("DB Error: " + err.Message)
		    Return
		    
		  End Try
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteConfiguration()
		  Try
		    
		    Var sql As String = "INSERT INTO settings(id, api_key) VALUES(?, ?) ON CONFLICT(id) DO UPDATE SET api_key = ?"
		    DB.ExecuteSQL(sql, 1, App.apiToken, App.apiToken)
		    
		  Catch err As DatabaseException
		    
		    MessageBox("DB Error: " + err.Message)
		    Return 
		    
		  End Try
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DB As SQLiteDatabase
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
