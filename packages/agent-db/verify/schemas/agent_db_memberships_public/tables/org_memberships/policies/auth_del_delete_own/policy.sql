-- Verify: schemas/agent_db_memberships_public/tables/org_memberships/policies/auth_del_delete_own/policy


SELECT verify_policy('auth_del_delete_own', 'agent_db_memberships_public.org_memberships');


