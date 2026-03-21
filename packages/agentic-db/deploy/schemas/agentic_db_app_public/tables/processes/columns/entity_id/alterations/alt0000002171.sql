-- Deploy: schemas/agentic_db_app_public/tables/processes/columns/entity_id/alterations/alt0000002171
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/processes/table
-- requires: schemas/agentic_db_app_public/tables/processes/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE "agentic_db_app_public".processes 
  ALTER COLUMN entity_id SET NOT NULL;

