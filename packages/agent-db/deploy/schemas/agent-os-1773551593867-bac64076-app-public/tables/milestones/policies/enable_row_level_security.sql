-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/policies/enable_row_level_security
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/projects/columns/search_tsv/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".milestones 
  ENABLE ROW LEVEL SECURITY;

