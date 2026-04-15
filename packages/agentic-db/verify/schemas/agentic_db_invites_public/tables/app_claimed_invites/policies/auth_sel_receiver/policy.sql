-- Verify: schemas/agentic_db_invites_public/tables/app_claimed_invites/policies/auth_sel_receiver/policy


SELECT verify_policy('auth_sel_receiver', 'agentic_db_invites_public.app_claimed_invites');


