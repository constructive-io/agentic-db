-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/target_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  DROP COLUMN target_type RESTRICT;


