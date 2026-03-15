-- Deploy: schemas/agent_db_app_public/tables/deals/columns/value/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/stage/alterations/alt0000004103


ALTER TABLE "agent_db_app_public".deals 
  ADD COLUMN value numeric;

