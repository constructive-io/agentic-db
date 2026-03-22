-- Verify: schemas/agentic_db_app_public/tables/agents/grants/authenticated/select/grant


SELECT verify_table_grant('agentic_db_app_public.agents', 'select', 'authenticated');


