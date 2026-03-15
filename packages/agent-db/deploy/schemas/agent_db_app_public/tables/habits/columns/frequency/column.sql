-- Deploy: schemas/agent_db_app_public/tables/habits/columns/frequency/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/habits/table
-- requires: schemas/agent_db_app_public/tables/habits/columns/name/alterations/alt0000004719


ALTER TABLE "agent_db_app_public".habits 
  ADD COLUMN frequency text;

