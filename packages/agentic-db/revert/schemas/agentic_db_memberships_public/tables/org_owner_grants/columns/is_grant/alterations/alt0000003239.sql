-- Revert: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/is_grant/alterations/alt0000003239




ALTER TABLE agentic_db_memberships_public.org_owner_grants 
    ALTER COLUMN is_grant DROP DEFAULT;



