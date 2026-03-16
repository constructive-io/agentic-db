-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/ingredients/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/difficulty/column


ALTER TABLE "agent_db_app_public".recipes 
  ADD COLUMN ingredients jsonb;

