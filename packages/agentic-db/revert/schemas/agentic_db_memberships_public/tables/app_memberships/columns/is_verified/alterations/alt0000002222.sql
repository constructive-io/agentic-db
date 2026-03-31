-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_verified/alterations/alt0000002222




ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN is_verified DROP DEFAULT;



