-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/sentiment/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/summary/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".interactions 
  ADD COLUMN sentiment text;

