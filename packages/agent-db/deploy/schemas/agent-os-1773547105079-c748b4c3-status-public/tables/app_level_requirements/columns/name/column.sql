-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_level_requirements 
  ADD COLUMN name citext;

