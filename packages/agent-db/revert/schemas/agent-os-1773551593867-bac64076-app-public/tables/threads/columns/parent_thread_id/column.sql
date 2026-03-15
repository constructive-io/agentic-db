-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/parent_thread_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  DROP COLUMN parent_thread_id RESTRICT;


