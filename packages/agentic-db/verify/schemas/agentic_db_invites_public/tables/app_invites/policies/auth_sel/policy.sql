-- Verify: schemas/agentic_db_invites_public/tables/app_invites/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_invites_public.app_invites');


