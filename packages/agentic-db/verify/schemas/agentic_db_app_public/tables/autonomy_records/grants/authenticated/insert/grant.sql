-- Verify: schemas/agentic_db_app_public/tables/autonomy_records/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.autonomy_records', 'insert', 'authenticated');


