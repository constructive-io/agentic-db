-- Revert: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000012096




ALTER TABLE agentic_db_memberships_public.app_membership_defaults 
    ALTER COLUMN is_verified DROP DEFAULT;



