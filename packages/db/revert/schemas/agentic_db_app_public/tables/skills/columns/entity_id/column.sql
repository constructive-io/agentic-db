-- Revert: schemas/agentic_db_app_public/tables/skills/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".skills 
  DROP COLUMN entity_id RESTRICT;


