-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitstr/alterations/alt0000004498


ALTER TABLE agentic_db_permissions_public.org_permissions 
  ALTER COLUMN bitstr DROP NOT NULL;


