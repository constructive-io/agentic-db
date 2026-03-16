-- Verify: schemas/agentic_db_memberships_public/tables/app_memberships/policies/auth_sel_own/policy


SELECT verify_policy('auth_sel_own', 'agentic_db_memberships_public.app_memberships');


