-- Verify: schemas/agentic_db_app_public/tables/interaction_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.interaction_chunks', 'select', 'authenticated');


