-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/abstract/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/is_active/alterations/alt0000002692


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ADD COLUMN abstract text;

