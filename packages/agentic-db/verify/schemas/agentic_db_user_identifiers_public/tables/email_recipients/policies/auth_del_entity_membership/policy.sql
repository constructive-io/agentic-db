-- Verify: schemas/agentic_db_user_identifiers_public/tables/email_recipients/policies/auth_del_entity_membership/policy


SELECT verify_policy('auth_del_entity_membership', 'agentic_db_user_identifiers_public.email_recipients');


