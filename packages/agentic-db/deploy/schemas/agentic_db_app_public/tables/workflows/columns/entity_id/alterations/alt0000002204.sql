-- Deploy: schemas/agentic_db_app_public/tables/workflows/columns/entity_id/alterations/alt0000002204
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/workflows/table
-- requires: schemas/agentic_db_app_public/tables/tools/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/workflows/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".workflows 
  ALTER COLUMN entity_id SET NOT NULL;

