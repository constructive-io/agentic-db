-- Deploy: schemas/agentic_db_app_public/tables/blueprints/columns/entity_id/alterations/alt0000001166
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/blueprints/table
-- requires: schemas/agentic_db_app_public/tables/threads/columns/embedding/column
-- requires: schemas/agentic_db_app_public/tables/blueprints/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".blueprints 
  ALTER COLUMN entity_id SET NOT NULL;

