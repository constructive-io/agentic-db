-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/entity_id/alterations/alt0000001732


ALTER TABLE "agentic_db_app_public".hiking_trail_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


