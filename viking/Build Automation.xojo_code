#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin SignProjectStep Sign
				  DeveloperID=
				End
				Begin CopyFilesBuildStep CopyMacOSDatabase
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vQnVpbGRzJTIwLSUyMFRheG9ub21pY1NlYXJjaC90YXhvbm9teS5zcWxpdGU=
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
				Begin CopyFilesBuildStep CopyWindowsDatabase
					AppliesTo = 0
					Architecture = 0
					Target = 0
					Destination = 1
					Subdirectory = 
					FolderItem = Li4vQnVpbGRzJTIwLSUyMFRheG9ub21pY1NlYXJjaC90YXhvbm9teS5zcWxpdGU=
				End
			End
#tag EndBuildAutomation
