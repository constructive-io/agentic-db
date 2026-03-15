-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/granted/alterations/alt0000003336
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/granted/column



ALTER TABLE "agent_db_memberships_public".app_memberships 
    ALTER COLUMN granted SET DEFAULT lpad('', 24, '0')::bit(24);

