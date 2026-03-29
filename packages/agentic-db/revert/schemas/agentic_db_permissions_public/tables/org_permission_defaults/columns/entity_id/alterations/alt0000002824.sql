-- Revert: schemas/agentic_db_permissions_public/tables/org_permission_defaults/columns/entity_id/alterations/alt0000002824


ALTER TABLE agentic_db_permissions_public.org_permission_defaults 
  ALTER COLUMN entity_id DROP NOT NULL;


