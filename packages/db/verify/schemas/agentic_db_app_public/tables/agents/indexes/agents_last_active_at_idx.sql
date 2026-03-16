-- Verify: schemas/agentic_db_app_public/tables/agents/indexes/agents_last_active_at_idx


SELECT verify_index('agentic_db_app_public.agents', 'agents_last_active_at_idx');


