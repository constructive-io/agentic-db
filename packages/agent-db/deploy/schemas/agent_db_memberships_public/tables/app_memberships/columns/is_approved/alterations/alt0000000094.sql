-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_approved/alterations/alt0000000094
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_approved/column



ALTER TABLE agent_db_memberships_public.app_memberships 
    ALTER COLUMN is_approved SET DEFAULT false;

