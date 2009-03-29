<cffunction name="onMissingTemplate" returntype="void" access="public" output="true">
	<cfargument name="targetpage" type="any" required="true">
	<cfscript>
		$simpleLock(execute="runOnMissingTemplate", scope="application", type="readOnly");
	</cfscript>
</cffunction>

<cffunction name="runOnMissingTemplate" returntype="void" access="public" output="true">
	<cfargument name="targetpage" type="any" required="true">
	<cfscript>
		var loc = StructNew();
		$header(statusCode=404, statustext="Not Found");
		$includeAndOutput(template="#application.wheels.eventPath#/onmissingtemplate.cfm");
	</cfscript>
</cffunction>