-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/rules/columns/trigger_concept/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".rules 
  DROP COLUMN trigger_concept RESTRICT;


