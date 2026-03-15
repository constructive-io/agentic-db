-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/hash/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/files/columns/language/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".files 
  ADD COLUMN hash text;

