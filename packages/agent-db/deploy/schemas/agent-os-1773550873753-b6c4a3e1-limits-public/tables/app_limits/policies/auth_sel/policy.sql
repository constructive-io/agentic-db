-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-limits-public/tables/app_limits/table


CREATE POLICY auth_sel ON "agent-os-1773550873753-b6c4a3e1-limits-public".app_limits
FOR SELECT
TO authenticated
USING (
  EXISTS (SELECT 1
  FROM "agent-os-1773550873753-b6c4a3e1-memberships-private".app_memberships_sprt AS app_sprt
  WHERE
      app_sprt.actor_id = jwt_public.current_user_id() AND (app_sprt.permissions & '000000000000000000100000') = '000000000000000000100000')
);

