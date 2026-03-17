-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/id/alterations/alt0000001173
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE "agentic_db_app_public".processes 
  ALTER COLUMN id SET NOT NULL;

