-- Deploy: schemas/agentic_db_app_public/tables/autonomy_records_chunks/policies/auth_ins_auth_ins_entity_membership/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/autonomy_records_chunks/table
-- requires: schemas/agentic_db_app_public/tables/raw_contact_urls/indexes/raw_contact_urls_url_idx


CREATE POLICY auth_ins_auth_ins_entity_membership ON "agentic_db_app_public".autonomy_records_chunks
FOR INSERT
TO authenticated
WITH CHECK (
  autonomy_records_id IN (SELECT org_sprt.entity_id
  FROM "agentic_db_memberships_private".org_memberships_sprt AS org_sprt
  WHERE
      org_sprt.actor_id = jwt_public.current_user_id())
);

