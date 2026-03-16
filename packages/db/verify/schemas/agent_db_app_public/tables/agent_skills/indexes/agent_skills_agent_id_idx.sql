-- Verify: schemas/agent_db_app_public/tables/agent_skills/indexes/agent_skills_agent_id_idx


SELECT verify_index('agent_db_app_public.agent_skills', 'agent_skills_agent_id_idx');


