-- Deploy: schemas/agentic_db_app_public/tables/blueprints/columns/id/alterations/alt0000001164
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding/column


ALTER TABLE "agentic_db_app_public".blueprints 
  ALTER COLUMN id SET NOT NULL;

