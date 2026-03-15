-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/notable_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/notes/columns/notable_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".notes 
  ADD COLUMN notable_id uuid;

