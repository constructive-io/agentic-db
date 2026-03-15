-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/alt_text/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/images/columns/meta/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".images 
  ADD COLUMN alt_text text;

