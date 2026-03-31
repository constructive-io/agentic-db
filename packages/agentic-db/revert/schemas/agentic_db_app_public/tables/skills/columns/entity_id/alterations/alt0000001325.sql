-- Revert: schemas/agentic_db_app_public/tables/skills/columns/entity_id/alterations/alt0000001325


ALTER TABLE "agentic_db_app_public".skills 
  ALTER COLUMN entity_id DROP NOT NULL;


