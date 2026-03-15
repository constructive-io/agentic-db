-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/priority/alterations/alt0000001820
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/priority/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_level_requirements 
  ALTER COLUMN priority SET NOT NULL;

