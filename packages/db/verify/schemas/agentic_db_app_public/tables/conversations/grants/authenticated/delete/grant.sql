-- Verify: schemas/agentic_db_app_public/tables/conversations/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.conversations', 'delete', 'authenticated');


