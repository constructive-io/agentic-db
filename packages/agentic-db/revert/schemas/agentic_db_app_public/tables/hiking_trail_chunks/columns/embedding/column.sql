-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  DROP COLUMN embedding RESTRICT;


