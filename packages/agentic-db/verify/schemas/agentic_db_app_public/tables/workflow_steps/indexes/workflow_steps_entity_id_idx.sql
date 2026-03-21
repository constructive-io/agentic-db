-- Verify: schemas/agentic_db_app_public/tables/workflow_steps/indexes/workflow_steps_entity_id_idx


SELECT verify_index('agentic_db_app_public.workflow_steps', 'workflow_steps_entity_id_idx');


