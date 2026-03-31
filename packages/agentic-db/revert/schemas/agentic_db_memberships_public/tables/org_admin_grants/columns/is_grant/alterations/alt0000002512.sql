-- Revert: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/is_grant/alterations/alt0000002512




ALTER TABLE agentic_db_memberships_public.org_admin_grants 
    ALTER COLUMN is_grant DROP DEFAULT;



