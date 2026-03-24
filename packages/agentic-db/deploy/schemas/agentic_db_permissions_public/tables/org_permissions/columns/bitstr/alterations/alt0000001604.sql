-- Deploy: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitstr/alterations/alt0000001604
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitstr/column


ALTER TABLE agentic_db_permissions_public.org_permissions 
  ALTER COLUMN bitstr SET NOT NULL;

