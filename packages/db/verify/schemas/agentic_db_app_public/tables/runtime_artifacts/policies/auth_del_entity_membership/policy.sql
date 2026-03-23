-- Verify: schemas/agentic_db_app_public/tables/runtime_artifacts/policies/auth_del_entity_membership/policy


SELECT verify_policy('auth_del_entity_membership', 'agentic_db_app_public.runtime_artifacts');


