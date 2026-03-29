-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000002626




ALTER TABLE agentic_db_memberships_public.app_memberships 
    ALTER COLUMN is_approved DROP DEFAULT;



