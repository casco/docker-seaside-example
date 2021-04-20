"
WAAdmin register: SeasideDockerExampleComponent asApplicationAt: 'example'
"
Class {
	#name : #SeasideDockerExampleComponent,
	#superclass : #WAComponent,
	#category : #SeasideDockerExample
}

{ #category : #rendering }
SeasideDockerExampleComponent >> renderContentOn: aCanvas [
	aCanvas
		paragraph: 'Working directory: ' , FileSystem disk workingDirectory fullName.
	aCanvas paragraph: 'Contents'.
	aCanvas
		unorderedList: [ FileSystem disk workingDirectory entries
				do: [ :each | 
					aCanvas listItem: each name.
					each isDirectory
						ifTrue: [ aCanvas
								unorderedList:
									[ each asFileReference entries do: [ :subEach | aCanvas listItem: subEach name ] ] ] ] ]
]
