-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_banned/alterations/alt0000001266




ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN is_banned DROP DEFAULT;



