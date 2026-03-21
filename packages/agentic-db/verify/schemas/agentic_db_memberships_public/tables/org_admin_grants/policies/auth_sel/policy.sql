-- Verify: schemas/agentic_db_memberships_public/tables/org_admin_grants/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_memberships_public.org_admin_grants');


