-- Verify: schemas/agentic_db_app_public/tables/session_chunks/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agentic_db_app_public.session_chunks');


