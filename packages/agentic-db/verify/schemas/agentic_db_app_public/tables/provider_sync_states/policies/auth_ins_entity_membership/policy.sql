-- Verify: schemas/agentic_db_app_public/tables/provider_sync_states/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agentic_db_app_public.provider_sync_states');


