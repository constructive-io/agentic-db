-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/entity_id/alterations/alt0000002883
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/search_tsv/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/entity_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
  ALTER COLUMN entity_id SET NOT NULL;

