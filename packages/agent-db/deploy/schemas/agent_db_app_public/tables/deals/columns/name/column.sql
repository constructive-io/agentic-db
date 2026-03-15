-- Deploy: schemas/agent_db_app_public/tables/deals/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/updated_at/alterations/alt0000004053


ALTER TABLE "agent_db_app_public".deals 
  ADD COLUMN name text;

