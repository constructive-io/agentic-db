-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/columns/id/alterations/alt0000001988


ALTER TABLE agentic_db_permissions_public.org_permissions 
  ALTER COLUMN id DROP NOT NULL;


