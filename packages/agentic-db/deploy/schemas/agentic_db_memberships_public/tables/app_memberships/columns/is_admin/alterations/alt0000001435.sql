-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_admin/alterations/alt0000001435
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_admin/column


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN is_admin SET NOT NULL;

