-- Verify: schemas/agentic_db_limits_public/tables/app_limits/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_limits_public.app_limits', 'insert', 'authenticated');


