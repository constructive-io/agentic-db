-- Revert: schemas/agentic_db_app_public/tables/skills/columns/id/alterations/alt0000000304


ALTER TABLE agentic_db_app_public.skills 
  ALTER COLUMN id DROP NOT NULL;


