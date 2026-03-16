-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/is_grant/alterations/alt0000001005
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/is_grant/column


ALTER TABLE "agent_db_memberships_public".app_grants 
  ALTER COLUMN is_grant SET NOT NULL;

