-- Deploy: schemas/agentic_db_app_public/tables/recipes/columns/id/alterations/alt0000002647
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/recipes/table
-- requires: schemas/agentic_db_app_public/tables/recipes/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/lists/columns/embedding/column


ALTER TABLE "agentic_db_app_public".recipes 
  ALTER COLUMN id SET NOT NULL;

