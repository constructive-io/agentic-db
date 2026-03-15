-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/templates/columns/is_active/alterations/alt0000003122


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".templates 
  ADD COLUMN tags citext[];

