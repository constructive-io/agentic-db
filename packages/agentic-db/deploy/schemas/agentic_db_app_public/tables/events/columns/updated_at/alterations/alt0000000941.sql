-- Deploy: schemas/agentic_db_app_public/tables/events/columns/updated_at/alterations/alt0000000941
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/events/table
-- requires: schemas/agentic_db_app_public/tables/events/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".events 
  ALTER COLUMN updated_at SET NOT NULL;

