-- Verify: schemas/agentic_db_app_public/tables/messages_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.messages_chunks', 'select', 'authenticated');


