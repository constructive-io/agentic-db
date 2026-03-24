-- Deploy: schemas/agentic_db_app_public/tables/calendars/columns/name/alterations/alt0000001822
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/calendars/table
-- requires: schemas/agentic_db_app_public/tables/calendars/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".calendars 
  ALTER COLUMN name SET NOT NULL;

