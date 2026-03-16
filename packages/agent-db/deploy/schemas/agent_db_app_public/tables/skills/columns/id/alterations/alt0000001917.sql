-- Deploy: schemas/agent_db_app_public/tables/skills/columns/id/alterations/alt0000001917
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/id/column
-- requires: schemas/agent_db_app_public/tables/memories/columns/embedding/column


ALTER TABLE "agent_db_app_public".skills 
  ALTER COLUMN id SET NOT NULL;

