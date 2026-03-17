-- Verify: schemas/agentic_db_memberships_public/tables/org_memberships/policies/auth_sel_own/policy


SELECT verify_policy('auth_sel_own', 'agentic_db_memberships_public.org_memberships');


