-- Revert: schemas/agentic_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000002914




ALTER TABLE agentic_db_memberships_public.org_members 
    ALTER COLUMN is_admin DROP DEFAULT;



