-- Verify: schemas/agentic_db_app_public/tables/rule_chunks/grants/authenticated/insert/grant


SELECT verify_table_grant('agentic_db_app_public.rule_chunks', 'insert', 'authenticated');


