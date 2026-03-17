-- Verify: schemas/agentic_db_app_public/tables/chats/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.chats', 'select', 'authenticated');


