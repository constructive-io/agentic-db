-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/name/alterations/alt0000004720
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/name/column
-- requires: schemas/agent_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000004719


ALTER TABLE "agent_db_app_public".recipes 
  ALTER COLUMN name SET NOT NULL;

