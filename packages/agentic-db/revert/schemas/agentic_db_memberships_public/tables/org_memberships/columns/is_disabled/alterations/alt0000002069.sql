-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_disabled/alterations/alt0000002069




ALTER TABLE agentic_db_memberships_public.org_memberships 
    ALTER COLUMN is_disabled DROP DEFAULT;



