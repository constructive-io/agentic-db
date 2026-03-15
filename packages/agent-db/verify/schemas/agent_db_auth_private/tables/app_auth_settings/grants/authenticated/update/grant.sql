-- Verify: schemas/agent_db_auth_private/tables/app_auth_settings/grants/authenticated/update/grant


SELECT verify_table_grant('agent_db_auth_private.app_auth_settings', 'update', 'authenticated');


