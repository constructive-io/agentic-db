-- Revert: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/create_groups_cascade_members/alterations/alt0000001516




ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
    ALTER COLUMN create_groups_cascade_members DROP DEFAULT;



