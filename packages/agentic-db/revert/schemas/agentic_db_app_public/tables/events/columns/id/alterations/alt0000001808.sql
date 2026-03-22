-- Revert: schemas/agentic_db_app_public/tables/events/columns/id/alterations/alt0000001808


ALTER TABLE "agentic_db_app_public".events 
  ALTER COLUMN id DROP NOT NULL;


