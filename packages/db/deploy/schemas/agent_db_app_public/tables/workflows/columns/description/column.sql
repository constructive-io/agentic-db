-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/description/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/name/alterations/alt0000002065


ALTER TABLE "agent_db_app_public".workflows 
  ADD COLUMN description text;

