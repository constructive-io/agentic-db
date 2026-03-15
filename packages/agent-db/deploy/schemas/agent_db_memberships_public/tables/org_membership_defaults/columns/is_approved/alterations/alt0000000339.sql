-- Deploy: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/is_approved/alterations/alt0000000339
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agent_db_memberships_public/tables/org_membership_defaults/columns/is_approved/column



ALTER TABLE agent_db_memberships_public.org_membership_defaults 
    ALTER COLUMN is_approved SET DEFAULT TRUE;

