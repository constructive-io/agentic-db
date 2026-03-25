-- Deploy: schemas/agentic_db_app_public/tables/conversations_chunks/policies/auth_del_auth_del_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations_chunks/table
-- requires: schemas/agentic_db_app_public/tables/expenses/indexes/expenses_tags_gin_idx


CREATE POLICY auth_del_auth_del_entity_membership ON "agentic_db_app_public".conversations_chunks
FOR DELETE
TO authenticated
USING (
  conversations_id IN (SELECT org_sprt.entity_id
  FROM "agentic_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

