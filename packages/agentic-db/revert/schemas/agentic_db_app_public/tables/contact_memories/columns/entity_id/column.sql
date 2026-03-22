-- Revert: schemas/agentic_db_app_public/tables/contact_memories/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".contact_memories 
  DROP COLUMN entity_id RESTRICT;


