-- Verify: schemas/agentic_db_app_public/tables/conversation_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.conversation_chunks', 'select', 'authenticated');


