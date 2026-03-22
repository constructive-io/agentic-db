-- Verify: schemas/agentic_db_app_public/tables/autonomy_record_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.autonomy_record_chunks', 'insert', 'authenticated');


