-- Deploy: schemas/agent_db_app_public/tables/memories/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/updated_at/alterations/alt0000004239


ALTER TABLE "agent_db_app_public".memories 
  ADD COLUMN content text;

