-- Verify: schemas/agent_db_app_public/tables/skill_executions/indexes/skill_executions_status_idx


SELECT verify_index('agent_db_app_public.skill_executions', 'skill_executions_status_idx');


