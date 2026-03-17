-- Revert: schemas/agentic_db_app_public/tables/chunks/columns/entity_id/alterations/alt0000001322


ALTER TABLE "agentic_db_app_public".chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


