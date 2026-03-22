-- Verify: schemas/agentic_db_memberships_public/tables/org_owner_grants/policies/auth_sel/policy


SELECT verify_policy('auth_sel', 'agentic_db_memberships_public.org_owner_grants');


