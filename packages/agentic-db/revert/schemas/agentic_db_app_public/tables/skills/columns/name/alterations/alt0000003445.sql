-- Revert: schemas/agentic_db_app_public/tables/skills/columns/name/alterations/alt0000003445


ALTER TABLE agentic_db_app_public.skills 
  ALTER COLUMN name DROP NOT NULL;


