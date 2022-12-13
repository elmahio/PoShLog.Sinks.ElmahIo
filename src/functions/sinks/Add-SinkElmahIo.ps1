function Add-SinkElmahIo {
	<#
	.SYNOPSIS
		Writes log events into elmah.io
	.DESCRIPTION
		Writes log events into elmah.io server
	.PARAMETER LoggerConfig
		Instance of LoggerConfiguration
	.PARAMETER ApiKey
		The API key available on the elmah.io UI
	.PARAMETER LogId
		The log ID available on the elmah.io UI
	.PARAMETER RestrictedToMinimumLevel
		The minimum level for events passed through the sink.
	.INPUTS
		Instance of LoggerConfiguration
	.OUTPUTS
		LoggerConfiguration object allowing method chaining
	.EXAMPLE
		PS> New-Logger | Add-SinkElmahIo -ApiKey 'API_KEY' -LogId 'LOG_ID' | Start-Logger
	#>

	[Cmdletbinding()]
	param(
		[Parameter(Mandatory = $true, ValueFromPipeline = $true)]
		[Serilog.LoggerConfiguration]$LoggerConfig,

		[Parameter(Mandatory = $true)]
		[string]$ApiKey,

		[Parameter(Mandatory = $true)]
		[string]$LogId,

		[Parameter(Mandatory = $false)]
		[Serilog.Events.LogEventLevel]$RestrictedToMinimumLevel = [Serilog.Events.LogEventLevel]::Verbose
	)

	# CALL C# method here
	$LoggerConfig = [Serilog.LoggerConfigurationElmahIoExtensions]::ElmahIo($LoggerConfig.WriteTo, $ApiKey, $LogId)

	$LoggerConfig
}
