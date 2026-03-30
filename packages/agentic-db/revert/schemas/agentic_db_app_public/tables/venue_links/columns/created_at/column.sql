-- Revert: schemas/agentic_db_app_public/tables/venue_links/columns/created_at/column


ALTER TABLE "agentic_db_app_public".venue_links 
  DROP COLUMN created_at RESTRICT;


