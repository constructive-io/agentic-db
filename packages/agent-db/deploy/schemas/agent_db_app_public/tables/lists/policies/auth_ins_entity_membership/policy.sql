-- Deploy: schemas/agent_db_app_public/tables/lists/policies/auth_ins_entity_membership/policy
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/habit_logs/columns/tags/column


CREATE POLICY auth_ins_entity_membership ON "agent_db_app_public".lists
FOR INSERT
TO authenticated
WITH CHECK (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agent_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

