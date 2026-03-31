-- Verify: schemas/agentic_db_app_public/tables/contact_addresses/policies/auth_upd_entity_membership/policy


SELECT verify_policy('auth_upd_entity_membership', 'agentic_db_app_public.contact_addresses');


