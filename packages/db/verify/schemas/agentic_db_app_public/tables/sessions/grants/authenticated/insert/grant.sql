-- Verify: schemas/agentic_db_app_public/tables/sessions/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.sessions', 'insert', 'authenticated');


