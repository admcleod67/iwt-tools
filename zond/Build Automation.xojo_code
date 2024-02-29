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
					FolderItem = Li4vQnVpbGRzJTIwLSUyMEdvb2dsZVNlYXJjaC9zZWFyY2guc3FsaXRl
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
					FolderItem = Li4vQnVpbGRzJTIwLSUyMEdvb2dsZVNlYXJjaC9zZWFyY2guc3FsaXRl
				End
			End
#tag EndBuildAutomation
