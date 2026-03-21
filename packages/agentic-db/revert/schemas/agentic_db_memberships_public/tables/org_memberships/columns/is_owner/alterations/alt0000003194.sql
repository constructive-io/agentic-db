-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_owner/alterations/alt0000003194




ALTER TABLE agentic_db_memberships_public.org_memberships 
    ALTER COLUMN is_owner DROP DEFAULT;



