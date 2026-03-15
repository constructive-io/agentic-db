-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/embedding_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/tags/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  ADD COLUMN embedding_text text;

