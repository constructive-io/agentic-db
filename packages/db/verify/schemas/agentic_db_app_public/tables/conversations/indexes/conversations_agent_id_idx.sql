-- Verify: schemas/agentic_db_app_public/tables/conversations/indexes/conversations_agent_id_idx


SELECT verify_index('agentic_db_app_public.conversations', 'conversations_agent_id_idx');


