-- Verify: schemas/agent-os-1773551593867-bac64076-auth-private/tables/app_auth_settings/grants/authenticated/update/grant


SELECT verify_table_grant('agent-os-1773551593867-bac64076-auth-private.app_auth_settings', 'update', 'authenticated');


