-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/entity_id/alterations/alt0000001079
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agentic_db_app_public".goals 
  ALTER COLUMN entity_id SET NOT NULL;

