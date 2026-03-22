-- Verify: schemas/agentic_db_app_public/tables/agent_task_chunks/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agentic_db_app_public.agent_task_chunks');


