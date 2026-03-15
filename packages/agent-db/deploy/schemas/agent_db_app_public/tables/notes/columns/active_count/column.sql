-- Deploy: schemas/agent_db_app_public/tables/notes/columns/active_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/overview/column


ALTER TABLE "agent_db_app_public".notes 
  ADD COLUMN active_count int;

