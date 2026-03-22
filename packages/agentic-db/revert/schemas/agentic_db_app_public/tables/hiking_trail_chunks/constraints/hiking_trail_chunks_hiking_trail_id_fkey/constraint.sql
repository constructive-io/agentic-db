-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/constraints/hiking_trail_chunks_hiking_trail_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".hiking_trail_chunks 
  DROP CONSTRAINT hiking_trail_chunks_hiking_trail_id_fkey;


