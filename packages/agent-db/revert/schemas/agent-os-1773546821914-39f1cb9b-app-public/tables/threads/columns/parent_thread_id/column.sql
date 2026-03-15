-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/threads/columns/parent_thread_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".threads 
  DROP COLUMN parent_thread_id RESTRICT;


