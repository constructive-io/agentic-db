-- Deploy: schemas/agentic_db_app_public/tables/autonomy_record_links/policies/auth_del_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_links/table
-- requires: schemas/agentic_db_app_public/tables/autonomy_record_chunks/indexes/autonomy_record_chunks_autonomy_record_id_idx


CREATE POLICY auth_del_entity_membership ON "agentic_db_app_public".autonomy_record_links
FOR DELETE
TO authenticated
USING (
  entity_id IN (SELECT org_sprt.entity_id
  FROM "agentic_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

