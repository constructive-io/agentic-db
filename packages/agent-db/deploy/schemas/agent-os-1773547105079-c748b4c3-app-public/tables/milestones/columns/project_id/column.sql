-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/project_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/columns/updated_at/alterations/alt0000002887


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".milestones 
  ADD COLUMN project_id uuid;

