-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_level_requirements/columns/required_count/alterations/alt0000001817


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_level_requirements 
  ALTER COLUMN required_count DROP NOT NULL;


