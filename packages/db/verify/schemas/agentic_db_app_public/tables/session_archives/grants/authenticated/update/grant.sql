-- Verify: schemas/agentic_db_app_public/tables/session_archives/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.session_archives', 'update', 'authenticated');


