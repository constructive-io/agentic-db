-- Deploy: schemas/agent_db_app_public/tables/agent_tools/policies/auth_sel_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_tools/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/constraints/workflow_runs_workflow_id_fkey/constraint


CREATE POLICY auth_sel_entity_membership ON "agent_db_app_public".agent_tools
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

