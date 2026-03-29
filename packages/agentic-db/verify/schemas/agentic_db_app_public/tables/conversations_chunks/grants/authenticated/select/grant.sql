-- Verify: schemas/agentic_db_app_public/tables/conversations_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.conversations_chunks', 'select', 'authenticated');


