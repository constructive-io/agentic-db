-- Verify: schemas/agentic_db_user_identifiers_public/tables/emails/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_user_identifiers_public.emails');


