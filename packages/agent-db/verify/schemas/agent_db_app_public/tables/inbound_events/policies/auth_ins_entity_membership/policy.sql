-- Verify: schemas/agent_db_app_public/tables/inbound_events/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agent_db_app_public.inbound_events');


