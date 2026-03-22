-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/columns/id/alterations/alt0000002859


ALTER TABLE agentic_db_app_public.hiking_trail_chunks 
  ALTER COLUMN id DROP NOT NULL;


