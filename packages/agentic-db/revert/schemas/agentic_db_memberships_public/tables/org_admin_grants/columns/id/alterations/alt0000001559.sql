-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/id/alterations/alt0000001559


ALTER TABLE agentic_db_memberships_public.org_admin_grants 
  ALTER COLUMN id DROP NOT NULL;


