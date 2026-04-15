-- Revert: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/id/alterations/alt0000012292


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  ALTER COLUMN id DROP NOT NULL;


