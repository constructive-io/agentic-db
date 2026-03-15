-- Verify: schemas/agent_db_app_public/tables/list_items/policies/auth_del_entity_membership/policy


SELECT verify_policy('auth_del_entity_membership', 'agent_db_app_public.list_items');


