-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/milestones/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/projects/columns/search_tsv/column


GRANT SELECT ON "agent-os-1773547105079-c748b4c3-app-public".milestones TO authenticated;

