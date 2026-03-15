-- Deploy: schemas/agent_db_app_public/tables/agent_spawns/policies/auth_ins_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agent_spawns/table
-- requires: schemas/agent_db_app_public/tables/workflow_runs/columns/error/column


CREATE POLICY auth_ins_entity_membership ON agent_db_app_public.agent_spawns
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agent_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

