-- Revert: schemas/agentic_db_app_public/tables/tags/columns/id/alterations/alt0000002387


ALTER TABLE agentic_db_app_public.tags 
  ALTER COLUMN id DROP NOT NULL;


