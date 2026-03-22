-- Deploy: schemas/agentic_db_permissions_public/tables/app_permissions/columns/bitstr/alterations/alt0000001201
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_permissions_public/schema
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/table
-- requires: schemas/agentic_db_permissions_public/tables/app_permissions/columns/bitstr/column


ALTER TABLE agentic_db_permissions_public.app_permissions 
  ALTER COLUMN bitstr SET NOT NULL;

