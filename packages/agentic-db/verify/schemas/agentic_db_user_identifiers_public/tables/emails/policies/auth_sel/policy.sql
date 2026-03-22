-- Verify: schemas/agentic_db_user_identifiers_public/tables/emails/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_user_identifiers_public.emails');


