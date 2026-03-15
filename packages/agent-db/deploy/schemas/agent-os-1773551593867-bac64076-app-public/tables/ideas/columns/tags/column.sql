-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/ideas/columns/status/alterations/alt0000003091


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".ideas 
  ADD COLUMN tags citext[];

