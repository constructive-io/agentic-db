-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-auth-private/tables/app_auth_settings/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-auth-private".app_auth_settings
FOR SELECT
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.is_admin IS TRUE OR app_sprt.is_owner IS TRUE))
);

