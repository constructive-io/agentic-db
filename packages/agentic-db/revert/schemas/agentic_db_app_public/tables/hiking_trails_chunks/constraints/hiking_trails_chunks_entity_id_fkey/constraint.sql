-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/constraints/hiking_trails_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.hiking_trails_chunks 
  DROP CONSTRAINT hiking_trails_chunks_entity_id_fkey;


