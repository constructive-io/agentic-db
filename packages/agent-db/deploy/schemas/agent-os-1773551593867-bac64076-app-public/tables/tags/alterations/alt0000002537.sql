-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/alterations/alt0000002537
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/tags/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/interactions/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".tags 
  DISABLE ROW LEVEL SECURITY;

