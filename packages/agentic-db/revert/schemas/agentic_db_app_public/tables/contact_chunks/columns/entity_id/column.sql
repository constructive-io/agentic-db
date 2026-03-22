-- Revert: schemas/agentic_db_app_public/tables/contact_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".contact_chunks 
  DROP COLUMN entity_id RESTRICT;


