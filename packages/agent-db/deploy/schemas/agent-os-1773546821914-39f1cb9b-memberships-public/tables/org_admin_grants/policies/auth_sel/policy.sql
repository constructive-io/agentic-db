-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_admin_grants/table


CREATE POLICY auth_sel ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_admin_grants
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id() AND org_sprt.is_admin IS TRUE)
);

