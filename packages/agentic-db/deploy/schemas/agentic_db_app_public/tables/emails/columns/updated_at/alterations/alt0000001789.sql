-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/updated_at/alterations/alt0000001789
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/table
-- requires: schemas/agentic_db_app_public/tables/emails/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/habits/indexes/habits_is_active_idx


ALTER TABLE "agentic_db_app_public".emails 
  ALTER COLUMN updated_at SET NOT NULL;

