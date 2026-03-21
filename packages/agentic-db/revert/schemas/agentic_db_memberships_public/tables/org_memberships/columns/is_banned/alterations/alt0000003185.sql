-- Revert: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_banned/alterations/alt0000003185




ALTER TABLE agentic_db_memberships_public.org_memberships 
    ALTER COLUMN is_banned DROP DEFAULT;



