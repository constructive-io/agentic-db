-- Deploy: schemas/agentic_db_app_public/tables/lists/columns/entity_id/alterations/alt0000001484
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/lists/table
-- requires: schemas/agentic_db_app_public/tables/habit_logs/columns/tags/column
-- requires: schemas/agentic_db_app_public/tables/lists/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".lists 
  ALTER COLUMN entity_id SET NOT NULL;

