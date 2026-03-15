-- Revert: schemas/agent_db_app_public/tables/threads/constraints/threads_parent_thread_id_fkey/constraint


ALTER TABLE "agent_db_app_public".threads 
  DROP CONSTRAINT threads_parent_thread_id_fkey;


