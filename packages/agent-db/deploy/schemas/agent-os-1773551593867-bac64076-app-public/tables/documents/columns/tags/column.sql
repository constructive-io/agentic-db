-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/documents/columns/last_accessed_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".documents 
  ADD COLUMN tags citext[];

