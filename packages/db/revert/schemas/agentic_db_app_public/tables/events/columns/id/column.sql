-- Revert: schemas/agentic_db_app_public/tables/events/columns/id/column


ALTER TABLE "agentic_db_app_public".events 
  DROP COLUMN id RESTRICT;


