-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_active/alterations/alt0000002637


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN is_active DROP NOT NULL;


