-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/chunks/columns/repository_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".chunks 
  ADD COLUMN content text;

