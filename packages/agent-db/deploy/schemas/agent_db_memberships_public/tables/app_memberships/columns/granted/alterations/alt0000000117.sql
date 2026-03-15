-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/granted/alterations/alt0000000117
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/granted/column


ALTER TABLE agent_db_memberships_public.app_memberships 
  ALTER COLUMN granted SET NOT NULL;

