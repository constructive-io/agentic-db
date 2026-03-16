-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/policies/auth_sel_own/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table


CREATE POLICY auth_sel_own ON "agent_db_memberships_public".app_memberships
FOR SELECT
TO authenticated
USING (
  actor_id = jwt_public.current_user_id()
);

