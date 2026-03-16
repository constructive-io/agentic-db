-- Deploy: schemas/agent_db_memberships_public/tables/app_grants/columns/created_at/alterations/alt0000001011
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_grants/table
-- requires: schemas/agent_db_memberships_public/tables/app_grants/columns/created_at/column


ALTER TABLE "agent_db_memberships_public".app_grants 
  ALTER COLUMN created_at SET DEFAULT now();

