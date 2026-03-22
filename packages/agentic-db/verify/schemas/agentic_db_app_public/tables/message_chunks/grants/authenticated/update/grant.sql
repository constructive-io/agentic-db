-- Verify: schemas/agentic_db_app_public/tables/message_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.message_chunks', 'update', 'authenticated');


