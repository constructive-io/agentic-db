-- Deploy: schemas/agentic_db_storage_public/tables/buckets/policies/auth_sel_pub/policy
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


CREATE POLICY auth_sel_pub ON agentic_db_storage_public.buckets
FOR SELECT
TO authenticated
USING (
  is_public = true
);

