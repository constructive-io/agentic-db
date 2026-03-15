-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/parent_thread_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/status/alterations/alt0000002790


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ADD COLUMN parent_thread_id uuid;

