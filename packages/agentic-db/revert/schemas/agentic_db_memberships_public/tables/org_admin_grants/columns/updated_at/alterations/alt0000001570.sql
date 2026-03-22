-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/updated_at/alterations/alt0000001570


ALTER TABLE agentic_db_memberships_public.org_admin_grants 
  ALTER COLUMN updated_at DROP DEFAULT;


