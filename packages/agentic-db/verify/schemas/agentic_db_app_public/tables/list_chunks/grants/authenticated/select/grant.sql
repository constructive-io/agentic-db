-- Verify: schemas/agentic_db_app_public/tables/list_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.list_chunks', 'select', 'authenticated');


