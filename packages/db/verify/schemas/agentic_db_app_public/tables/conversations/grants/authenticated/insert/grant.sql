-- Verify: schemas/agentic_db_app_public/tables/conversations/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.conversations', 'insert', 'authenticated');


