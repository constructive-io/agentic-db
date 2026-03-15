-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/policies/auth_ins_own/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table


CREATE POLICY auth_ins_own ON agent_db_memberships_public.org_memberships
FOR INSERT
TO authenticated
WITH CHECK (
  actor_id = jwt_public.current_user_id()
);

