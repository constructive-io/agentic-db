-- Deploy: schemas/agent_db_app_public/tables/messages/columns/subject/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/messages/table
-- requires: schemas/agent_db_app_public/tables/messages/columns/to/column


ALTER TABLE "agent_db_app_public".messages 
  ADD COLUMN subject text;

