-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/id/alterations/alt0000002895


ALTER TABLE agentic_db_memberships_public.app_memberships 
  ALTER COLUMN id DROP NOT NULL;


