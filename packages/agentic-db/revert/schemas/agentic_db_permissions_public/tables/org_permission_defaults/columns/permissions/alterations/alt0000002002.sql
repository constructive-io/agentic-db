-- Revert: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/permissions/alterations/alt0000002002


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  ALTER COLUMN permissions DROP NOT NULL;


