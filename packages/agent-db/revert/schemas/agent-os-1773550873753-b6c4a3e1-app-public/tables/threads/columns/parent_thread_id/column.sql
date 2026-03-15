-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/threads/columns/parent_thread_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".threads 
  DROP COLUMN parent_thread_id RESTRICT;


