-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/id/alterations/alt0000004582


ALTER TABLE agentic_db_app_public.ideas 
  ALTER COLUMN id DROP NOT NULL;


