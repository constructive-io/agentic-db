-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/name/alterations/alt0000002690
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/name/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/updated_at/alterations/alt0000002689


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ALTER COLUMN name SET NOT NULL;

