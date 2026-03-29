-- Revert: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/id/column


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  DROP COLUMN id RESTRICT;


