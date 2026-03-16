-- Deploy: schemas/agent_db_app_public/tables/templates/columns/type/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/description/column


ALTER TABLE "agent_db_app_public".templates 
  ADD COLUMN type text;

