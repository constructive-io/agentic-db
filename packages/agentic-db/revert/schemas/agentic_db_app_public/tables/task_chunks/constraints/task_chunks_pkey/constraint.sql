-- Revert: schemas/agentic_db_app_public/tables/task_chunks/constraints/task_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.task_chunks 
  DROP CONSTRAINT task_chunks_pkey;


