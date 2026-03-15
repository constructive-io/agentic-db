-- Verify: schemas/agent_db_app_public/tables/list_items/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agent_db_app_public.list_items');


