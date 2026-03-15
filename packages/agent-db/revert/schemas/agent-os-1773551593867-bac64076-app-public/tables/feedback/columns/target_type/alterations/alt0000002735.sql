-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/target_type/alterations/alt0000002735


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ALTER COLUMN target_type DROP NOT NULL;


