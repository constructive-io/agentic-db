-- Verify: schemas/agentic_db_app_public/tables/interactions_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.interactions_chunks', 'select', 'authenticated');


