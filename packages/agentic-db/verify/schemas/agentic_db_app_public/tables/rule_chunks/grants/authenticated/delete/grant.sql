-- Verify: schemas/agentic_db_app_public/tables/rule_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.rule_chunks', 'delete', 'authenticated');


