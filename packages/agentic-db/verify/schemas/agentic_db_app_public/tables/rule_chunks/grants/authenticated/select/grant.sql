-- Verify: schemas/agentic_db_app_public/tables/rule_chunks/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.rule_chunks', 'select', 'authenticated');


