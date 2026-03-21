-- Revert: schemas/agentic_db_app_public/tables/events/columns/name/alterations/alt0000001739


ALTER TABLE "agentic_db_app_public".events 
  ALTER COLUMN name DROP NOT NULL;


