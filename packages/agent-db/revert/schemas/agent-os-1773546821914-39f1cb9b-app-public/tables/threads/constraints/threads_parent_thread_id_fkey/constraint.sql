-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/constraints/threads_parent_thread_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  DROP CONSTRAINT threads_parent_thread_id_fkey;


