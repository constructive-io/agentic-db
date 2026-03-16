-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/id/alterations/alt0000001000
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/id/column


ALTER TABLE "agent_db_memberships_public".app_grants 
  ALTER COLUMN id SET NOT NULL;

