-- Verify: schemas/agentic_db_app_public/tables/conversations_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.conversations_chunks', 'update', 'authenticated');


