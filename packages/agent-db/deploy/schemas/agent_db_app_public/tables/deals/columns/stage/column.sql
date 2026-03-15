-- Deploy: schemas/agent_db_app_public/tables/deals/columns/stage/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/name/alterations/alt0000004054


ALTER TABLE "agent_db_app_public".deals 
  ADD COLUMN stage text;

