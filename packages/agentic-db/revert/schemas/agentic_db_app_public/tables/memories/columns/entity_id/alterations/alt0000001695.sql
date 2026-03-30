-- Revert: schemas/agentic_db_app_public/tables/memories/columns/entity_id/alterations/alt0000001695


ALTER TABLE "agentic_db_app_public".memories 
  ALTER COLUMN entity_id DROP NOT NULL;


