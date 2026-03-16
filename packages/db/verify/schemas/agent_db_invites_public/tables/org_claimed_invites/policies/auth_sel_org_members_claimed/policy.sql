-- Verify: schemas/agent_db_invites_public/tables/org_claimed_invites/policies/auth_sel_org_members_claimed/policy


SELECT verify_policy('auth_sel_org_members_claimed', 'agent_db_invites_public.org_claimed_invites');


