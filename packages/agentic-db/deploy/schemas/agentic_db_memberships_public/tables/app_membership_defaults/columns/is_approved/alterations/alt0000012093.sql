-- Deploy: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_approved/alterations/alt0000012093
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/table
-- requires: schemas/agentic_db_memberships_public/tables/app_membership_defaults/columns/is_approved/column



ALTER TABLE agentic_db_memberships_public.app_membership_defaults 
    ALTER COLUMN is_approved SET DEFAULT TRUE;

