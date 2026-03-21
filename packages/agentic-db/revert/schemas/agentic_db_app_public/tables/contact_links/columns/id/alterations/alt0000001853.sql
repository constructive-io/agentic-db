-- Revert: schemas/agentic_db_app_public/tables/contact_links/columns/id/alterations/alt0000001853


ALTER TABLE "agentic_db_app_public".contact_links 
  ALTER COLUMN id DROP NOT NULL;


