-- Deploy: schemas/agent_db_app_public/tables/files/columns/language/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/files/table
-- requires: schemas/agent_db_app_public/tables/files/columns/path/alterations/alt0000002170


ALTER TABLE "agent_db_app_public".files 
  ADD COLUMN language text;

