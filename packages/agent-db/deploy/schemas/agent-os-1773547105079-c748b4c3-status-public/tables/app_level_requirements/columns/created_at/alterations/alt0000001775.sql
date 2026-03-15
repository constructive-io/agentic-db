-- Deploy: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/created_at/alterations/alt0000001775
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_level_requirements/columns/created_at/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_level_requirements 
  ALTER COLUMN created_at SET DEFAULT now();

