-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/overview/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/abstract/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ADD COLUMN overview text;

