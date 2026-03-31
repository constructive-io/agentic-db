-- Verify: schemas/agentic_db_app_public/tables/contact_emails/policies/auth_del_entity_membership/policy


SELECT verify_policy('auth_del_entity_membership', 'agentic_db_app_public.contact_emails');


