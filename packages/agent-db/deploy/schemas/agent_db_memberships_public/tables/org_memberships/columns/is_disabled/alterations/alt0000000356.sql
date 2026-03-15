-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_disabled/alterations/alt0000000356
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_disabled/column



ALTER TABLE agent_db_memberships_public.org_memberships 
    ALTER COLUMN is_disabled SET DEFAULT false;

