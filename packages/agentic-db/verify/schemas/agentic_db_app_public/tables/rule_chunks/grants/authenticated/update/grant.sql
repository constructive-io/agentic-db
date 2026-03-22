-- Verify: schemas/agentic_db_app_public/tables/rule_chunks/grants/authenticated/update/grant


SELECT verify_table_grant('agentic_db_app_public.rule_chunks', 'update', 'authenticated');


