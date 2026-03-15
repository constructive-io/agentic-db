-- Verify: schemas/agent_db_status_public/tables/app_steps/indexes/app_steps_created_at_idx


SELECT verify_index('agent_db_status_public.app_steps', 'app_steps_created_at_idx');


