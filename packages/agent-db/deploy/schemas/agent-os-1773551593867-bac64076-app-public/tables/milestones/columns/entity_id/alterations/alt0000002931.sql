-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/entity_id/alterations/alt0000002931
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/search_tsv/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ALTER COLUMN entity_id SET NOT NULL;

