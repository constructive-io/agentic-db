-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/usage_count/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/tags/columns/category/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".tags 
  ADD COLUMN usage_count int;

