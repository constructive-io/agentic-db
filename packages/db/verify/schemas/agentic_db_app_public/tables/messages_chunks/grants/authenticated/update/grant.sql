-- Verify: schemas/agentic_db_app_public/tables/messages_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.messages_chunks', 'update', 'authenticated');


