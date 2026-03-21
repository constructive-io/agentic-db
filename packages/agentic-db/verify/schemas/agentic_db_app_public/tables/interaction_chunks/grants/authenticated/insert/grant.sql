-- Verify: schemas/agentic_db_app_public/tables/interaction_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.interaction_chunks', 'insert', 'authenticated');


