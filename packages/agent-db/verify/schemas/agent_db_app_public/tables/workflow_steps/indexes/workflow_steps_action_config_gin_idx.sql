-- Verify: schemas/agent_db_app_public/tables/workflow_steps/indexes/workflow_steps_action_config_gin_idx


SELECT verify_index('agent_db_app_public.workflow_steps', 'workflow_steps_action_config_gin_idx');


