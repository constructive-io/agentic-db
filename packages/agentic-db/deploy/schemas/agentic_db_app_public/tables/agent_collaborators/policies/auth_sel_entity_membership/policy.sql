-- Deploy: schemas/agentic_db_app_public/tables/agent_collaborators/policies/auth_sel_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_collaborators/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/indexes/skill_chunks_skill_id_idx


CREATE POLICY auth_sel_entity_membership ON "agentic_db_app_public".agent_collaborators
FOR SELECT
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agentic_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

