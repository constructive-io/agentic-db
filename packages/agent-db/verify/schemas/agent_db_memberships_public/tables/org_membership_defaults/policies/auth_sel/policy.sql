-- Verify: schemas/agent_db_memberships_public/tables/org_membership_defaults/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agent_db_memberships_public.org_membership_defaults');


