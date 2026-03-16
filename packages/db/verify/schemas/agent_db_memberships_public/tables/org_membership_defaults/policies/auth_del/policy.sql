-- Verify: schemas/agent_db_memberships_public/tables/org_membership_defaults/policies/auth_del/policy


SELECT verify_policy('auth_del', 'agent_db_memberships_public.org_membership_defaults');


