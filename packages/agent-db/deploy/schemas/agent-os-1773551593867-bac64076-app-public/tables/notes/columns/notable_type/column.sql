-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/notable_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/content/alterations/alt0000002524


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ADD COLUMN notable_type text;

