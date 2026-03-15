-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/policies/auth_sel_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tasks/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/deal_contacts/policies/auth_del_entity_membership/policy


CREATE POLICY auth_sel_entity_membership ON "agent-os-1773546821914-39f1cb9b-app-public".tasks
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

