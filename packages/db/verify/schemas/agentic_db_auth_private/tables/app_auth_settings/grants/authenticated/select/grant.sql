-- Verify: schemas/agentic_db_auth_private/tables/app_auth_settings/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_auth_private.app_auth_settings', 'select', 'authenticated');


