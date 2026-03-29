-- Revert: schemas/agentic_db_memberships_public/tables/app_admin_grants/columns/id/alterations/alt0000004342


ALTER TABLE agentic_db_memberships_public.app_admin_grants 
  ALTER COLUMN id DROP NOT NULL;


