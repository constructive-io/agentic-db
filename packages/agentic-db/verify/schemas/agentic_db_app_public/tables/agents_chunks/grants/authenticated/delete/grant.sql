-- Verify: schemas/agentic_db_app_public/tables/agents_chunks/grants/authenticated/delete/grant


SELECT verify_table_grant('agentic_db_app_public.agents_chunks', 'delete', 'authenticated');


