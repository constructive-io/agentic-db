-- Deploy: schemas/agent_db_app_public/tables/memories/columns/active_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/memories/columns/overview/column


ALTER TABLE "agent_db_app_public".memories 
  ADD COLUMN active_count int;

