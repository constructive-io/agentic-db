-- Revert: schemas/agentic_db_permissions_public/tables/org_permissions/columns/bitstr/column


ALTER TABLE agentic_db_permissions_public.org_permissions 
  DROP COLUMN bitstr RESTRICT;


