-- Deploy: schemas/agentic_db_app_public/tables/agent_logs_chunks/policies/auth_del_auth_del_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agent_logs_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


CREATE POLICY auth_del_auth_del_entity_membership ON agentic_db_app_public.agent_logs_chunks
FOR DELETE
TO authenticated
USING (
  agent_logs_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

