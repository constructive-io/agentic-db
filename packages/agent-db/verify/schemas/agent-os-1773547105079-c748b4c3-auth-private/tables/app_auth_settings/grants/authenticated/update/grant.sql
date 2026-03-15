-- Verify: schemas/agent-os-1773547105079-c748b4c3-auth-private/tables/app_auth_settings/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773547105079-c748b4c3-auth-private.app_auth_settings', 'update', 'authenticated');


