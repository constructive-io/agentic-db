-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_admin/alterations/alt0000002078




ALTER TABLE agentic_db_memberships_public.org_memberships 
    ALTER COLUMN is_admin DROP DEFAULT;



