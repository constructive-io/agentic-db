-- Verify: schemas/agentic_db_app_public/tables/autonomy_record_links/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.autonomy_record_links', 'delete', 'authenticated');


