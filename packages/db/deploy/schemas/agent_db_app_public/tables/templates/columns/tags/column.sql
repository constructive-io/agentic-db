-- Deploy: schemas/agent_db_app_public/tables/templates/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/is_active/alterations/alt0000002361


ALTER TABLE "agent_db_app_public".templates 
  ADD COLUMN tags citext[];

