-- Verify: schemas/agent_db_app_public/tables/skills/indexes/skills_intent_trigger_hnsw_idx


SELECT verify_index('agent_db_app_public.skills', 'skills_intent_trigger_hnsw_idx');


