-- Revert: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/is_approved/alterations/alt0000000339




ALTER TABLE agent_db_memberships_public.org_membership_defaults 
    ALTER COLUMN is_approved DROP DEFAULT;



