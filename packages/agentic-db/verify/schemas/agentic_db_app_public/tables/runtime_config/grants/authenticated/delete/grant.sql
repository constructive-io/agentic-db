-- Verify: schemas/agentic_db_app_public/tables/runtime_config/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.runtime_config', 'delete', 'authenticated');


