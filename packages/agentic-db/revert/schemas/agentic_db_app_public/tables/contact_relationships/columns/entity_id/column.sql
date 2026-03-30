-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".contact_relationships 
  DROP COLUMN entity_id RESTRICT;


