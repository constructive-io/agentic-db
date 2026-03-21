-- Revert: schemas/agentic_db_app_public/tables/ideas/columns/created_at/alterations/alt0000004585


ALTER TABLE agentic_db_app_public.ideas 
  ALTER COLUMN created_at DROP NOT NULL;


