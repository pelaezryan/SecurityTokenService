﻿CREATE TABLE [sts].[ClientScopes]
(
    [Key] UNIQUEIDENTIFIER PRIMARY KEY,
	[ClientKey] UNIQUEIDENTIFIER NOT NULL,
	[ScopeKey] UNIQUEIDENTIFIER NOT NULL,
	FOREIGN KEY ([ClientKey]) REFERENCES [sts].[Clients]([Key]),
	FOREIGN KEY ([ScopeKey]) REFERENCES [sts].[Scopes]([Key])
)
