Class {
	#name : #BaselineOfSeasideDockerExample,
	#superclass : #BaselineOf,
	#category : #BaselineOfSeasideDockerExample
}

{ #category : #baselines }
BaselineOfSeasideDockerExample >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec repository: 'bitbucket://casco/scolr'.
			self seaside: spec.
			spec
				package: 'SeasideDockerExample'
				with: [ spec requires: #('Seaside3') ] ]
]

{ #category : #baselines }
BaselineOfSeasideDockerExample >> seaside: spec [
	spec baseline: 'Seaside3' with: [ spec repository: 'github://SeasideSt/Seaside:v3.4.4/repository' ].

]
