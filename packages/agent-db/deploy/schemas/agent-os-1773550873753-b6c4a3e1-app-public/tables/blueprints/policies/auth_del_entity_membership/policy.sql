-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/policies/auth_del_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/blueprints/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/embedding/column


CREATE POLICY auth_del_entity_membership ON "agent-os-1773550873753-b6c4a3e1-app-public".blueprints
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773550873753-b6c4a3e1-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

