-- Verify: schemas/agent_db_app_public/tables/scheduled_jobs/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agent_db_app_public.scheduled_jobs');


