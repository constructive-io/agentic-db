-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/target_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/feedback/columns/target_type/alterations/alt0000002735


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".feedback 
  ADD COLUMN target_id uuid;

