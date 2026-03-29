-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_app_public.agents_chunks FROM authenticated;


