-- Revert: schemas/agentic_db_app_public/tables/tasks_chunks/constraints/tasks_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.tasks_chunks 
  DROP CONSTRAINT tasks_chunks_pkey;


