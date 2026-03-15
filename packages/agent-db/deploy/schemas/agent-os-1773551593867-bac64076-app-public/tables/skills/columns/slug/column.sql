-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/slug/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/name/alterations/alt0000002690


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ADD COLUMN slug text;

