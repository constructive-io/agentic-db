-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/columns/contact_id/column


ALTER TABLE "agentic_db_app_public".contact_relationships 
  DROP COLUMN contact_id RESTRICT;


