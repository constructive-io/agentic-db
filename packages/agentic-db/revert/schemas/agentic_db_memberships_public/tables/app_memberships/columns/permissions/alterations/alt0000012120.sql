-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/permissions/alterations/alt0000012120


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN permissions DROP NOT NULL;


