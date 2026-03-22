-- Verify: schemas/agentic_db_invites_public/tables/claimed_invites/policies/auth_sel_receiver/policy


SELECT verify_policy('auth_sel_receiver', 'agentic_db_invites_public.claimed_invites');


