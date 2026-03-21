-- Verify: schemas/agentic_db_app_public/tables/thread_chunks/policies/auth_upd_entity_membership/policy


SELECT verify_policy('auth_upd_entity_membership', 'agentic_db_app_public.thread_chunks');


