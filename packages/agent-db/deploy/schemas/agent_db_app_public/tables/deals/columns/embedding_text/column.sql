-- Deploy: schemas/agent_db_app_public/tables/deals/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/deals/table
-- requires: schemas/agent_db_app_public/tables/deals/columns/tags/column


ALTER TABLE "agent_db_app_public".deals 
  ADD COLUMN embedding_text text;

