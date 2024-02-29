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
					FolderItem = Li4vQnVpbGRzJTIwLSUyMFNpdGVTZWFyY2gvY3Jhd2xlci5zcWxpdGU=
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
					FolderItem = Li4vQnVpbGRzJTIwLSUyMFNpdGVTZWFyY2gvY3Jhd2xlci5zcWxpdGU=
				End
			End
#tag EndBuildAutomation
