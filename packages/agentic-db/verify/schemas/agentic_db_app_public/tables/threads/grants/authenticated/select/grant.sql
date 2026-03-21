-- Verify: schemas/agentic_db_app_public/tables/threads/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.threads', 'select', 'authenticated');


