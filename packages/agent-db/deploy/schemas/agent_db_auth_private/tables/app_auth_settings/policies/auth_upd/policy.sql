-- Deploy: schemas/agent_db_auth_private/tables/app_auth_settings/policies/auth_upd/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_auth_private/schema
-- requires: schemas/agent_db_auth_private/tables/app_auth_settings/table


CREATE POLICY auth_upd ON "agent_db_auth_private".app_auth_settings
FOR UPDATE
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent_db_memberships_private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.is_admin IS TRUE OR app_sprt.is_owner IS TRUE))
);

