-- Verify: schemas/agent_db_app_public/tables/workflow_steps/indexes/workflow_steps_workflow_id_idx


SELECT verify_index('agent_db_app_public.workflow_steps', 'workflow_steps_workflow_id_idx');


