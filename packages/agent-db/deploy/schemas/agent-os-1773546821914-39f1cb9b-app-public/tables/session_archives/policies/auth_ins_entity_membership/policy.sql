-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/policies/auth_ins_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/session_archives/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/context_relations/columns/strength/column


CREATE POLICY auth_ins_entity_membership ON "agent-os-1773546821914-39f1cb9b-app-public".session_archives
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent-os-1773546821914-39f1cb9b-memberships-private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

