-- Verify: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773546821914-39f1cb9b-auth-private.app_auth_settings', 'update', 'authenticated');


