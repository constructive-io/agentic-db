-- Verify: schemas/agentic_db_app_public/tables/agent_collaborators/indexes/agent_collaborators_agent_id_idx


SELECT verify_index('agentic_db_app_public.agent_collaborators', 'agent_collaborators_agent_id_idx');


