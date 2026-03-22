-- Revert: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000001256




ALTER TABLE agentic_db_memberships_public.app_membership_defaults 
    ALTER COLUMN is_approved DROP DEFAULT;



