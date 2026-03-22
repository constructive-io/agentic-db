-- Verify: schemas/agentic_db_app_public/tables/agent_log_chunks/policies/auth_del_entity_membership/policy


SELECT verify_policy('auth_del_entity_membership', 'agentic_db_app_public.agent_log_chunks');


