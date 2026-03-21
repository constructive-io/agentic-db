-- Revert: schemas/agentic_db_app_public/tables/threads/constraints/threads_pkey/constraint


ALTER TABLE agentic_db_app_public.threads 
  DROP CONSTRAINT threads_pkey;


