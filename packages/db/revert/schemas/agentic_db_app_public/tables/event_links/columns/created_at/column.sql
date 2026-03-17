-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/created_at/column


ALTER TABLE "agentic_db_app_public".event_links 
  DROP COLUMN created_at RESTRICT;


