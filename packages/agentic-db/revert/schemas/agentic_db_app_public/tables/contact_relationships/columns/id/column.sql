-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/columns/id/column


ALTER TABLE "agentic_db_app_public".contact_relationships 
  DROP COLUMN id RESTRICT;


