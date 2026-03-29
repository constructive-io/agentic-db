-- Deploy: schemas/agentic_db_app_public/tables/memories_chunks/policies/auth_upd_auth_upd_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/memories_chunks/table
-- requires: schemas/agentic_db_app_public/tables/code_chunks/indexes/code_chunks_language_idx


CREATE POLICY auth_upd_auth_upd_entity_membership ON agentic_db_app_public.memories_chunks
FOR UPDATE
TO authenticated
USING (
  memories_id IN (SELECT org_sprt.entity_id
  FROM agentic_db_memberships_private.org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

