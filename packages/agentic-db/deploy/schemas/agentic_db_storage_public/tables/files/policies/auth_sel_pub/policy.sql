-- Deploy: schemas/agentic_db_storage_public/tables/files/policies/auth_sel_pub/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


CREATE POLICY auth_sel_pub ON agentic_db_storage_public.files
FOR SELECT
TO authenticated
USING (
  is_public = true
);

