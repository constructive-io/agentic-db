-- Deploy: schemas/agentic_db_app_public/tables/files/columns/entity_id/alterations/alt0000001313
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/files/table
-- requires: schemas/agentic_db_app_public/tables/files/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/repositories/columns/embedding/column


ALTER TABLE "agentic_db_app_public".files 
  ALTER COLUMN entity_id SET NOT NULL;

