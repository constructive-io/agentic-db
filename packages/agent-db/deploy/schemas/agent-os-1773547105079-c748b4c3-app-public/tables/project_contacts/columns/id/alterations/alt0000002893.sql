-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/columns/id/alterations/alt0000002893
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/project_contacts/columns/id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/constraints/milestones_project_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".project_contacts 
  ALTER COLUMN id SET NOT NULL;

