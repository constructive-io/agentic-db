-- Revert: schemas/agent_db_app_public/tables/threads/constraints/threads_pkey/constraint


ALTER TABLE agent_db_app_public.threads 
  DROP CONSTRAINT threads_pkey;


