-- Verify: schemas/agentic_db_app_public/tables/rules_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.rules_chunks', 'select', 'authenticated');


