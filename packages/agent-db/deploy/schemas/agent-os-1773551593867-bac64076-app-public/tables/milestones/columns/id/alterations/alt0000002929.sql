-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/id/alterations/alt0000002929
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/columns/id/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ALTER COLUMN id SET NOT NULL;

