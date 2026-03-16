-- Revert: schemas/agent_db_memberships_public/tables/org_memberships/policies/auth_del_delete_own/policy


DROP POLICY auth_del_delete_own ON "agent_db_memberships_public".org_memberships;


