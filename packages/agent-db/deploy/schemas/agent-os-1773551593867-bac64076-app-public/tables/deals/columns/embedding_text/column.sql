-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/deals/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".deals 
  ADD COLUMN embedding_text text;

