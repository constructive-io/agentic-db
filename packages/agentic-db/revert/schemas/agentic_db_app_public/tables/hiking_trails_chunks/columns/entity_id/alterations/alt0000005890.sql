-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/columns/entity_id/alterations/alt0000005890


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


