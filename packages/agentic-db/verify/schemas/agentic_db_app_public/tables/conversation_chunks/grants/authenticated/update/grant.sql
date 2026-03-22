-- Verify: schemas/agentic_db_app_public/tables/conversation_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.conversation_chunks', 'update', 'authenticated');


