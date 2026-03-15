-- Verify: schemas/agent_db_app_public/tables/context_relations/policies/auth_upd_entity_membership/policy


SELECT verify_policy('auth_upd_entity_membership', 'agent_db_app_public.context_relations');


