-- Deploy: schemas/agent_db_memberships_public/tables/app_memberships/columns/updated_at/alterations/alt0000000918
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/table
-- requires: schemas/agent_db_memberships_public/tables/app_memberships/columns/updated_at/column


ALTER TABLE "agent_db_memberships_public".app_memberships 
  ALTER COLUMN updated_at SET DEFAULT now();

