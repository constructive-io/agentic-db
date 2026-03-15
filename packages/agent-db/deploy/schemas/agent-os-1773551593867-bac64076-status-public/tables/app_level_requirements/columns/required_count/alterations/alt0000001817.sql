-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/required_count/alterations/alt0000001817
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/required_count/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_level_requirements 
  ALTER COLUMN required_count SET NOT NULL;

