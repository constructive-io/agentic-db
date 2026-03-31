-- Revert: schemas/agentic_db_app_public/tables/calendars/columns/entity_id/alterations/alt0000001877


ALTER TABLE "agentic_db_app_public".calendars 
  ALTER COLUMN entity_id DROP NOT NULL;


