-- Revert: schemas/agentic_db_app_public/tables/events/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".events 
  DROP COLUMN updated_at RESTRICT;


