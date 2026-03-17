-- Verify: schemas/agentic_db_invites_public/tables/invites/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agentic_db_invites_public.invites');


