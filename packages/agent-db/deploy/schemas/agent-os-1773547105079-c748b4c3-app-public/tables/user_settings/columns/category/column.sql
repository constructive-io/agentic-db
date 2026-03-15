-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/category/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/user_settings/columns/value/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".user_settings 
  ADD COLUMN category text;

