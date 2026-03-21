-- Deploy: schemas/agentic_db_app_public/tables/goals/columns/title/alterations/alt0000002014
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goals/table
-- requires: schemas/agentic_db_app_public/tables/goals/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/goals/columns/updated_at/alterations/alt0000002013


ALTER TABLE "agentic_db_app_public".goals 
  ALTER COLUMN title SET NOT NULL;

