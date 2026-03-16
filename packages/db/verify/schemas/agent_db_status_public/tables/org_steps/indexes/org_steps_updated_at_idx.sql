-- Verify: schemas/agent_db_status_public/tables/org_steps/indexes/org_steps_updated_at_idx


SELECT verify_index('agent_db_status_public.org_steps', 'org_steps_updated_at_idx');


