-- Verify: schemas/agentic_db_app_public/tables/message_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.message_chunks', 'select', 'authenticated');


