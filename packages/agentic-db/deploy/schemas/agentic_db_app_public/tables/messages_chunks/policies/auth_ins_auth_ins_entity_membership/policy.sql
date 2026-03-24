-- Deploy: schemas/agentic_db_app_public/tables/messages_chunks/policies/auth_ins_auth_ins_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skills/indexes/skills_is_active_idx


CREATE POLICY auth_ins_auth_ins_entity_membership ON agentic_db_app_public.messages_chunks
FOR INSERT
TO authenticated
WITH CHECK (
  messages_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

