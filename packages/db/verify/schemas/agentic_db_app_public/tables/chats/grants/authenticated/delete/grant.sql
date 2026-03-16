-- Verify: schemas/agentic_db_app_public/tables/chats/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.chats', 'delete', 'authenticated');


