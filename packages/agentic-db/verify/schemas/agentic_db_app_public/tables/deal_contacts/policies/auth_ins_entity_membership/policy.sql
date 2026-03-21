-- Verify: schemas/agentic_db_app_public/tables/deal_contacts/policies/auth_ins_entity_membership/policy


SELECT verify_policy('auth_ins_entity_membership', 'agentic_db_app_public.deal_contacts');


