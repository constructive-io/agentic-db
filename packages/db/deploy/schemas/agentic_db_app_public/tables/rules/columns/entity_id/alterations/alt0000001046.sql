-- Deploy: schemas/agentic_db_app_public/tables/rules/columns/entity_id/alterations/alt0000001046
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/rules/table
-- requires: schemas/agentic_db_app_public/tables/rules/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".rules 
  ALTER COLUMN entity_id SET NOT NULL;

