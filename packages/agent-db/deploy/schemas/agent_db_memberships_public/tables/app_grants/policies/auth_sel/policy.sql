-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table


CREATE POLICY auth_sel ON agent_db_memberships_public.app_grants
FOR SELECT
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM agent_db_memberships_private.app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000000001') = '000000000000000000000001')
);

