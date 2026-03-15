-- Verify: schemas/agent_db_app_public/tables/deal_documents/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agent_db_app_public.deal_documents');


