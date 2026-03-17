-- Revert: schemas/agentic_db_app_public/tables/contact_events/columns/id/alterations/alt0000001011


ALTER TABLE "agentic_db_app_public".contact_events 
  ALTER COLUMN id DROP NOT NULL;


