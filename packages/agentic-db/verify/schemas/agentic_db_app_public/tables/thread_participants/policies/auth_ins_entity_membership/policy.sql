-- Verify: schemas/agentic_db_app_public/tables/thread_participants/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agentic_db_app_public.thread_participants');


