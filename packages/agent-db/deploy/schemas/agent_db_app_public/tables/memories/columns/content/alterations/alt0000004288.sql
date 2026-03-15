-- Deploy: schemas/agent_db_app_public/tables/memories/columns/content/alterations/alt0000004288
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/content/column
-- requires: schemas/agent_db_app_public/tables/memories/columns/updated_at/alterations/alt0000004287


ALTER TABLE "agent_db_app_public".memories 
  ALTER COLUMN content SET NOT NULL;

