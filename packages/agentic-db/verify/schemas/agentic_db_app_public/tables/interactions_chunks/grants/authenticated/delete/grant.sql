-- Verify: schemas/agentic_db_app_public/tables/interactions_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.interactions_chunks', 'delete', 'authenticated');


