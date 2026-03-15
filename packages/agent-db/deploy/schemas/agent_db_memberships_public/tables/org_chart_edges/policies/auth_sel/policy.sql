-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/policies/auth_sel/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


CREATE POLICY auth_sel ON agent_db_memberships_public.org_chart_edges
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM agent_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

