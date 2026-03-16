-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/url/column


ALTER TABLE "agentic_db_app_public".event_links 
  DROP COLUMN url RESTRICT;


