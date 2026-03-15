-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/created_at/alterations/alt0000002156
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_level_requirements/columns/created_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_level_requirements 
  ALTER COLUMN created_at SET DEFAULT now();

