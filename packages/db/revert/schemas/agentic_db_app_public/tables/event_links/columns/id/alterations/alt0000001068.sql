-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/id/alterations/alt0000001068


ALTER TABLE "agentic_db_app_public".event_links 
  ALTER COLUMN id DROP NOT NULL;


