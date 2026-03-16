-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/name/alterations/alt0000001072
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/skills/columns/updated_at/alterations/alt0000001071


ALTER TABLE "agentic_db_app_public".skills 
  ALTER COLUMN name SET NOT NULL;

