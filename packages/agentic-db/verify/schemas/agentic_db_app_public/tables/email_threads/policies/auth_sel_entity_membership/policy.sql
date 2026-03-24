-- Verify: schemas/agentic_db_app_public/tables/email_threads/policies/auth_sel_entity_membership/policy


SELECT verify_policy('auth_sel_entity_membership', 'agentic_db_app_public.email_threads');


