-- Verify: schemas/agent-os-1773550873753-b6c4a3e1-auth-private/tables/app_auth_settings/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773550873753-b6c4a3e1-auth-private.app_auth_settings', 'update', 'authenticated');


