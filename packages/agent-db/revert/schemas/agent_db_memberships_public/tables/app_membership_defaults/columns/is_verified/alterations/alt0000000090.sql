-- Revert: schemas/agent_db_memberships_public/tables/app_membership_defaults/columns/is_verified/alterations/alt0000000090




ALTER TABLE agent_db_memberships_public.app_membership_defaults 
    ALTER COLUMN is_verified DROP DEFAULT;



