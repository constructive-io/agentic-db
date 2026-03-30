-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".calendars 
  DROP COLUMN entity_id RESTRICT;


