-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/is_active/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/category/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skills 
  ADD COLUMN is_active bool;

