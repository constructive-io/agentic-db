-- Deploy: schemas/agentic_db_app_public/tables/tasks/columns/title/alterations/alt0000001970
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/tasks/table
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/title/column
-- requires: schemas/agentic_db_app_public/tables/tasks/columns/updated_at/alterations/alt0000001969


ALTER TABLE "agentic_db_app_public".tasks 
  ALTER COLUMN title SET NOT NULL;

