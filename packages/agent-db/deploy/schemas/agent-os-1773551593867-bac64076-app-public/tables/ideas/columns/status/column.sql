-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/status/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/source/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  ADD COLUMN status text;

