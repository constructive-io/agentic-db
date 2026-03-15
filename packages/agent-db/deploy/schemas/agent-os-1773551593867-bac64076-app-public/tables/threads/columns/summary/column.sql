-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/summary/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/threads/columns/title/alterations/alt0000002789


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".threads 
  ADD COLUMN summary text;

