-- Deploy: schemas/agent_db_app_public/tables/files/columns/language/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/path/alterations/alt0000004570


ALTER TABLE "agent_db_app_public".files 
  ADD COLUMN language text;

