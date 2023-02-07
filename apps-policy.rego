package play

import future.keywords.if
import future.keywords.contains
import future.keywords.in

default allow := false

allow if {
	# find action for the resource for the application
    some application in data.applications
    application.name == input.application
    
    some resource in application.resources
    resource.name == input.resource
    
    some action in resource.actions
    action.name == input.action
}
