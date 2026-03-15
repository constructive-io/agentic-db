-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_owner/alterations/alt0000003279
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/is_owner/column



ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN is_owner SET DEFAULT false;

