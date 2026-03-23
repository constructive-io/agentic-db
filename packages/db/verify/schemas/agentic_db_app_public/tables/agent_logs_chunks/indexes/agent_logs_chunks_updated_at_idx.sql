-- Verify: schemas/agentic_db_app_public/tables/agent_logs_chunks/indexes/agent_logs_chunks_updated_at_idx


SELECT verify_index('agentic_db_app_public.agent_logs_chunks', 'agent_logs_chunks_updated_at_idx');


