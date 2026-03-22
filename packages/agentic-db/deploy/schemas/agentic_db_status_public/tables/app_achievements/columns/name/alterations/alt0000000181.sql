-- Deploy: schemas/agentic_db_status_public/tables/app_achievements/columns/name/alterations/alt0000000181
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_status_public/tables/app_achievements/columns/name/column


ALTER TABLE "agentic_db_status_public".app_achievements 
  ALTER COLUMN name SET NOT NULL;

