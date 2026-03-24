-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".contact_links 
  DROP COLUMN updated_at RESTRICT;


