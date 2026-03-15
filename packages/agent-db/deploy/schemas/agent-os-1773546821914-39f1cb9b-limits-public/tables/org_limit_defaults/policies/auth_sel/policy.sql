-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limit_defaults/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limit_defaults/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-limits-public".org_limit_defaults
FOR SELECT
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent-os-1773546821914-39f1cb9b-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000100000') = '000000000000000000100000')
);

